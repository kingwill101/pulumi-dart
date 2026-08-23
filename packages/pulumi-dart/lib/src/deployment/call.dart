import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/monitor.dart';
import 'package:pulumi/src/resource/provider_resource.dart';
import 'package:pulumi/src/resource/resource.dart';
import 'package:pulumi/src/source_position.dart';
import 'package:pulumi/src/struct_converter.dart';

import '../pulumirpc/pulumi/resource.pb.dart' as pb;
import 'models.dart' as models;

/// {@template pulumi.deployment.call_mixin}
/// Deployment helper mixin for provider `call` operations.
///
/// Calls are similar to invokes but may include dependency-aware argument
/// tracking and an optional `__self__` resource context.
/// {@endtemplate}
///
mixin CallMixin {
  /// Active monitor RPC wrapper.
  Monitor get monitor;

  /// Resolves a monitor package reference for this deployment.
  Future<String?> resolvePackageRef(models.RegisterPackageRequest request);

  /// Executes a provider call and ignores return payload.
  Future<void> call(
    String token,
    Map<String, dynamic> args, {
    Resource? self,
    models.CallOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
  }) async {
    await callWithResult(
      token,
      args,
      self: self,
      options: options,
      registerPackageRequest: registerPackageRequest,
    );
  }

  /// Executes a provider call and deserializes the return payload.
  Future<T> callWithResult<T>(
    String token,
    Map<String, dynamic> args, {
    Resource? self,
    models.CallOptions? options,
    models.RegisterPackageRequest? registerPackageRequest,
    bool unwrapSingleReturn = false,
  }) async {
    final requestArgs = Map<String, dynamic>.from(args);
    if (self != null) {
      requestArgs['__self__'] = self;
    }

    final provider = options?.provider ?? (self?.getProvider(token));
    final providerRef = provider != null
        ? await ProviderResource.register(provider) ?? ''
        : '';
    final serializedArgs = await StructConverter.toStruct(requestArgs);
    final request = pb.ResourceCallRequest()
      ..tok = token
      ..args = serializedArgs
      ..provider = providerRef
      ..version = options?.version ?? ''
      ..pluginDownloadURL = options?.pluginDownloadURL ?? '';
    applyRequestSourceMetadata(request, StackTrace.current);

    if (registerPackageRequest != null) {
      final packageRef = await resolvePackageRef(registerPackageRequest);
      if (packageRef != null) {
        request.packageRef = packageRef;
      }
    }

    final response = await monitor.call(request);

    if (response.failures.isNotEmpty) {
      throw Exception(
        'Call failed: ${response.failures.map((f) => '${f.reason} (${f.property})').join(', ')}',
      );
    }

    return _deserializeCallResponse<T>(
      response.return_1,
      unwrapSingleReturn: unwrapSingleReturn,
    );
  }

  /// Deserializes monitor call responses using Pulumi wire semantics.
  T _deserializeCallResponse<T>(
    Struct response, {
    required bool unwrapSingleReturn,
  }) {
    if (T == Null) {
      return null as T;
    }
    final decoded = Deserializer.deserialize<dynamic>(
      Value()..structValue = response,
    );
    final value = decoded.value;
    if (unwrapSingleReturn && value is Map<String, dynamic>) {
      return _coerceCallResult<T>(value['res']);
    }
    return _coerceCallResult<T>(value);
  }

  T _coerceCallResult<T>(Object? value) {
    if (T == int && value is num) {
      return value.toInt() as T;
    }
    if (T == double && value is num) {
      return value.toDouble() as T;
    }
    return value as T;
  }
}
