import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/provider.pb.dart';
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';
import 'package:pulumi/src/struct_converter.dart';
import 'package:test/test.dart';

import '../../mocks/mock_engine.dart';
import '../../test_utils/monitor_test_utils.dart';

class _InvokeFutureMonitor extends BaseMonitor {
  int invokeCount = 0;
  ResourceInvokeRequest? lastInvokeRequest;

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    return Future.value(monitorpkg.SupportsFeatureResponse(true));
  }

  @override
  Future<InvokeResponse> invoke(ResourceInvokeRequest request) async {
    invokeCount++;
    lastInvokeRequest = request;
    return InvokeResponse(
      return_1: await StructConverter.toStruct(const {'value': 42}),
    );
  }
}

void main() {
  group('invoke_future', () {
    late _InvokeFutureMonitor monitor;
    late DeploymentImpl deployment;

    setUp(() {
      monitor = _InvokeFutureMonitor();
      deployment = DeploymentImpl.createForTesting(
        organizationName: 'org',
        projectName: 'project',
        stackName: 'stack',
        isDryRun: false,
        monitor: monitor,
        engine: MockEngine(),
      );
      DeploymentImpl.setTestInstance(deployment);
    });

    tearDown(() {
      DeploymentImpl.clearInstance();
    });

    test('invoke works correctly when awaited through futures', () async {
      Future<Map<String, dynamic>> invokeAsync() async {
        return deployment.invoke<Map<String, dynamic>>(
          'test:index:MyFunction',
          const {},
        );
      }

      final results = await Future.wait([invokeAsync(), invokeAsync()]);

      expect(
        results,
        equals(const [
          {'value': 42},
          {'value': 42},
        ]),
      );
      expect(monitor.invokeCount, equals(2));
      expect(monitor.lastInvokeRequest, isNotNull);
      expect(monitor.lastInvokeRequest!.tok, equals('test:index:MyFunction'));
      expect(monitor.lastInvokeRequest!.provider, isEmpty);
    });
  });
}
