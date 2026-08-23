import 'dart:async';
import 'dart:collection';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:meta/meta.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/callback_server.dart';
import 'package:pulumi/src/config.dart';
import 'package:pulumi/src/deployment/call.dart';
import 'package:pulumi/src/deployment/invoke.dart';
import 'package:pulumi/src/deployment/models.dart' as models;
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/invoke.dart' as pulumi_invoke;
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/alias.dart' as aliaspkg;
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/resource/resource_hooks.dart';
import 'package:pulumi/src/resource/resource_transformation.dart';
import 'package:pulumi/src/serializer.dart';
import 'package:pulumi/src/source_position.dart';
import 'package:pulumi/src/struct_converter.dart';

import '../engine.dart';
import '../engine_logger.dart';
import '../output.dart';
import '../pulumirpc/pulumi/resource.pbgrpc.dart' hide ResourceOptions;
import '../resource/resource.dart';
import '../resource/resource_options.dart';
import '../resource/custom_resource.dart';
import '../resource/component_resource.dart';
import 'stack.dart';

/// {@template pulumi.deployment.summary}
/// Active Pulumi deployment runtime contract.
///
/// The deployment orchestrates resource registration, invokes/calls, transform
/// registration, and final stack output publication for a single program run.
///
/// Most programs only use [run] or [runOrThrow]. Lower-level members on this
/// type are primarily for the runtime itself, advanced framework code, and
/// tests that need direct control over monitors or engines.
/// {@endtemplate}
///
abstract class Deployment {
  static Deployment get instance => DeploymentImpl.instance;

  /// Runs a Pulumi program callback and returns the process exit code.
  ///
  /// Prefer this when the caller wants explicit control over non-zero exit
  /// handling instead of throwing.
  ///
  /// ## Example
  /// ```dart
  /// final code = await Deployment.run(() => MyStack());
  /// ```
  static Future<int> run(
    Function() func, {
    String? organizationName,
    String? projectName,
    String? stackName,
    bool? isDryRun,
    monitorpkg.Monitor? monitor,
    Engine? engine,
  }) {
    return DeploymentImpl.run(
      func,
      organizationName: organizationName,
      projectName: projectName,
      stackName: stackName,
      isDryRun: isDryRun,
      monitor: monitor,
      engine: engine,
    );
  }

  /// Runs a Pulumi program callback and throws on non-zero exit.
  ///
  /// This is the recommended entrypoint for most end-user Pulumi programs.
  static Future<void> runOrThrow(
    Function() func, {
    String? organizationName,
    String? projectName,
    String? stackName,
    bool? isDryRun,
    monitorpkg.Monitor? monitor,
    Engine? engine,
  }) async {
    final exitCode = await run(
      func,
      organizationName: organizationName,
      projectName: projectName,
      stackName: stackName,
      isDryRun: isDryRun,
      monitor: monitor,
      engine: engine,
    );
    if (exitCode != 0) {
      throw StateError('Pulumi program failed with exit code $exitCode');
    }
  }

  /// Organization associated with the current deployment.
  String get organizationName;

  /// Project associated with the current deployment.
  String get projectName;

  /// Stack associated with the current deployment.
  String get stackName;

  /// Whether the deployment is running in dry-run (preview) mode.
  bool get isDryRun;

  /// Deployment logger.
  EngineLogger get logger;

  /// Registers a requirement on the Pulumi CLI version used for this run.
  void requirePulumiVersion(String versionRange) {
    throw UnimplementedError('requirePulumiVersion is not implemented');
  }

  /// Active root stack resource.
  Stack get stack;

  /// Sets the active root stack resource.
  void setStack(Stack stack);

  /// Gets a raw config value by key.
  String? getConfig(String key);

  /// Returns whether a config key is marked secret.
  bool isConfigSecret(String key);

  /// Reads an existing resource or registers a new one.
  Future<void> readOrRegisterResource({
    required Resource resource,
    required bool remote,
    required Resource Function(String) newDependency,
    required Inputs args,
    required ResourceOptions opts,
    models.RegisterPackageRequest? registerPackageRequest,
  });

  /// Registers an async resource operation for run completion tracking.
  void registerResourceOperation(Future<void> operation);

  /// Registers resource outputs with the monitor.
  Future<void> registerResourceOutputs(
    Resource resource,
    Output<Map<String, dynamic>> outputs,
  );

  /// Waits for all tracked resource operations and publishes outputs.
  Future<void> registerOutputs();

  /// Collapses an alias spec to a URN input for monitor RPCs.
  Input<String> collapseAliasToUrn(
    dynamic alias,
    String name,
    String type,
    Resource? parent,
  );

  /// Registers a global resource transform for the current deployment.
  Future<void> registerResourceTransform(ResourceTransform transform);

  /// Registers a global invoke transform for the current deployment.
  Future<void> registerInvokeTransform(pulumi_invoke.InvokeTransform transform);

  /// Invokes a provider function and returns deserialized result object.
  Future<T> invoke<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  });

  /// Invokes a provider function while retaining Pulumi result metadata.
  Future<OutputData<T>> invokeOutputData<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  });

  /// Invokes a provider function and unwraps single-property result payloads.
  Future<T> invokeSingle<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  });
}

/// Default implementation of [Deployment] used by Pulumi programs.
class DeploymentImpl extends Deployment
    with ConfigMixin, InvokeMixin, CallMixin {
  static Map<String, String> _platformEnvironment() => Platform.environment;

  static Deployment? _instance;
  static Map<String, String> Function() _environmentProvider =
      _platformEnvironment;
  late final EngineLogger _logger;
  final String _organizationName;
  final String _projectName;
  final bool _isDryRun;
  final List<Exception> _swallowedExceptions = [];
  final List<Future<void>> _resourceOperations = [];
  final Map<String, Future<String?>> _packageReferences = {};
  ICallbackServer? _callbacks;
  bool? _supportsTransforms;
  bool? _supportsInvokeTransforms;
  final String _stackName;

  Stack? _stack;

  @override
  final monitorpkg.Monitor monitor;
  final Engine engine;
  static const String rootPulumiStackTypeName = 'pulumi:pulumi:Stack';
  static const String _errorOnDependencyCyclesVar =
      'PULUMI_ERROR_ON_DEPENDENCY_CYCLES';

  DeploymentImpl._({
    required String organizationName,
    required String projectName,
    required String stackName,
    required bool isDryRun,
    required this.monitor,
    required this.engine,
  }) : _organizationName = organizationName,
       _projectName = projectName,
       _stackName = stackName,
       _isDryRun = isDryRun {
    _logger = EngineLogger(this, engine);
    initializeConfig();
  }

  static Deployment get instance {
    if (_instance == null) {
      throw StateError('Deployment.instance accessed before Run was called.');
    }
    return _instance!;
  }

  /// Overrides the active deployment instance for tests.
  @visibleForTesting
  static void setInstance(Deployment deployment) {
    _instance = deployment;
  }

  /// Clears the active deployment instance for tests.
  @visibleForTesting
  static void clearInstance() {
    _instance = null;
  }

  /// Clears the active deployment instance used by runtime mocks.
  static void clearMockInstance() {
    _instance = null;
  }

  /// Creates a deployment instance backed by explicit monitor/engine mocks.
  static DeploymentImpl createForMocks({
    required String organizationName,
    required String projectName,
    required String stackName,
    required bool isDryRun,
    required monitorpkg.Monitor monitor,
    required Engine engine,
  }) {
    return DeploymentImpl._(
      organizationName: organizationName,
      projectName: projectName,
      stackName: stackName,
      isDryRun: isDryRun,
      monitor: monitor,
      engine: engine,
    );
  }

  @visibleForTesting
  static DeploymentImpl createForTesting({
    required String organizationName,
    required String projectName,
    required String stackName,
    required bool isDryRun,
    required monitorpkg.Monitor monitor,
    required Engine engine,
  }) {
    return createForMocks(
      organizationName: organizationName,
      projectName: projectName,
      stackName: stackName,
      isDryRun: isDryRun,
      monitor: monitor,
      engine: engine,
    );
  }

  static void setTestInstance(Deployment testInstance) {
    _instance = testInstance;
  }

  @visibleForTesting
  static void setEnvironmentProviderForTesting(
    Map<String, String> Function() provider,
  ) {
    _environmentProvider = provider;
  }

  @visibleForTesting
  static void resetEnvironmentProviderForTesting() {
    _environmentProvider = _platformEnvironment;
  }

  @visibleForTesting
  static Map<String, String> currentEnvironmentForTesting() {
    return _environmentProvider();
  }

  @override
  String get organizationName => _organizationName;

  @override
  String get projectName => _projectName;

  @override
  String get stackName => _stackName;

  @override
  bool get isDryRun => _isDryRun;

  @override
  EngineLogger get logger => _logger;

  @override
  void requirePulumiVersion(String versionRange) {
    registerResourceOperation(engine.requirePulumiVersion(versionRange));
  }

  @override
  Stack get stack => _stack ?? (throw StateError('Stack not set'));

  @override
  void setStack(Stack stack) {
    if (_stack != null) {
      throw StateError('Stack already set');
    }
    _stack = stack;
  }

  List<Exception> get swallowedExceptions =>
      List.unmodifiable(_swallowedExceptions);

  static Future<int> run(
    Function() func, {
    String? organizationName,
    String? projectName,
    String? stackName,
    bool? isDryRun,
    monitorpkg.Monitor? monitor,
    Engine? engine,
  }) async {
    final environment = _environmentProvider();
    final monitorAddr = environment['PULUMI_MONITOR'];
    final engineAddr = environment['PULUMI_ENGINE'];
    projectName ??= environment['PULUMI_PROJECT'];
    organizationName ??= environment['PULUMI_ORGANIZATION'];
    stackName ??= environment['PULUMI_STACK'];
    final dryRun = environment['PULUMI_DRY_RUN'];

    if (monitorAddr == null ||
        engineAddr == null ||
        projectName == null ||
        stackName == null ||
        dryRun == null) {
      throw StateError(
        'Missing required environment variables for Pulumi deployment',
      );
    }

    final monitorEndpoint = _GrpcEndpoint.parse(monitorAddr);
    final engineEndpoint = _GrpcEndpoint.parse(engineAddr);

    final monitorChannel = ClientChannel(
      monitorEndpoint.host,
      port: monitorEndpoint.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final engineChannel = ClientChannel(
      engineEndpoint.host,
      port: engineEndpoint.port,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    monitor ??= monitorpkg.Monitor(monitorChannel);
    engine ??= Engine(engineChannel);

    _instance = DeploymentImpl._(
      organizationName: organizationName ?? 'organization',
      projectName: projectName,
      stackName: stackName,
      isDryRun: isDryRun ?? (dryRun.toLowerCase() == 'true'),
      monitor: monitor,
      engine: engine,
    );

    try {
      func();
      await _instance!.registerOutputs();
      await _instance!.logger.waitForPendingLogs();
      return _instance!.logger.loggedErrors ? 1 : 0;
    } catch (e, stackTrace) {
      try {
        await _instance!.registerOutputs();
      } catch (_) {
        // Best effort: registration may fail if a resource operation fails.
      }

      await _instance!.logger.error(
        'An error occurred during deployment: $e\n$stackTrace',
      );
      await _instance!.logger.waitForPendingLogs();
      return 1;
    } finally {
      if (_instance is DeploymentImpl) {
        (_instance as DeploymentImpl)._callbacks?.shutdown();
      }
      _instance = null;
      await monitorChannel.shutdown();
      await engineChannel.shutdown();
    }
  }

  @override
  Future<void> readOrRegisterResource({
    required Resource resource,
    required bool remote,
    required Resource Function(String) newDependency,
    required Inputs args,
    required ResourceOptions opts,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    try {
      if (resource.getResourceType() != Stack.rootPulumiStackTypeName &&
          _stack != null) {
        await _stack!.urn.getData();
      }
      if (resource.isCustom && (opts.id != null || opts.urn != null)) {
        await _readResource(
          resource: resource as CustomResource,
          args: args,
          opts: opts,
          registerPackageRequest: registerPackageRequest,
        );
        return;
      }

      final serializedProps = <String, dynamic>{};
      final propertyDependencies =
          <String, RegisterResourceRequest_PropertyDependencies>{};
      final dependencyUrns = <String>{};

      if (opts.dependsOn != null && opts.dependsOn!.isNotEmpty) {
        dependencyUrns.addAll(
          await _expandDependencies(opts.dependsOn!, fromResource: resource),
        );
      }

      for (final entry in args.entries) {
        final serializer = Serializer(collapseUnknownCollections: !remote);
        final serialized = await serializer.serializeAsync(
          'resource:${resource.getResourceName()}.${entry.key}',
          entry.value,
          true,
        );
        if (serialized == null) {
          continue;
        }

        serializedProps[entry.key] = serialized;

        final urns = await _expandDependencies(
          serializer.dependentResources,
          fromResource: resource,
        );
        if (urns.isNotEmpty) {
          final sortedUrns = urns.toList()..sort();
          propertyDependencies[entry.key] =
              RegisterResourceRequest_PropertyDependencies()
                ..urns.addAll(sortedUrns);
          dependencyUrns.addAll(urns);
        }
      }

      final serializedStruct = await StructConverter.toStruct(
        serializedProps,
        // Resource registration advertises supportsPartialValues, so preserve
        // unknown sentinels at collection leaves instead of collapsing the
        // collection a second time after Serializer has shaped each property.
        collapseUnknownCollections: false,
      );
      final request = RegisterResourceRequest()
        ..type = resource.getResourceType()
        ..name = resource.getResourceName()
        ..custom = resource.isCustom
        ..remote = remote
        ..object = serializedStruct
        ..protect = resource.isProtected
        ..acceptSecrets = true
        ..acceptResources = true
        ..supportsPartialValues = true;
      applyRequestSourceMetadata(request, StackTrace.current);

      request.propertyDependencies.addAll(propertyDependencies);

      final preparedHooks = await _prepareHooks(opts.hooks);
      if (preparedHooks != null) {
        request.hooks = preparedHooks;
      }

      if (opts.parent != null) {
        request.parent = await opts.parent!.urn.getValue();
      }

      if (dependencyUrns.isNotEmpty) {
        request.dependencies.addAll(dependencyUrns.toList()..sort());
      }

      final typeComponents = resource.getResourceType().split(':');
      final resourcePackage = typeComponents.length == 3
          ? typeComponents[0]
          : null;

      if (opts.provider != null) {
        final providerRef =
            await ProviderResource.register(opts.provider) ?? '';
        if (resource.isCustom) {
          request.provider = providerRef;
        } else {
          request.providers[opts.provider!.package] = providerRef;
          if (remote && opts.provider!.package == resourcePackage) {
            request.provider = providerRef;
          }
        }
      }

      if (opts.providers.isNotEmpty) {
        for (final provider in opts.providers) {
          request.providers[provider.package] =
              await ProviderResource.register(provider) ?? '';
        }
      }

      if (remote && request.provider.isEmpty && resourcePackage != null) {
        final packageProvider = request.providers[resourcePackage];
        if (packageProvider != null && packageProvider.isNotEmpty) {
          request.provider = packageProvider;
        }
      }

      if (opts.aliases != null && opts.aliases!.isNotEmpty) {
        final aliases = await Future.wait(
          opts.aliases!.map((a) => a.serializeAsync()),
        );
        request.aliases.addAll(aliases);
        request.aliasSpecs = true;
      }

      if (opts.version != null) {
        request.version = opts.version!;
      }
      if (opts.importId != null) {
        final importData = await opts.importId!.toOutput().getData();
        if (importData.isKnown && importData.value != null) {
          request.importId = importData.value!;
        }
      }
      final validatedIgnoreChanges = _validatePropertyPaths(
        opts.ignoreChanges,
        optionName: 'ignoreChanges',
      );
      if (validatedIgnoreChanges.isNotEmpty) {
        request.ignoreChanges.addAll(validatedIgnoreChanges);
      }
      final validatedReplaceOnChanges = _validatePropertyPaths(
        opts.replaceOnChanges,
        optionName: 'replaceOnChanges',
      );
      if (validatedReplaceOnChanges.isNotEmpty) {
        request.replaceOnChanges.addAll(validatedReplaceOnChanges);
      }
      final validatedHideDiffs = _validatePropertyPaths(
        opts.hideDiffs,
        optionName: 'hideDiffs',
      );
      if (validatedHideDiffs.isNotEmpty) {
        request.hideDiffs.addAll(validatedHideDiffs);
      }
      if (opts.pluginDownloadURL != null) {
        request.pluginDownloadURL = opts.pluginDownloadURL!;
      }
      if (opts.deleteBeforeReplace != null) {
        request.deleteBeforeReplace = opts.deleteBeforeReplace!;
        request.deleteBeforeReplaceDefined = true;
      }
      if (opts.customTimeouts != null) {
        final customTimeouts = RegisterResourceRequest_CustomTimeouts();
        if (opts.customTimeouts!.create != null) {
          customTimeouts.create_1 = opts.customTimeouts!.create!;
        }
        if (opts.customTimeouts!.update != null) {
          customTimeouts.update = opts.customTimeouts!.update!;
        }
        if (opts.customTimeouts!.delete != null) {
          customTimeouts.delete = opts.customTimeouts!.delete!;
        }
        if (opts.customTimeouts!.read != null) {
          customTimeouts.read = opts.customTimeouts!.read!;
        }
        request.customTimeouts = customTimeouts;
      }
      if (opts.retainOnDelete != null) {
        request.retainOnDelete = opts.retainOnDelete!;
      }
      if (opts.deletedWith != null) {
        request.deletedWith = await opts.deletedWith!.urn.getValue();
      }
      if (opts.additionalSecretOutputs != null &&
          opts.additionalSecretOutputs!.isNotEmpty) {
        request.additionalSecretOutputs.addAll(opts.additionalSecretOutputs!);
      }
      if (opts.envVarMappings != null && opts.envVarMappings!.isNotEmpty) {
        request.envVarMappings.addAll(opts.envVarMappings!);
      }
      if (opts.replaceWith != null && opts.replaceWith!.isNotEmpty) {
        for (final replacement in opts.replaceWith!) {
          request.replaceWith.add(await replacement.urn.getValue());
        }
      }
      final replacementTrigger = opts.effectiveReplacementTrigger;
      if (replacementTrigger != null) {
        final serializer = Serializer(collapseUnknownCollections: !remote);
        final serialized = await serializer.serializeAsync(
          'resource:${resource.getResourceName()}.replacementTrigger',
          replacementTrigger,
          true,
        );
        if (serialized != null) {
          request.replacementTrigger = await StructConverter.toValue(
            serialized,
          );
        }
      }
      if (registerPackageRequest != null) {
        final packageRef = await resolvePackageRef(registerPackageRequest);
        if (packageRef != null) {
          request.packageRef = packageRef;
        }
      }
      if (resource.resourceTransforms.isNotEmpty) {
        if (!await _monitorSupportsTransforms()) {
          throw Exception(
            'The Pulumi CLI does not support transforms. Please update the Pulumi CLI.',
          );
        }
        _callbacks ??= CallbackServer(monitor.client);
        for (final transform in resource.resourceTransforms) {
          request.transforms.add(
            await _callbacks!.registerTransform(transform),
          );
        }
      }

      RegisterResourceResponse response;
      try {
        response = await monitor.registerResource(resource, request);
      } catch (error) {
        resource.failOutputs(error);
        rethrow;
      }

      resource.resolveUrn(response.urn);
      resource.resolveOutputs(response.object);
      if (resource.isCustom) {
        (resource as CustomResource).resolveId(response.id, isKnown: !isDryRun);
      }
    } catch (error) {
      resource.failUrn(error);
      resource.failOutputs(error);
      if (resource is CustomResource) {
        resource.failId(error);
      }
      rethrow;
    }
  }

  Future<void> _readResource({
    required CustomResource resource,
    required Inputs args,
    required ResourceOptions opts,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final serializedProps = <String, dynamic>{};
    final dependencyUrns = <String>{};

    if (opts.dependsOn != null && opts.dependsOn!.isNotEmpty) {
      dependencyUrns.addAll(
        await _expandDependencies(opts.dependsOn!, fromResource: resource),
      );
    }

    for (final entry in args.entries) {
      final serializer = Serializer();
      final serialized = await serializer.serializeAsync(
        'resource:${resource.getResourceName()}.${entry.key}',
        entry.value,
        true,
      );
      if (serialized == null) {
        continue;
      }

      serializedProps[entry.key] = serialized;

      final urns = await _expandDependencies(
        serializer.dependentResources,
        fromResource: resource,
      );
      dependencyUrns.addAll(urns);
    }

    if (opts.id == null && opts.urn == null) {
      throw ArgumentError(
        'Cannot read resource "${resource.getResourceName()}" without an id or urn.',
      );
    }

    late final String readId;
    if (opts.id != null) {
      final idData = await opts.id!.toOutput().getData();
      final id = idData.value;
      if (!idData.isKnown || id == null || id.isEmpty) {
        throw ArgumentError(
          'Cannot read resource "${resource.getResourceName()}" with an unknown or empty id.',
        );
      }
      readId = id;
    } else {
      final urnData = await opts.urn!.toOutput().getData();
      final urn = urnData.value;
      if (!urnData.isKnown || urn == null || urn.isEmpty) {
        throw ArgumentError(
          'Cannot read resource "${resource.getResourceName()}" with an unknown or empty urn.',
        );
      }
      readId = urn;
    }

    final request = ReadResourceRequest()
      ..type = resource.getResourceType()
      ..name = resource.getResourceName()
      ..id = readId
      ..properties = await StructConverter.toStruct(serializedProps)
      ..acceptSecrets = true
      ..acceptResources = true;
    applyRequestSourceMetadata(request, StackTrace.current);

    if (registerPackageRequest != null) {
      final packageRef = await resolvePackageRef(registerPackageRequest);
      if (packageRef != null) {
        request.packageRef = packageRef;
      }
    }

    if (dependencyUrns.isNotEmpty) {
      final sorted = dependencyUrns.toList()..sort();
      request.dependencies.addAll(sorted);
    }

    if (opts.parent != null) {
      request.parent = await opts.parent!.urn.getValue();
    }
    if (opts.provider != null) {
      final providerRef = await ProviderResource.register(opts.provider);
      if (providerRef != null) {
        request.provider = providerRef;
      }
    }
    if (opts.version != null) {
      request.version = opts.version!;
    }
    if (opts.pluginDownloadURL != null) {
      request.pluginDownloadURL = opts.pluginDownloadURL!;
    }
    if (opts.additionalSecretOutputs != null &&
        opts.additionalSecretOutputs!.isNotEmpty) {
      request.additionalSecretOutputs.addAll(opts.additionalSecretOutputs!);
    }

    ReadResourceResponse response;
    try {
      response = await monitor.readResource(resource, request);
    } catch (error) {
      resource.failOutputs(error);
      rethrow;
    }

    resource.resolveUrn(response.urn);
    resource.resolveOutputs(response.properties);
    resource.resolveId(readId, isKnown: true);
  }

  @override
  Future<String?> resolvePackageRef(models.RegisterPackageRequest request) {
    final key = request.cacheKey;
    final existing = _packageReferences[key];
    if (existing != null) return existing;

    late final Future<String?> registration;
    registration = monitor
        .registerPackage(request.toProto())
        .then<String?>((response) => response.ref)
        .onError((Object error, StackTrace stackTrace) {
          if (identical(_packageReferences[key], registration)) {
            _packageReferences.remove(key);
          }
          Error.throwWithStackTrace(error, stackTrace);
        });
    _packageReferences[key] = registration;
    return registration;
  }

  List<String> _validatePropertyPaths(
    List<String>? paths, {
    required String optionName,
  }) {
    if (paths == null || paths.isEmpty) {
      return const <String>[];
    }

    final validated = <String>[];
    for (var i = 0; i < paths.length; i++) {
      final rawPath = paths[i];
      final path = rawPath.trim();
      if (path.isEmpty) {
        throw ArgumentError(
          '$optionName[$i] must be a non-empty property path.',
        );
      }
      if (path.startsWith('.') || path.endsWith('.') || path.contains('..')) {
        throw ArgumentError(
          '$optionName[$i] contains an invalid property path: "$rawPath".',
        );
      }
      validated.add(path);
    }
    return validated;
  }

  Future<Set<String>> _expandDependencies(
    Iterable<Resource> dependencies, {
    required Resource fromResource,
  }) async {
    final expandedUrns = <String>{};
    final queue = ListQueue<Resource>.from(dependencies);
    final visited = <Resource>{};

    while (queue.isNotEmpty) {
      final dependency = queue.removeFirst();
      if (!visited.add(dependency)) {
        continue;
      }

      final noCycles = Serializer.declareDependency(fromResource, dependency);
      if (!noCycles) {
        final errorOnCycles =
            (Platform.environment[_errorOnDependencyCyclesVar] ?? 'true')
                .toLowerCase() ==
            'true';
        if (!errorOnCycles) {
          continue;
        }

        throw Exception(
          'We have detected a circular dependency involving a resource of type '
          '${dependency.getResourceType()} named ${dependency.getResourceName()}.\n'
          'Please review any `depends_on`, `parent` or other dependency '
          'relationships between your resources to ensure no cycles have been '
          'introduced in your program.',
        );
      }

      if (dependency is ComponentResource && !dependency.isRemote) {
        queue.addAll(dependency.childResources.toList(growable: false));
        continue;
      }

      final urnData = await dependency.urn.getData();
      final urn = urnData.value;
      if (urnData.isKnown && urn is String && urn.isNotEmpty) {
        expandedUrns.add(urn);
      }
    }

    return expandedUrns;
  }

  Future<bool> _monitorSupportsTransforms() async {
    if (_supportsTransforms != null) {
      return _supportsTransforms!;
    }
    try {
      final response = await monitor.supportsFeature(
        monitorpkg.SupportsFeatureRequest('transforms'),
      );
      _supportsTransforms = response.hasSupport;
      return response.hasSupport;
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unimplemented) {
        _supportsTransforms = false;
        return false;
      }
      rethrow;
    }
  }

  Future<bool> _monitorSupportsInvokeTransforms() async {
    if (_supportsInvokeTransforms != null) {
      return _supportsInvokeTransforms!;
    }
    try {
      final response = await monitor.supportsFeature(
        monitorpkg.SupportsFeatureRequest('invokeTransforms'),
      );
      _supportsInvokeTransforms = response.hasSupport;
      return response.hasSupport;
    } catch (e) {
      if (e is GrpcError && e.code == StatusCode.unimplemented) {
        _supportsInvokeTransforms = false;
        return false;
      }
      rethrow;
    }
  }

  @override
  Future<void> registerResourceTransform(ResourceTransform transform) async {
    if (!await _monitorSupportsTransforms()) {
      throw Exception(
        'The Pulumi CLI does not support transforms. Please update the Pulumi CLI.',
      );
    }

    _callbacks ??= CallbackServer(monitor.client);
    final callback = await _callbacks!.registerTransform(transform);
    await monitor.client.registerStackTransform(callback);
  }

  @override
  Future<void> registerInvokeTransform(
    pulumi_invoke.InvokeTransform transform,
  ) async {
    if (!await _monitorSupportsInvokeTransforms()) {
      throw Exception(
        'The Pulumi CLI does not support invoke transforms. Please update the Pulumi CLI.',
      );
    }

    _callbacks ??= CallbackServer(monitor.client);
    final callback = await _callbacks!.registerStackInvokeTransformAsync(
      transform,
    );
    await monitor.client.registerStackInvokeTransform(callback);
  }

  Future<RegisterResourceRequest_ResourceHooksBinding?> _prepareHooks(
    ResourceHookBinding? hooks,
  ) async {
    if (hooks == null || hooks.isEmpty) {
      return null;
    }

    _callbacks ??= CallbackServer(monitor.client);
    final callbacks = _callbacks!;

    final binding = RegisterResourceRequest_ResourceHooksBinding();
    binding.beforeCreate.addAll(
      await _registerHooks(callbacks, hooks.beforeCreate),
    );
    binding.afterCreate.addAll(
      await _registerHooks(callbacks, hooks.afterCreate),
    );
    binding.beforeUpdate.addAll(
      await _registerHooks(callbacks, hooks.beforeUpdate),
    );
    binding.afterUpdate.addAll(
      await _registerHooks(callbacks, hooks.afterUpdate),
    );
    binding.beforeDelete.addAll(
      await _registerHooks(callbacks, hooks.beforeDelete),
    );
    binding.afterDelete.addAll(
      await _registerHooks(callbacks, hooks.afterDelete),
    );
    binding.onError.addAll(await _registerErrorHooks(callbacks, hooks.onError));
    return binding;
  }

  Future<List<String>> _registerHooks(
    ICallbackServer callbacks,
    List<ResourceHook> hooks,
  ) async {
    if (hooks.isEmpty) {
      return const [];
    }
    return Future.wait(hooks.map(callbacks.registerResourceHook));
  }

  Future<List<String>> _registerErrorHooks(
    ICallbackServer callbacks,
    List<ErrorHook> hooks,
  ) async {
    if (hooks.isEmpty) {
      return const [];
    }
    return Future.wait(hooks.map(callbacks.registerErrorHook));
  }

  @override
  void registerResourceOperation(Future<void> operation) {
    _resourceOperations.add(operation);
  }

  @override
  Input<String> collapseAliasToUrn(
    dynamic alias,
    String name,
    String type,
    Resource? parent,
  ) {
    if (alias is! aliaspkg.Alias) {
      throw ArgumentError('Expected alias to be an Alias instance.');
    }
    return aliaspkg.collapseAliasToUrn(
      alias,
      name: name,
      type: type,
      parent: parent,
      project: _projectName,
      stack: _stackName,
    );
  }

  @override
  Future<void> registerOutputs() async {
    _stack?.registerPropertyOutputs();

    if (_resourceOperations.isNotEmpty) {
      // IMPORTANT:
      // We intentionally use `eagerError: true` here.
      //
      // Why:
      // During shutdown we await all in-flight resource operations. If one
      // operation fails quickly (for example dependency-cycle detection) while a
      // sibling operation is stuck waiting on values that will never resolve
      // after that failure, plain `Future.wait(...)` can hang forever.
      // In integration this manifests as `pulumi up` never completing even
      // though the root error has already occurred.
      //
      // Effect:
      // `Future.wait(..., eagerError: true)` returns/throws on the first error,
      // allowing the deployment to fail fast with the real diagnostic instead of
      // deadlocking.
      //
      // Tradeoff:
      // We stop waiting for remaining sibling operations once a fatal error is
      // observed. Those siblings may still complete in the background, but we do
      // not block shutdown on them. This matches the desired behavior for a
      // failed deployment: prioritize surfacing the primary failure deterministically.
      await Future.wait(_resourceOperations, eagerError: true);
      _resourceOperations.clear();
    }

    if (_stack == null) {
      return;
    }
  }

  @override
  Future<void> registerResourceOutputs(
    Resource resource,
    Output<Map<String, dynamic>> outputs,
  ) async {
    var serializedOutputs = <String, Value>{};

    var outputsMap = await outputs.getValue();

    for (var entry in outputsMap.entries) {
      final outputData = await Input.output<Object?>(entry.value).getData();
      if (!outputData.isKnown) {
        if (resource.getResourceType() != Stack.rootPulumiStackTypeName) {
          continue;
        }
        if (!isDryRun) {
          await _logger.warn(
            'Undefined value (${entry.key}) will not show as a stack output.',
          );
          continue;
        }
      }
      var serializedValue = await _stack!.serializeOutputValue(outputData);
      serializedOutputs[entry.key] = serializedValue;
    }

    try {
      var request = RegisterResourceOutputsRequest();
      request.urn = await resource.urn.getValue();
      request.outputs = Struct()..fields.addAll(serializedOutputs);

      await monitor.registerResourceOutputs(request);
    } catch (e) {
      _logger.error('Failed to register outputs: $e');
      rethrow;
    }
  }
}

Deployment Function() getCurrentDeployment = () => DeploymentImpl.instance;

class _GrpcEndpoint {
  final String host;
  final int port;

  const _GrpcEndpoint({required this.host, required this.port});

  static _GrpcEndpoint parse(String address) {
    final normalizedAddress =
        address.startsWith('http://') || address.startsWith('https://')
        ? address
        : 'http://$address';

    final uri = Uri.parse(normalizedAddress);
    if (uri.host.isEmpty || uri.port == 0) {
      throw StateError('Invalid gRPC endpoint: $address');
    }

    return _GrpcEndpoint(host: uri.host, port: uri.port);
  }
}
