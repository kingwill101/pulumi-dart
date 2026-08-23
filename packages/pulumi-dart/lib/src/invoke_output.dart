import 'deployment/deployment.dart';
import 'deployment/models.dart' as deployment_models;
import 'input.dart';
import 'invoke.dart';
import 'output.dart';
import 'resource/custom_resource.dart';
import 'resource/resource.dart';

/// Output-mode invoke options.
///
/// Extends [InvokeOptions] with optional explicit invoke dependencies.
class InvokeOutputOptions extends InvokeOptions {
  InvokeOutputOptions({
    super.parent,
    super.provider,
    super.version,
    super.pluginDownloadURL,
    super.async,
    this.dependsOn,
  });

  /// Explicit resources this invoke depends on.
  final Iterable<Resource>? dependsOn;
}

/// Invokes a provider function and returns an [Output] result.
///
/// This mirrors invoke-output semantics from other Pulumi SDKs by:
/// - preserving input secrecy on the returned output,
/// - carrying input and explicit dependency resources,
/// - and returning an unknown output when input/dependency values are unknown.
Output<T> invokeOutput<T>(
  String token,
  Inputs args, {
  InvokeOutputOptions? options,
  deployment_models.RegisterPackageRequest? registerPackageRequest,
}) {
  return Output<T>(
    _invokeOutputData<T>(
      token,
      args,
      options: options,
      registerPackageRequest: registerPackageRequest,
    ),
  );
}

/// Like [invokeOutput], but unwraps the first property from object results.
Output<T> invokeSingleOutput<T>(
  String token,
  Inputs args, {
  InvokeOutputOptions? options,
  deployment_models.RegisterPackageRequest? registerPackageRequest,
}) {
  return invokeOutput<Map<String, dynamic>>(
    token,
    args,
    options: options,
    registerPackageRequest: registerPackageRequest,
  ).apply((result) {
    if (result.isEmpty) {
      throw StateError('InvokeSingleOutput for `$token` returned no values');
    }
    return result.values.first as T;
  });
}

Future<OutputData<T>> _invokeOutputData<T>(
  String token,
  Inputs args, {
  InvokeOutputOptions? options,
  deployment_models.RegisterPackageRequest? registerPackageRequest,
}) async {
  final inputMetadata = await _resolveInputArgs(args);
  final dependsOnMetadata = await _resolveDependsOn(options?.dependsOn);
  final resources = <Resource>{
    ...inputMetadata.resources,
    ...dependsOnMetadata.resources,
  };
  final isKnown = inputMetadata.isKnown && dependsOnMetadata.isKnown;
  final isSecret = inputMetadata.isSecret || dependsOnMetadata.isSecret;

  if (!isKnown) {
    return OutputData<T>(
      value: null,
      isKnown: false,
      isSecret: isSecret,
      resources: resources,
    );
  }

  final invokeOptions = options == null
      ? null
      : InvokeOptions(
          parent: options.parent,
          provider: options.provider,
          version: options.version,
          pluginDownloadURL: options.pluginDownloadURL,
          async: options.async,
        );

  final result = await Deployment.instance.invokeOutputData<T>(
    token,
    inputMetadata.values,
    options: toDeploymentInvokeOptions(invokeOptions),
    registerPackageRequest: registerPackageRequest,
  );
  return OutputData<T>(
    value: result.value,
    isKnown: result.isKnown,
    isSecret: isSecret || result.isSecret,
    resources: {...resources, ...result.resources},
  );
}

Future<_ResolvedInputArgs> _resolveInputArgs(Inputs args) async {
  final entries = args.entries.toList(growable: false);
  final values = <String, dynamic>{};
  final resources = <Resource>{};
  var isKnown = true;
  var isSecret = false;

  for (final entry in entries) {
    final data = await entry.value.toOutput().getData();
    resources.addAll(data.resources);
    isKnown = isKnown && data.isKnown;
    isSecret = isSecret || data.isSecret;
    if (data.isKnown) {
      values[entry.key] = data.value;
    }
  }

  final dependencyMetadata = await _resolveResourceDependencies(resources);
  resources.addAll(dependencyMetadata.resources);
  isKnown = isKnown && dependencyMetadata.isKnown;
  isSecret = isSecret || dependencyMetadata.isSecret;

  return _ResolvedInputArgs(
    values: values,
    resources: resources,
    isKnown: isKnown,
    isSecret: isSecret,
  );
}

Future<_ResolvedDependsOn> _resolveDependsOn(
  Iterable<Resource>? dependsOn,
) async {
  if (dependsOn == null) {
    return _ResolvedDependsOn(
      resources: <Resource>{},
      isKnown: true,
      isSecret: false,
    );
  }
  final metadata = await _resolveResourceDependencies(dependsOn.toSet());
  return _ResolvedDependsOn(
    resources: metadata.resources,
    isKnown: metadata.isKnown,
    isSecret: metadata.isSecret,
  );
}

Future<_ResolvedDependsOn> _resolveResourceDependencies(
  Set<Resource> dependencies,
) async {
  final resources = <Resource>{...dependencies};
  var isKnown = true;
  var isSecret = false;
  for (final dependency in dependencies) {
    if (dependency is! CustomResource) {
      continue;
    }
    final idData = await dependency.id.getData();
    resources.addAll(idData.resources);
    isKnown = isKnown && idData.isKnown;
    isSecret = isSecret || idData.isSecret;
  }
  return _ResolvedDependsOn(
    resources: resources,
    isKnown: isKnown,
    isSecret: isSecret,
  );
}

class _ResolvedInputArgs {
  const _ResolvedInputArgs({
    required this.values,
    required this.resources,
    required this.isKnown,
    required this.isSecret,
  });

  final Map<String, dynamic> values;
  final Set<Resource> resources;
  final bool isKnown;
  final bool isSecret;
}

class _ResolvedDependsOn {
  const _ResolvedDependsOn({
    required this.resources,
    required this.isKnown,
    required this.isSecret,
  });

  final Set<Resource> resources;
  final bool isKnown;
  final bool isSecret;
}
