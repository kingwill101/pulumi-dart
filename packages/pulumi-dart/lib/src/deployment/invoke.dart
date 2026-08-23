import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/monitor.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/resource/resource.dart';
import 'package:pulumi/src/source_position.dart';
import 'package:pulumi/src/struct_converter.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import '../output.dart';
import 'models.dart' as models;

/// {@template pulumi.deployment.invoke_mixin}
/// Deployment helper mixin for provider `invoke` operations.
///
/// This mixin is used by [DeploymentImpl] to issue `ResourceInvokeRequest`
/// calls through the monitor and deserialize responses into Dart values.
/// {@endtemplate}
///
mixin InvokeMixin {
  /// Active monitor RPC wrapper.
  Monitor get monitor;

  /// Resolves a monitor package reference for this deployment.
  Future<String?> resolvePackageRef(models.RegisterPackageRequest request);

  /// Invokes a provider function token and deserializes its return payload.
  ///
  /// [token] is typically in `pkg:module:function` form.
  Future<T> invoke<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final data = await invokeOutputData<T>(
      token,
      args,
      options: options,
      registerPackageRequest: registerPackageRequest,
    );
    return data.value as T;
  }

  Future<OutputData<T>> invokeOutputData<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final providerRef = options?.provider != null
        ? await ProviderResource.register(options!.provider) ?? ''
        : '';
    final dependencyUrns = <String>{};
    for (final dependency in options?.dependsOn ?? const <Resource>[]) {
      final urnData = await dependency.urn.getData();
      final urn = urnData.value;
      if (urnData.isKnown && urn is String && urn.isNotEmpty) {
        dependencyUrns.add(urn);
      }
    }
    final serializedArgs = await StructConverter.toStruct(args);
    final request = pb.ResourceInvokeRequest()
      ..tok = token
      ..args = serializedArgs
      ..provider = providerRef
      ..version = options?.version ?? ''
      ..pluginDownloadURL = options?.pluginDownloadURL ?? ''
      ..acceptResources = true
      ..dependsOn.addAll(dependencyUrns.toList()..sort());
    applyRequestSourceMetadata(request, StackTrace.current);

    if (registerPackageRequest != null) {
      final packageRef = await resolvePackageRef(registerPackageRequest);
      if (packageRef != null) {
        request.packageRef = packageRef;
      }
    }

    final response = await monitor.invoke(request);

    if (response.failures.isNotEmpty) {
      throw Exception(
        'Invoke failed: ${response.failures.map((f) => '${f.reason} (${f.property})').join(', ')}',
      );
    }

    if (response.unknown) {
      return OutputData<T>(
        value: null,
        isKnown: false,
        isSecret: false,
        resources: {},
      );
    }

    return _deserializeInvokeResponse<T>(response.return_1);
  }

  /// Invokes and returns the first value from an object result payload.
  ///
  /// Useful for provider APIs that return a single named property.
  Future<T> invokeSingle<T>(
    String token,
    Map<String, dynamic> args, {
    models.InvokeOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    final result = await invoke<Map<String, dynamic>>(
      token,
      args,
      options: options,
      registerPackageRequest: registerPackageRequest,
    );
    return result.values.first as T;
  }

  /// Deserializes monitor invoke responses using Pulumi wire semantics.
  OutputData<T> _deserializeInvokeResponse<T>(Struct response) {
    if (T == Null) {
      return OutputData<T>(
        value: null,
        isKnown: true,
        isSecret: false,
        resources: {},
      );
    }
    final decoded = Deserializer.deserialize<dynamic>(
      Value()..structValue = response,
    );
    return OutputData<T>(
      value: decoded.value as T,
      isKnown: decoded.isKnown,
      isSecret: decoded.isSecret,
      resources: decoded.resources,
    );
  }
}
