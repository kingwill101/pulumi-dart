import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/src/deployment/invoke.dart';
import 'package:pulumi/src/deployment/models.dart' as deployment_models;
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart'
    show
        ReadResourceRequest,
        ReadResourceResponse,
        RegisterPackageRequest,
        RegisterPackageResponse,
        RegisterResourceOutputsRequest,
        RegisterResourceRequest,
        RegisterResourceResponse,
        ResourceCallRequest,
        ResourceInvokeRequest,
        ResourceInvokeResponse,
        ResourceMonitorClient;
import 'package:pulumi/src/resource/resource.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

class _FakeMonitor implements monitorpkg.Monitor {
  Map<String, dynamic> invokePayload = const {};

  @override
  ResourceMonitorClient get client =>
      throw StateError('client is not used in this test harness');

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) async {
    return monitorpkg.SupportsFeatureResponse(true);
  }

  @override
  Future<ResourceInvokeResponse> invoke(ResourceInvokeRequest request) async {
    return ResourceInvokeResponse()
      ..return_1 = await StructConverter.toStruct(invokePayload);
  }

  @override
  Future<RegisterPackageResponse> registerPackage(
    RegisterPackageRequest request,
  ) async {
    return RegisterPackageResponse()..ref = 'pkg-ref';
  }

  @override
  Future<CallResponse> call(ResourceCallRequest request) async {
    throw GrpcError.unimplemented('call not used in this test');
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
    throw GrpcError.unimplemented(
      'registerResourceOutputs not used in this test',
    );
  }
}

class _InvokeHarness with InvokeMixin {
  @override
  final monitorpkg.Monitor monitor;

  _InvokeHarness(this.monitor);

  @override
  Future<String?> resolvePackageRef(
    deployment_models.RegisterPackageRequest request,
  ) async => (await monitor.registerPackage(request.toProto())).ref;
}

void main() {
  group('invoke single value', () {
    late _FakeMonitor monitor;
    late _InvokeHarness harness;

    setUp(() {
      monitor = _FakeMonitor();
      harness = _InvokeHarness(monitor);
    });

    test('invokeSingle returns first map value', () async {
      monitor.invokePayload = {'foo': 'bar'};

      final value = await harness.invokeSingle<String>(
        'pkg:index:getThing',
        {},
      );
      expect(value, equals('bar'));
    });

    test('invokeSingle throws on empty maps', () async {
      monitor.invokePayload = const {};

      await expectLater(
        harness.invokeSingle<String>('pkg:index:getThing', {}),
        throwsStateError,
      );
    });
  });
}
