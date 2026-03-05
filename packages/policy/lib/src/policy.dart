// Required for Pulumi internal protobuf/runtime bindings.
// ignore_for_file: implementation_imports

import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/pulumirpc/pulumi/analyzer.pb.dart' as analyzerpb;
import 'package:pulumi/src/pulumirpc/pulumi/analyzer.pbgrpc.dart'
    as analyzergrpc;
import 'package:pulumi/src/pulumirpc/pulumi/plugin.pb.dart' as pluginpb;
import 'package:pulumi/src/store/store.dart' as runtime_store;
import 'package:pulumi/src/struct_converter.dart';
import 'package:yaml/yaml.dart';

/// Indicates the impact of a policy violation.
enum EnforcementLevel {
  /// Report as a warning but do not fail the update.
  advisory,

  /// Report as an error and fail the update.
  mandatory,

  /// Attempt to mutate resource inputs before validation completes.
  remediate,

  /// Skip policy execution entirely.
  disabled,
}

/// Indicates the severity of a policy.
enum Severity {
  /// Informational impact.
  low,

  /// Moderate impact.
  medium,

  /// Significant impact.
  high,

  /// Highest impact.
  critical,
}

/// Report a policy violation with a message and optional resource URN.
typedef ReportViolation = void Function(String message, [String? urn]);

/// A value marked as secret so remediation output can preserve sensitivity.
class Secret {
  /// Creates a wrapper that marks [value] as secret in remediation outputs.
  const Secret(this.value);

  /// The wrapped secret value.
  final Object? value;
}

/// JSON schema-like configuration metadata for a policy.
class PolicyConfigSchema {
  /// Creates a JSON-schema-like policy config schema.
  ///
  /// The key `enforcementLevel` is reserved and cannot be defined in
  /// [properties] or [required].
  PolicyConfigSchema({required this.properties, this.required}) {
    if (properties.containsKey('enforcementLevel')) {
      throw ArgumentError.value(
        properties,
        'properties',
        'enforcementLevel cannot be explicitly specified in properties',
      );
    }
    if (required != null && required!.contains('enforcementLevel')) {
      throw ArgumentError.value(
        required,
        'required',
        '"enforcementLevel" cannot be specified in required',
      );
    }
  }

  /// JSON schema property definitions keyed by property name.
  final Map<String, Map<String, Object?>> properties;

  /// Optional list of required configuration keys.
  final List<String>? required;
}

/// Represents a compliance framework that a policy belongs to.
class PolicyComplianceFramework {
  /// Creates policy compliance framework metadata.
  const PolicyComplianceFramework({
    this.name,
    this.version,
    this.reference,
    this.specification,
  });

  /// Framework name (for example, CIS or SOC2).
  final String? name;

  /// Framework version.
  final String? version;

  /// Optional external reference URL.
  final String? reference;

  /// Optional framework specification text.
  final String? specification;
}

/// Base class for policies.
abstract class Policy {
  /// Creates a policy definition shared by resource and stack policies.
  Policy({
    required this.name,
    required this.description,
    this.enforcementLevel,
    this.configSchema,
    this.displayName,
    this.severity,
    this.framework,
    this.tags,
    this.remediationSteps,
    this.url,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Policy name cannot be empty');
    }
    if (name == 'all') {
      throw ArgumentError.value(
        name,
        'name',
        '"all" is a reserved policy name',
      );
    }
    if (description.isEmpty) {
      throw ArgumentError.value(
        description,
        'description',
        'Policy description cannot be empty',
      );
    }
  }

  /// Unique policy name.
  final String name;

  /// Human-readable policy description.
  final String description;

  /// Optional policy-specific default enforcement level.
  final EnforcementLevel? enforcementLevel;

  /// Optional schema describing policy configuration.
  final PolicyConfigSchema? configSchema;

  /// Optional display name shown in UIs.
  final String? displayName;

  /// Optional policy severity.
  final Severity? severity;

  /// Optional compliance framework metadata.
  final PolicyComplianceFramework? framework;

  /// Optional policy tags.
  final List<String>? tags;

  /// Optional remediation guidance shown to users.
  final String? remediationSteps;

  /// Optional documentation URL.
  final String? url;
}

/// Callback signature for resource policy validation.
typedef ResourceValidation =
    FutureOr<void> Function(
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// Callback signature for resource policy remediation.
typedef ResourceRemediation =
    FutureOr<Map<String, Object?>?> Function(ResourceValidationArgs args);

/// Callback used for combined remediation/validation implementations.
typedef ResourceValidationRemediation =
    FutureOr<Map<String, Object?>?> Function(
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// A policy that validates and/or remediates resource definitions.
class ResourceValidationPolicy extends Policy {
  /// Creates a resource policy.
  ///
  /// At least one validation callback or a remediation callback is required.
  ResourceValidationPolicy({
    required super.name,
    required super.description,
    super.enforcementLevel,
    super.configSchema,
    super.displayName,
    super.severity,
    super.framework,
    super.tags,
    super.remediationSteps,
    super.url,
    List<ResourceValidation>? validateResource,
    this.remediateResource,
  }) : validateResource = validateResource ?? const [] {
    if (this.validateResource.isEmpty && remediateResource == null) {
      throw ArgumentError(
        'At least one validateResource callback or a remediateResource callback is required.',
      );
    }
  }

  /// Resource validation callbacks.
  final List<ResourceValidation> validateResource;

  /// Optional remediation callback.
  final ResourceRemediation? remediateResource;
}

/// Callback signature for stack policy validation.
typedef StackValidation =
    FutureOr<void> Function(
      StackValidationArgs args,
      ReportViolation reportViolation,
    );

/// A policy that validates the full stack of resources.
class StackValidationPolicy extends Policy {
  /// Creates a stack-wide policy.
  StackValidationPolicy({
    required super.name,
    required super.description,
    required this.validateStack,
    super.enforcementLevel,
    super.configSchema,
    super.displayName,
    super.severity,
    super.framework,
    super.tags,
    super.remediationSteps,
    super.url,
  });

  /// Stack validation callback.
  final StackValidation validateStack;
}

/// Resource options visible to policy runtime callbacks.
class PolicyResourceOptions {
  /// Creates resource options visible to policy callbacks.
  const PolicyResourceOptions({
    required this.protect,
    required this.ignoreChanges,
    required this.aliases,
    required this.customTimeouts,
    required this.additionalSecretOutputs,
    this.deleteBeforeReplace,
    this.parent,
  });

  /// Whether this resource is protected from deletion.
  final bool protect;

  /// Resource properties ignored during diffs.
  final List<String> ignoreChanges;

  /// Whether delete-before-replace is explicitly configured.
  final bool? deleteBeforeReplace;

  /// Alias URNs configured for this resource.
  final List<String> aliases;

  /// Custom timeouts configured for CRUD operations.
  final PolicyCustomTimeouts customTimeouts;

  /// Additional output properties marked as secret.
  final List<String> additionalSecretOutputs;

  /// Parent resource URN, when present.
  final String? parent;
}

/// Custom timeout settings visible to policy runtime callbacks.
class PolicyCustomTimeouts {
  /// Creates custom timeout settings.
  const PolicyCustomTimeouts({
    required this.createSeconds,
    required this.updateSeconds,
    required this.deleteSeconds,
  });

  /// Create timeout in seconds.
  final double createSeconds;

  /// Update timeout in seconds.
  final double updateSeconds;

  /// Delete timeout in seconds.
  final double deleteSeconds;
}

/// Provider metadata available in policy callbacks.
class PolicyProviderResource {
  /// Creates provider metadata for policy callbacks.
  const PolicyProviderResource({
    required this.type,
    required this.props,
    required this.urn,
    required this.name,
  });

  /// Provider type token.
  final String type;

  /// Provider input properties.
  final Map<String, Object?> props;

  /// Provider URN.
  final String urn;

  /// Provider logical name.
  final String name;
}

/// Resource context available in policy callbacks.
class PolicyResource {
  /// Creates resource context passed to stack policy callbacks.
  PolicyResource({
    required this.type,
    required this.props,
    required this.urn,
    required this.name,
    required this.opts,
    required this.dependencies,
    required this.propertyDependencies,
    this.provider,
    this.parent,
  });

  /// Resource type token.
  final String type;

  /// Resource input properties.
  final Map<String, Object?> props;

  /// Resource URN.
  final String urn;

  /// Resource logical name.
  final String name;

  /// Resource options.
  final PolicyResourceOptions opts;

  /// Optional provider resource metadata.
  final PolicyProviderResource? provider;

  /// Optional parent resource.
  PolicyResource? parent;

  /// Dependency resources referenced by this resource.
  final List<PolicyResource> dependencies;

  /// Property-level dependency graph keyed by property name.
  final Map<String, List<PolicyResource>> propertyDependencies;

  /// Returns `true` when [resourceType] matches this resource type.
  bool isType(String resourceType) => type == resourceType;

  /// Returns typed resource properties when this resource matches [resourceType].
  ///
  /// Returns `null` when the type does not match.
  T? asType<T extends Map<String, Object?>>(String resourceType) {
    if (!isType(resourceType)) {
      return null;
    }
    final value = props;
    if (value is T) {
      return value;
    }
    throw StateError(
      'Resource props for type "$resourceType" were not assignable to requested type $T.',
    );
  }
}

/// Thrown when a policy intentionally marks itself as not applicable.
class PolicyNotApplicableError implements Exception {
  /// Creates a not-applicable marker error with optional [reason].
  const PolicyNotApplicableError([this.reason]);

  /// Optional textual explanation for non-applicability.
  final String? reason;

  @override
  String toString() => reason == null
      ? 'PolicyNotApplicableError'
      : 'PolicyNotApplicableError: $reason';
}

/// Context passed to resource validation/remediation callbacks.
class ResourceValidationArgs {
  /// Creates resource validation/remediation callback arguments.
  const ResourceValidationArgs({
    required this.type,
    required this.props,
    required this.urn,
    required this.name,
    required this.opts,
    required this.stackTags,
    this.provider,
    Map<String, Object?> config = const {},
  }) : _config = config;

  /// Resource type token.
  final String type;

  /// Resource input properties.
  final Map<String, Object?> props;

  /// Resource URN.
  final String urn;

  /// Resource logical name.
  final String name;

  /// Resource options.
  final PolicyResourceOptions opts;

  /// Optional provider metadata.
  final PolicyProviderResource? provider;

  /// Stack tags visible to analyzer plugins.
  final Map<String, String> stackTags;
  final Map<String, Object?> _config;

  /// Returns `true` when [resourceType] matches [type].
  bool isType(String resourceType) => type == resourceType;

  /// Returns typed [props] when the resource type matches [resourceType].
  ///
  /// Returns `null` when the type does not match.
  T? asType<T extends Map<String, Object?>>(String resourceType) {
    if (!isType(resourceType)) {
      return null;
    }
    if (props is T) {
      return props as T;
    }
    throw StateError(
      'Resource props for type "$resourceType" were not assignable to requested type $T.',
    );
  }

  /// Returns typed policy config for this policy callback.
  T getConfig<T extends Map<String, Object?>>() {
    if (_config is T) {
      return _config;
    }
    throw StateError('Policy config was not assignable to requested type $T.');
  }

  /// Throws [PolicyNotApplicableError] to skip this callback.
  Never notApplicable([String? reason]) =>
      throw PolicyNotApplicableError(reason);
}

/// Context passed to stack validation callbacks.
class StackValidationArgs {
  /// Creates stack validation callback arguments.
  const StackValidationArgs({
    required this.resources,
    required this.stackTags,
    Map<String, Object?> config = const {},
  }) : _config = config;

  /// All resources in the stack graph.
  final List<PolicyResource> resources;

  /// Stack tags visible to analyzer plugins.
  final Map<String, String> stackTags;
  final Map<String, Object?> _config;

  /// Returns typed policy config for this stack callback.
  T getConfig<T extends Map<String, Object?>>() {
    if (_config is T) {
      return _config;
    }
    throw StateError('Policy config was not assignable to requested type $T.');
  }

  /// Throws [PolicyNotApplicableError] to skip this callback.
  Never notApplicable([String? reason]) =>
      throw PolicyNotApplicableError(reason);
}

/// A collection of policies associated with a policy pack.
typedef Policies = List<Policy>;

/// Configuration map keyed by policy name.
///
/// Supported value shapes:
///
/// - `"policy-name": "mandatory"` (enforcement-only shorthand)
/// - `"policy-name": EnforcementLevel.mandatory`
/// - `"policy-name": {"enforcementLevel": "mandatory", ...props}`
///
/// The remaining map keys are passed to [ResourceValidationArgs.getConfig] or
/// [StackValidationArgs.getConfig].
typedef PolicyPackConfig = Map<String, Object?>;

/// Construction arguments for [PolicyPack].
class PolicyPackArgs {
  /// Creates a policy pack metadata and policy definition object.
  const PolicyPackArgs({
    required this.policies,
    this.enforcementLevel,
    this.description,
    this.displayName,
    this.readme,
    this.provider,
    this.tags,
    this.repository,
  });

  /// Policies included in this pack.
  final Policies policies;

  /// Optional pack-level default enforcement level.
  final EnforcementLevel? enforcementLevel;

  /// Optional policy pack description.
  final String? description;

  /// Optional policy pack display name.
  final String? displayName;

  /// Optional policy pack README text.
  final String? readme;

  /// Optional provider identifier.
  final String? provider;

  /// Optional policy pack tags.
  final List<String>? tags;

  /// Optional repository URL.
  final String? repository;
}

/// A policy pack that contains one or more policies.
class PolicyPack {
  /// Creates and optionally starts a policy analyzer server.
  ///
  /// Set [startServer] to `false` for unit tests that only validate
  /// policy construction behavior.
  ///
  /// Template:
  ///
  /// ```dart
  /// void main() {
  ///   PolicyPack(
  ///     'my-pack',
  ///     PolicyPackArgs(
  ///       enforcementLevel: EnforcementLevel.advisory,
  ///       policies: [
  ///         ResourceValidationPolicy(
  ///           name: 'check-example',
  ///           description: 'Example resource policy.',
  ///           validateResource: [
  ///             validateResourceOfType<Map<String, Object?>>(
  ///               'pkg:index:Thing',
  ///               (props, args, reportViolation) {
  ///                 if (props['enabled'] != true) {
  ///                   reportViolation('Thing must be enabled.');
  ///                 }
  ///               },
  ///             ),
  ///           ],
  ///         ),
  ///       ],
  ///     ),
  ///   );
  /// }
  /// ```
  PolicyPack(
    this.name,
    this.args, {
    this.initialConfig,
    bool startServer = true,
  }) {
    if (name.isEmpty) {
      throw ArgumentError.value(
        name,
        'name',
        'Policy pack name cannot be empty',
      );
    }
    if (!_policyPackNameRegExp.hasMatch(name)) {
      throw ArgumentError.value(
        name,
        'name',
        'Policy pack names may only contain alphanumerics, hyphens, underscores, or periods.',
      );
    }
    if (args.policies.isEmpty) {
      throw ArgumentError.value(
        args.policies,
        'policies',
        'At least one policy is required.',
      );
    }

    _validatePolicyConfigSchemas(args.policies);
    if (startServer) {
      _bootPolicyPackServer(
        this,
        packVersion: _readPolicyPackVersion(),
        defaultEnforcementLevel:
            args.enforcementLevel ?? EnforcementLevel.advisory,
        initialConfig: initialConfig,
      );
    }
  }

  static final RegExp _policyPackNameRegExp = RegExp(
    r'^[a-zA-Z0-9-_.]{1,100}$',
  );

  /// Policy pack name.
  final String name;

  /// Policy pack metadata and policy definitions.
  final PolicyPackArgs args;

  /// Optional initial policy configuration map.
  final PolicyPackConfig? initialConfig;
}

/// Type-safe resource validation callback.
typedef TypedResourceValidation<TProps extends Map<String, Object?>> =
    FutureOr<void> Function(
      TProps props,
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// Type-safe resource remediation callback.
typedef TypedResourceRemediation<TProps extends Map<String, Object?>> =
    FutureOr<Map<String, Object?>?> Function(
      TProps props,
      ResourceValidationArgs args,
    );

/// Type-safe combined resource validation + remediation callback.
typedef TypedResourceValidationRemediation<
  TProps extends Map<String, Object?>
> =
    FutureOr<Map<String, Object?>?> Function(
      TProps props,
      ResourceValidationArgs args,
      ReportViolation reportViolation,
    );

/// Return value for [validateRemediateResourceOfType].
class ValidateRemediateResource {
  /// Creates a tuple-like object containing validate/remediate callbacks.
  const ValidateRemediateResource({
    required this.validateResource,
    required this.remediateResource,
  });

  /// Type-scoped resource validation callback.
  final ResourceValidation validateResource;

  /// Type-scoped resource remediation callback.
  final ResourceRemediation remediateResource;
}

/// Creates a type-scoped remediation callback for the provided [resourceType].
///
/// Template:
///
/// ```dart
/// final remediate = remediateResourceOfType<Map<String, Object?>>(
///   'pkg:index:Thing',
///   (props, args) {
///     if (props['enabled'] == false) {
///       return {'enabled': true};
///     }
///     return null;
///   },
/// );
/// ```
ResourceRemediation remediateResourceOfType<
  TProps extends Map<String, Object?>
>(String resourceType, TypedResourceRemediation<TProps> remediate) {
  return (args) {
    final props = args.asType<TProps>(resourceType);
    if (props == null) {
      args.notApplicable(
        'Policy only applies to resources of type "$resourceType"',
      );
    }
    return remediate(props, args);
  };
}

/// Creates a type-scoped validation callback for the provided [resourceType].
///
/// Template:
///
/// ```dart
/// final validate = validateResourceOfType<Map<String, Object?>>(
///   'pkg:index:Thing',
///   (props, args, reportViolation) {
///     if (props['enabled'] != true) {
///       reportViolation('Resource must be enabled.');
///     }
///   },
/// );
/// ```
ResourceValidation validateResourceOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  TypedResourceValidation<TProps> validate,
) {
  return (args, reportViolation) {
    final props = args.asType<TProps>(resourceType);
    if (props == null) {
      args.notApplicable(
        'Policy only applies to resources of type "$resourceType"',
      );
    }
    return validate(props, args, reportViolation);
  };
}

/// Creates paired validate/remediate callbacks for one type-scoped implementation.
///
/// This helper is useful when remediation and validation share identical
/// branching logic.
///
/// Template:
///
/// ```dart
/// final callbacks = validateRemediateResourceOfType<Map<String, Object?>>(
///   'pkg:index:Thing',
///   (props, args, reportViolation) {
///     if (props['enabled'] == true) {
///       return null;
///     }
///     reportViolation('Resource was remediated to enabled=true.');
///     return {'enabled': true};
///   },
/// );
/// ```
ValidateRemediateResource
validateRemediateResourceOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  TypedResourceValidationRemediation<TProps> validateRemediate,
) {
  final validate = validateResourceOfType<TProps>(
    resourceType,
    validateRemediate,
  );
  final remediate = remediateResourceOfType<TProps>(resourceType, (
    props,
    args,
  ) {
    return validateRemediate(props, args, (_, [__]) {});
  });
  return ValidateRemediateResource(
    validateResource: validate,
    remediateResource: remediate,
  );
}

/// Creates a type-scoped stack validation callback for [resourceType].
///
/// Template:
///
/// ```dart
/// final validateStack = validateStackResourcesOfType<Map<String, Object?>>(
///   'pkg:index:Thing',
///   (resources, args, reportViolation) {
///     if (resources.length > 10) {
///       reportViolation('Too many Thing resources in stack.');
///     }
///   },
/// );
/// ```
StackValidation
validateStackResourcesOfType<TProps extends Map<String, Object?>>(
  String resourceType,
  FutureOr<void> Function(
    List<TProps> resources,
    StackValidationArgs args,
    ReportViolation reportViolation,
  )
  validate,
) {
  return (args, reportViolation) {
    final matchingResources = args.resources
        .where((resource) => resource.isType(resourceType))
        .toList();
    if (matchingResources.isEmpty) {
      args.notApplicable(
        'Policy only applies to resources of type "$resourceType"',
      );
    }

    final typedResources = matchingResources
        .map((resource) => resource.asType<TProps>(resourceType)!)
        .toList(growable: false);

    final typedArgs = StackValidationArgs(
      resources: matchingResources,
      stackTags: args.stackTags,
      config: args._config,
    );

    return validate(typedResources, typedArgs, reportViolation);
  };
}

/// Returns `true` if [policy] is a [ResourceValidationPolicy].
bool isResourcePolicy(Policy policy) => policy is ResourceValidationPolicy;

/// Returns `true` if [policy] is a [StackValidationPolicy].
bool isStackPolicy(Policy policy) => policy is StackValidationPolicy;

void _validatePolicyConfigSchemas(List<Policy> policies) {
  for (final policy in policies) {
    final schema = policy.configSchema;
    if (schema == null) {
      continue;
    }

    if (schema.properties.containsKey('enforcementLevel')) {
      throw ArgumentError.value(
        schema.properties,
        'configSchema.properties',
        'enforcementLevel cannot be explicitly specified in properties',
      );
    }

    if (schema.required != null &&
        schema.required!.contains('enforcementLevel')) {
      throw ArgumentError.value(
        schema.required,
        'configSchema.required',
        '"enforcementLevel" cannot be specified in required',
      );
    }
  }
}

final RegExp _packNameRegExp = RegExp(r'^[a-zA-Z0-9-_.]{1,100}$');
String? _servingPolicyPack;

/// Boots the in-process analyzer gRPC server for a policy pack.
///
/// The selected port is written to stdout to satisfy Pulumi's analyzer plugin
/// handshake protocol.
void _bootPolicyPackServer(
  PolicyPack pack, {
  required String packVersion,
  required EnforcementLevel defaultEnforcementLevel,
  required PolicyPackConfig? initialConfig,
}) {
  if (!_packNameRegExp.hasMatch(pack.name)) {
    stderr.writeln(
      'Invalid policy pack name "${pack.name}". '
      'Policy pack names may only contain alphanumerics, hyphens, underscores, or periods.',
    );
    exit(1);
  }

  if (_servingPolicyPack != null) {
    stderr.writeln(
      "Already serving policy pack '$_servingPolicyPack'. "
      'Only one policy pack may be defined per-process.',
    );
    exit(1);
  }

  _servingPolicyPack = pack.name;

  unawaited(() async {
    try {
      final server = Server.create(
        services: <Service>[
          PolicyAnalyzerServer(
            policyPackName: pack.name,
            policyPackVersion: packVersion,
            defaultEnforcementLevel: defaultEnforcementLevel,
            policyPackArgs: pack.args,
            initialConfig: initialConfig,
          ),
        ],
      );
      await server.serve(address: '127.0.0.1', port: 0);
      // Analyzer protocol requires writing the selected port to stdout.
      // ignore: avoid_print
      print('${server.port}');
    } on Object catch (error, stackTrace) {
      stderr.writeln('fatal: $error');
      stderr.writeln(stackTrace);
      exit(1);
    }
  }());
}

/// Best-effort pubspec version lookup for plugin metadata.
String _readPolicyPackVersion() {
  final pubspec = File('pubspec.yaml');
  if (!pubspec.existsSync()) {
    return '';
  }

  try {
    final parsed = loadYaml(pubspec.readAsStringSync());
    if (parsed is YamlMap && parsed['version'] != null) {
      return parsed['version'].toString();
    }
  } on Object {
    // Best-effort version detection; return empty version if parsing fails.
  }

  return '';
}

/// gRPC analyzer server implementation used by Dart policy packs.
///
/// This service adapts analyzer protobuf messages into strongly typed policy
/// callback arguments and returns diagnostics/remediation payloads expected by
/// the Pulumi engine.
class PolicyAnalyzerServer extends analyzergrpc.AnalyzerServiceBase {
  /// Creates a new analyzer service for one policy pack process.
  PolicyAnalyzerServer({
    required this.policyPackName,
    required this.policyPackVersion,
    required this.defaultEnforcementLevel,
    required this.policyPackArgs,
    required this.initialConfig,
  });

  final String policyPackName;
  final String policyPackVersion;
  final EnforcementLevel defaultEnforcementLevel;
  final PolicyPackArgs policyPackArgs;
  final PolicyPackConfig? initialConfig;

  /// The latest handshake request, retained for diagnostics/testing.
  analyzerpb.AnalyzerHandshakeRequest? handshakeRequest;
  Map<String, _ConfiguredPolicy> _configuredPolicies =
      <String, _ConfiguredPolicy>{};

  /// Stack tags supplied by [configureStack].
  Map<String, String> stackTags = <String, String>{};

  /// Records analyzer handshake requests.
  @override
  Future<analyzerpb.AnalyzerHandshakeResponse> handshake(
    ServiceCall call,
    analyzerpb.AnalyzerHandshakeRequest request,
  ) async {
    handshakeRequest = request;
    return analyzerpb.AnalyzerHandshakeResponse();
  }

  /// Applies stack-scoped metadata and config supplied by the engine.
  @override
  Future<analyzerpb.AnalyzerStackConfigureResponse> configureStack(
    ServiceCall call,
    analyzerpb.AnalyzerStackConfigureRequest request,
  ) async {
    stackTags = Map<String, String>.from(request.tags);

    final options = runtime_store.getStore().settings.options;
    options.project = request.project;
    options.stack = request.stack;
    options.organization = request.organization;
    options.dryRun = request.dryRun;
    runtime_store.setAllConfig(
      Map<String, String>.from(request.config),
      request.configSecretKeys,
    );

    return analyzerpb.AnalyzerStackConfigureResponse();
  }

  /// Applies per-policy runtime config and enforcement overrides.
  @override
  Future<Empty> configure(
    ServiceCall call,
    analyzerpb.ConfigureAnalyzerRequest request,
  ) async {
    final configured = <String, _ConfiguredPolicy>{};
    for (final entry in request.policyConfig.entries) {
      configured[entry.key] = _ConfiguredPolicy(
        enforcementLevel: _fromProtoEnforcement(entry.value.enforcementLevel),
        properties: entry.value.hasProperties()
            ? StructConverter.fromStruct(entry.value.properties)
            : <String, Object?>{},
      );
    }
    _configuredPolicies = configured;
    return Empty();
  }

  /// Returns static analyzer metadata plus initial policy config.
  @override
  Future<analyzerpb.AnalyzerInfo> getAnalyzerInfo(
    ServiceCall call,
    Empty request,
  ) async {
    final info = analyzerpb.AnalyzerInfo(
      name: policyPackName,
      version: policyPackVersion,
      supportsConfig: true,
    );

    if (policyPackArgs.displayName != null) {
      info.displayName = policyPackArgs.displayName!;
    }
    if (policyPackArgs.description != null) {
      info.description = policyPackArgs.description!;
    }
    if (policyPackArgs.readme != null) {
      info.readme = policyPackArgs.readme!;
    }
    if (policyPackArgs.provider != null) {
      info.provider = policyPackArgs.provider!;
    }
    if (policyPackArgs.tags != null) {
      info.tags.addAll(policyPackArgs.tags!);
    }
    if (policyPackArgs.repository != null) {
      info.repository = policyPackArgs.repository!;
    }

    for (final policy in policyPackArgs.policies) {
      final policyInfo = analyzerpb.PolicyInfo(
        name: policy.name,
        description: policy.description,
        enforcementLevel: _toProtoEnforcement(
          policy.enforcementLevel ?? defaultEnforcementLevel,
        ),
        policyType: policy is StackValidationPolicy
            ? analyzerpb.PolicyType.POLICY_TYPE_STACK
            : analyzerpb.PolicyType.POLICY_TYPE_RESOURCE,
      );

      if (policy.displayName != null) {
        policyInfo.displayName = policy.displayName!;
      }
      if (policy.severity != null) {
        policyInfo.severity = _toProtoSeverity(policy.severity!);
      }
      if (policy.framework != null) {
        policyInfo.framework = analyzerpb.PolicyComplianceFramework(
          name: policy.framework?.name ?? '',
          version: policy.framework?.version ?? '',
          reference: policy.framework?.reference ?? '',
          specification: policy.framework?.specification ?? '',
        );
      }
      if (policy.tags != null) {
        policyInfo.tags.addAll(policy.tags!);
      }
      if (policy.remediationSteps != null) {
        policyInfo.remediationSteps = policy.remediationSteps!;
      }
      if (policy.url != null) {
        policyInfo.url = policy.url!;
      }

      final schema = policy.configSchema;
      if (schema != null) {
        policyInfo.configSchema = analyzerpb.PolicyConfigSchema(
          properties: await StructConverter.toStruct(schema.properties),
          required: schema.required,
        );
      }

      info.policies.add(policyInfo);
    }

    final initial = _normalizeInitialConfig(initialConfig);
    for (final entry in initial.entries) {
      final config = analyzerpb.PolicyConfig();
      if (entry.value.enforcementLevel != null) {
        config.enforcementLevel = _toProtoEnforcement(
          entry.value.enforcementLevel!,
        );
      }
      if (entry.value.properties.isNotEmpty) {
        config.properties = await StructConverter.toStruct(
          entry.value.properties,
        );
      }
      info.initialConfig[entry.key] = config;
    }

    return info;
  }

  /// Returns plugin metadata consumed by Pulumi plugin infrastructure.
  @override
  Future<pluginpb.PluginInfo> getPluginInfo(
    ServiceCall call,
    Empty request,
  ) async {
    return pluginpb.PluginInfo(version: policyPackVersion);
  }

  /// Runs resource validation policies for a single resource request.
  @override
  Future<analyzerpb.AnalyzeResponse> analyze(
    ServiceCall call,
    analyzerpb.AnalyzeRequest request,
  ) async {
    final diagnostics = <analyzerpb.AnalyzeDiagnostic>[];
    final notApplicable = <analyzerpb.PolicyNotApplicable>[];

    for (final policy in policyPackArgs.policies) {
      if (policy is! ResourceValidationPolicy) {
        continue;
      }

      final configured = _configuredPolicies[policy.name];
      var enforcement =
          configured?.enforcementLevel ??
          policy.enforcementLevel ??
          defaultEnforcementLevel;
      if (enforcement == EnforcementLevel.disabled) {
        continue;
      }

      if (policy.validateResource.isEmpty) {
        notApplicable.add(
          analyzerpb.PolicyNotApplicable(
            policyName: policy.name,
            reason: 'Policy does not implement validateResource',
          ),
        );
        continue;
      }

      if (enforcement == EnforcementLevel.remediate) {
        enforcement = EnforcementLevel.mandatory;
      }

      final args = _resourceValidationArgs(
        request: request,
        config: configured?.properties ?? <String, Object?>{},
      );

      for (final validate in policy.validateResource) {
        try {
          await validate(args, (message, [urn]) {
            var violationMessage = policy.description;
            if (message.isNotEmpty) {
              violationMessage = '$violationMessage\n$message';
            }

            diagnostics.add(
              analyzerpb.AnalyzeDiagnostic(
                policyName: policy.name,
                policyPackName: policyPackName,
                policyPackVersion: policyPackVersion,
                description: policy.description,
                message: violationMessage,
                enforcementLevel: _toProtoEnforcement(enforcement),
                urn: urn ?? request.urn,
                severity: policy.severity == null
                    ? analyzerpb.PolicySeverity.POLICY_SEVERITY_UNSPECIFIED
                    : _toProtoSeverity(policy.severity!),
              ),
            );
          });
        } on PolicyNotApplicableError catch (error) {
          notApplicable.add(
            analyzerpb.PolicyNotApplicable(
              policyName: policy.name,
              reason: error.reason ?? '',
            ),
          );
        }
      }
    }

    return analyzerpb.AnalyzeResponse(
      diagnostics: diagnostics,
      notApplicable: notApplicable,
    );
  }

  /// Runs stack validation policies using the full stack resource graph.
  @override
  Future<analyzerpb.AnalyzeResponse> analyzeStack(
    ServiceCall call,
    analyzerpb.AnalyzeStackRequest request,
  ) async {
    final diagnostics = <analyzerpb.AnalyzeDiagnostic>[];
    final notApplicable = <analyzerpb.PolicyNotApplicable>[];
    final resources = request.resources
        .map(_toPolicyResource)
        .toList(growable: false);
    final resourcesByUrn = <String, PolicyResource>{
      for (final resource in resources) resource.urn: resource,
    };

    for (final resource in resources) {
      final wire = request.resources.firstWhere((r) => r.urn == resource.urn);
      if (wire.parent.isNotEmpty) {
        resource.parent = resourcesByUrn[wire.parent];
      }

      for (final dependencyUrn in wire.dependencies) {
        final dependency = resourcesByUrn[dependencyUrn];
        if (dependency != null) {
          resource.dependencies.add(dependency);
        }
      }

      for (final propertyEntry in wire.propertyDependencies.entries) {
        final dependencies = <PolicyResource>[];
        for (final urn in propertyEntry.value.urns) {
          final dependency = resourcesByUrn[urn];
          if (dependency != null) {
            dependencies.add(dependency);
          }
        }
        resource.propertyDependencies[propertyEntry.key] = dependencies;
      }
    }

    for (final policy in policyPackArgs.policies) {
      if (policy is! StackValidationPolicy) {
        continue;
      }

      final configured = _configuredPolicies[policy.name];
      var enforcement =
          configured?.enforcementLevel ??
          policy.enforcementLevel ??
          defaultEnforcementLevel;
      if (enforcement == EnforcementLevel.disabled) {
        continue;
      }

      if (enforcement == EnforcementLevel.remediate) {
        enforcement = EnforcementLevel.mandatory;
      }

      final args = StackValidationArgs(
        resources: resources,
        stackTags: stackTags,
        config: configured?.properties ?? const <String, Object?>{},
      );

      try {
        await policy.validateStack(args, (message, [urn]) {
          var violationMessage = policy.description;
          if (message.isNotEmpty) {
            violationMessage = '$violationMessage\n$message';
          }

          diagnostics.add(
            analyzerpb.AnalyzeDiagnostic(
              policyName: policy.name,
              policyPackName: policyPackName,
              policyPackVersion: policyPackVersion,
              description: policy.description,
              message: violationMessage,
              enforcementLevel: _toProtoEnforcement(enforcement),
              urn: urn ?? '',
              severity: policy.severity == null
                  ? analyzerpb.PolicySeverity.POLICY_SEVERITY_UNSPECIFIED
                  : _toProtoSeverity(policy.severity!),
            ),
          );
        });
      } on PolicyNotApplicableError catch (error) {
        notApplicable.add(
          analyzerpb.PolicyNotApplicable(
            policyName: policy.name,
            reason: error.reason ?? '',
          ),
        );
      }
    }

    return analyzerpb.AnalyzeResponse(
      diagnostics: diagnostics,
      notApplicable: notApplicable,
    );
  }

  /// Runs resource remediation policies and returns transformed properties.
  @override
  Future<analyzerpb.RemediateResponse> remediate(
    ServiceCall call,
    analyzerpb.AnalyzeRequest request,
  ) async {
    final remediations = <analyzerpb.Remediation>[];
    final notApplicable = <analyzerpb.PolicyNotApplicable>[];

    var props = _structToObject(request.properties);

    for (final policy in policyPackArgs.policies) {
      if (policy is! ResourceValidationPolicy) {
        continue;
      }

      final configured = _configuredPolicies[policy.name];
      final enforcement =
          configured?.enforcementLevel ??
          policy.enforcementLevel ??
          defaultEnforcementLevel;
      if (enforcement != EnforcementLevel.remediate) {
        continue;
      }

      if (policy.remediateResource == null) {
        notApplicable.add(
          analyzerpb.PolicyNotApplicable(
            policyName: policy.name,
            reason: 'Policy does not implement remediateResource',
          ),
        );
        continue;
      }

      final args = ResourceValidationArgs(
        type: request.type,
        props: props,
        urn: request.urn,
        name: request.name,
        opts: _toPolicyResourceOptions(request.options),
        provider: request.hasProvider()
            ? _toProviderResource(request.provider)
            : null,
        stackTags: stackTags,
        config: configured?.properties ?? const <String, Object?>{},
      );

      try {
        final result = await policy.remediateResource!(args);
        if (result == null) {
          continue;
        }

        props = result;
        remediations.add(
          analyzerpb.Remediation(
            policyName: policy.name,
            policyPackName: policyPackName,
            policyPackVersion: policyPackVersion,
            description: policy.description,
            properties: await StructConverter.toStruct(
              _normalizeRemediationProperties(result),
            ),
          ),
        );
      } on PolicyNotApplicableError catch (error) {
        notApplicable.add(
          analyzerpb.PolicyNotApplicable(
            policyName: policy.name,
            reason: error.reason ?? '',
          ),
        );
      }
    }

    return analyzerpb.RemediateResponse(
      remediations: remediations,
      notApplicable: notApplicable,
    );
  }

  /// Cancels in-flight analyzer work.
  ///
  /// Dart policy callbacks are currently synchronous from the engine's
  /// perspective, so this is a no-op response.
  @override
  Future<Empty> cancel(ServiceCall call, Empty request) async {
    return Empty();
  }

  /// Creates resource callback arguments from wire analyze requests.
  ResourceValidationArgs _resourceValidationArgs({
    required analyzerpb.AnalyzeRequest request,
    required Map<String, Object?> config,
  }) {
    return ResourceValidationArgs(
      type: request.type,
      props: _structToObject(request.properties),
      urn: request.urn,
      name: request.name,
      opts: _toPolicyResourceOptions(request.options),
      provider: request.hasProvider()
          ? _toProviderResource(request.provider)
          : null,
      stackTags: stackTags,
      config: config,
    );
  }

  /// Creates stack-resource callback models from wire resources.
  PolicyResource _toPolicyResource(analyzerpb.AnalyzerResource resource) {
    return PolicyResource(
      type: resource.type,
      props: _structToObject(resource.properties),
      urn: resource.urn,
      name: resource.name,
      opts: _toPolicyResourceOptions(resource.options),
      provider: resource.hasProvider()
          ? _toProviderResource(resource.provider)
          : null,
      dependencies: <PolicyResource>[],
      propertyDependencies: <String, List<PolicyResource>>{},
    );
  }
}

/// Runtime policy configuration resolved from Configure RPC requests.
class _ConfiguredPolicy {
  const _ConfiguredPolicy({
    required this.enforcementLevel,
    required this.properties,
  });

  final EnforcementLevel enforcementLevel;
  final Map<String, Object?> properties;
}

/// Normalized initial policy configuration shape.
class _InitialPolicyConfig {
  const _InitialPolicyConfig({
    this.enforcementLevel,
    this.properties = const <String, Object?>{},
  });

  final EnforcementLevel? enforcementLevel;
  final Map<String, Object?> properties;
}

/// Normalizes mixed initial config formats to a single internal shape.
Map<String, _InitialPolicyConfig> _normalizeInitialConfig(
  PolicyPackConfig? initialConfig,
) {
  if (initialConfig == null) {
    return const <String, _InitialPolicyConfig>{};
  }

  final normalized = <String, _InitialPolicyConfig>{};
  for (final entry in initialConfig.entries) {
    final value = entry.value;
    if (value is EnforcementLevel) {
      normalized[entry.key] = _InitialPolicyConfig(enforcementLevel: value);
      continue;
    }

    if (value is String) {
      final level = _parseEnforcementLevel(value);
      if (level != null) {
        normalized[entry.key] = _InitialPolicyConfig(enforcementLevel: level);
      }
      continue;
    }

    if (value is Map) {
      EnforcementLevel? level;
      final properties = <String, Object?>{};
      for (final mapEntry in value.entries) {
        final key = mapEntry.key.toString();
        if (key == 'enforcementLevel') {
          final parsed = mapEntry.value;
          if (parsed is EnforcementLevel) {
            level = parsed;
          } else if (parsed is String) {
            level = _parseEnforcementLevel(parsed);
          }
          continue;
        }
        properties[key] = mapEntry.value;
      }

      normalized[entry.key] = _InitialPolicyConfig(
        enforcementLevel: level,
        properties: properties,
      );
    }
  }

  return normalized;
}

/// Converts analyzer wire options into callback-visible resource options.
PolicyResourceOptions _toPolicyResourceOptions(
  analyzerpb.AnalyzerResourceOptions options,
) {
  return PolicyResourceOptions(
    protect: options.protect,
    ignoreChanges: options.ignoreChanges,
    deleteBeforeReplace: options.deleteBeforeReplaceDefined
        ? options.deleteBeforeReplace
        : null,
    aliases: options.aliases,
    customTimeouts: PolicyCustomTimeouts(
      createSeconds: options.hasCustomTimeouts()
          ? options.customTimeouts.create_1
          : 0,
      updateSeconds: options.hasCustomTimeouts()
          ? options.customTimeouts.update
          : 0,
      deleteSeconds: options.hasCustomTimeouts()
          ? options.customTimeouts.delete
          : 0,
    ),
    additionalSecretOutputs: options.additionalSecretOutputs,
    parent: options.parent.isEmpty ? null : options.parent,
  );
}

/// Converts analyzer wire provider representation to callback provider context.
PolicyProviderResource _toProviderResource(
  analyzerpb.AnalyzerProviderResource provider,
) {
  return PolicyProviderResource(
    type: provider.type,
    props: _structToObject(provider.properties),
    urn: provider.urn,
    name: provider.name,
  );
}

/// Converts protobuf struct values to plain Dart map values.
Map<String, Object?> _structToObject(Struct struct) {
  final map = StructConverter.fromStruct(struct);
  return map.map((key, value) => MapEntry(key, value));
}

/// Normalizes remediation properties for protobuf struct serialization.
Map<String, Object?> _normalizeRemediationProperties(
  Map<String, Object?> input,
) {
  return input.map(
    (key, value) => MapEntry(key, _normalizeRemediationValue(value)),
  );
}

/// Recursively normalizes remediation values for wire transport.
///
/// This preserves Pulumi secret sentinels for [Secret] values and converts
/// `DateTime`/`Duration` values into engine-compatible primitives.
dynamic _normalizeRemediationValue(dynamic value) {
  if (value is Secret) {
    return <String, dynamic>{
      Constants.specialSigKey: Constants.specialSecretSig,
      Constants.valueName: _normalizeRemediationValue(value.value),
    };
  }

  if (value is Map) {
    return value.map(
      (key, item) => MapEntry(key.toString(), _normalizeRemediationValue(item)),
    );
  }

  if (value is Iterable) {
    return value.map(_normalizeRemediationValue).toList(growable: false);
  }

  if (value is num || value is bool || value is String || value == null) {
    return value;
  }

  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }

  if (value is Duration) {
    return value.inMicroseconds / Duration.microsecondsPerSecond;
  }

  return value.toString();
}

/// Converts public enforcement enum values to analyzer protobuf values.
analyzerpb.EnforcementLevel _toProtoEnforcement(
  EnforcementLevel enforcementLevel,
) {
  switch (enforcementLevel) {
    case EnforcementLevel.advisory:
      return analyzerpb.EnforcementLevel.ADVISORY;
    case EnforcementLevel.mandatory:
      return analyzerpb.EnforcementLevel.MANDATORY;
    case EnforcementLevel.remediate:
      return analyzerpb.EnforcementLevel.REMEDIATE;
    case EnforcementLevel.disabled:
      return analyzerpb.EnforcementLevel.DISABLED;
  }
}

/// Converts analyzer protobuf enforcement values to public enum values.
EnforcementLevel _fromProtoEnforcement(
  analyzerpb.EnforcementLevel enforcementLevel,
) {
  switch (enforcementLevel) {
    case analyzerpb.EnforcementLevel.ADVISORY:
      return EnforcementLevel.advisory;
    case analyzerpb.EnforcementLevel.MANDATORY:
      return EnforcementLevel.mandatory;
    case analyzerpb.EnforcementLevel.DISABLED:
      return EnforcementLevel.disabled;
    case analyzerpb.EnforcementLevel.REMEDIATE:
      return EnforcementLevel.remediate;
  }

  throw StateError('Unknown enforcement level: $enforcementLevel');
}

/// Parses string enforcement levels from config payloads.
EnforcementLevel? _parseEnforcementLevel(String raw) {
  switch (raw.toLowerCase()) {
    case 'advisory':
      return EnforcementLevel.advisory;
    case 'mandatory':
      return EnforcementLevel.mandatory;
    case 'remediate':
      return EnforcementLevel.remediate;
    case 'disabled':
      return EnforcementLevel.disabled;
    default:
      return null;
  }
}

/// Converts public severity enum values to analyzer protobuf values.
analyzerpb.PolicySeverity _toProtoSeverity(Severity severity) {
  switch (severity) {
    case Severity.low:
      return analyzerpb.PolicySeverity.POLICY_SEVERITY_LOW;
    case Severity.medium:
      return analyzerpb.PolicySeverity.POLICY_SEVERITY_MEDIUM;
    case Severity.high:
      return analyzerpb.PolicySeverity.POLICY_SEVERITY_HIGH;
    case Severity.critical:
      return analyzerpb.PolicySeverity.POLICY_SEVERITY_CRITICAL;
  }
}
