import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/resource/resource.dart';

abstract class BaseMonitor implements monitorpkg.Monitor {
  @override
  ResourceMonitorClient get client =>
      throw StateError('client is not used in this test monitor');

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    return Future.value(monitorpkg.SupportsFeatureResponse(true));
  }

  @override
  Future<ResourceInvokeResponse> invoke(ResourceInvokeRequest request) async {
    throw GrpcError.unimplemented('invoke not used in this test');
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    throw GrpcError.unimplemented('call not used in this test');
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    throw GrpcError.unimplemented('registerPackage not used in this test');
  }

  @override
  Future<ReadResourceResponse> readResource(
    Resource resource,
    ReadResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('readResource not used in this test');
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    throw GrpcError.unimplemented('registerResource not used in this test');
  }

  @override
  Future<Empty> registerResourceOutputs(
    RegisterResourceOutputsRequest request,
  ) async {
    return Empty();
  }
}
