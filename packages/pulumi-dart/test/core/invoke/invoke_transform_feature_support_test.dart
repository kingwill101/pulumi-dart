import 'package:grpc/grpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/empty.pb.dart';
import 'package:pulumi/pulumi.dart';
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
        ResourceMonitorClient;
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';

class _FeatureGateMonitor implements monitorpkg.Monitor {
  _FeatureGateMonitor({
    this.supportsFeatureValue = false,
    this.supportsFeatureError,
  });

  final bool supportsFeatureValue;
  final Object? supportsFeatureError;
  final List<String> requestedFeatures = [];

  @override
  ResourceMonitorClient get client =>
      throw StateError('client must not be used when feature is unsupported');

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) async {
    requestedFeatures.add(request.id);
    if (supportsFeatureError != null) {
      throw supportsFeatureError!;
    }
    return monitorpkg.SupportsFeatureResponse(supportsFeatureValue);
  }

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
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
    throw GrpcError.unimplemented(
      'registerResourceOutputs not used in this test',
    );
  }
}

void main() {
  group('invoke transform feature support', () {
    tearDown(DeploymentImpl.clearInstance);

    test('fails when monitor reports invokeTransforms unsupported', () async {
      final monitor = _FeatureGateMonitor(supportsFeatureValue: false);
      final deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: true,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);

      await expectLater(
        deployment.registerInvokeTransform((_) async => null),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('does not support invoke transforms'),
          ),
        ),
      );
      await expectLater(
        deployment.registerInvokeTransform((_) async => null),
        throwsA(isA<Exception>()),
      );
      expect(monitor.requestedFeatures, equals(['invokeTransforms']));
    });

    test('fails with message when supportsFeature is unimplemented', () async {
      final monitor = _FeatureGateMonitor(
        supportsFeatureError: GrpcError.unimplemented(
          'supportsFeature RPC unavailable',
        ),
      );
      final deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: true,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);

      await expectLater(
        deployment.registerInvokeTransform((_) async => null),
        throwsA(
          isA<Exception>().having(
            (e) => e.toString(),
            'message',
            contains('does not support invoke transforms'),
          ),
        ),
      );
      await expectLater(
        deployment.registerInvokeTransform((_) async => null),
        throwsA(isA<Exception>()),
      );
      expect(monitor.requestedFeatures, equals(['invokeTransforms']));
    });
  });
}
