import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pb.dart' as pulumirpc;
import 'package:pulumi/src/resource/resource.dart';

/// {@template pulumi.monitor.summary}
/// Wrapper around the resource monitor gRPC client.
///
/// The monitor is the primary RPC endpoint for resource registration, reads,
/// invokes/calls, and feature probes.
///
/// Most programs use this indirectly through [Deployment].
/// {@endtemplate}
///
class Monitor {
  final ResourceMonitorClient _client;

  Monitor(ClientChannel channel) : _client = ResourceMonitorClient(channel);

  /// Underlying gRPC monitor client.
  ResourceMonitorClient get client => _client;

  /// Probes runtime support for a named feature.
  Future<SupportsFeatureResponse> supportsFeature(
    SupportsFeatureRequest request,
  ) async {
    final response = await _client.supportsFeature(request.toGrpc());
    return SupportsFeatureResponse.fromGrpc(response);
  }

  /// Invokes a provider function through the monitor.
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    return await _client.invoke(request);
  }

  /// Calls a provider function with dependency-aware argument tracking.
  Future<CallResponse> call(ResourceCallRequest request) async {
    return await _client.call(request);
  }

  /// Registers a provider package.
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    return await _client.registerPackage(request);
  }

  /// Reads an existing resource from provider state.
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    return await _client.readResource(request);
  }

  /// Registers a resource in the deployment plan.
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    return await _client.registerResource(request);
  }

  /// Registers post-create outputs for a resource.
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    return await _client.registerResourceOutputs(request);
  }
}

/// Request for monitor feature support probing.
class SupportsFeatureRequest {
  /// Feature identifier (for example `transforms`).
  final String id;

  SupportsFeatureRequest(this.id);

  pulumirpc.SupportsFeatureRequest toGrpc() {
    return pulumirpc.SupportsFeatureRequest()..id = id;
  }
}

/// Response for monitor feature support probing.
class SupportsFeatureResponse {
  /// Whether the monitor/runtime supports the requested feature.
  final bool hasSupport;

  SupportsFeatureResponse(this.hasSupport);

  factory SupportsFeatureResponse.fromGrpc(
    pulumirpc.SupportsFeatureResponse response,
  ) {
    return SupportsFeatureResponse(response.hasSupport);
  }
}
