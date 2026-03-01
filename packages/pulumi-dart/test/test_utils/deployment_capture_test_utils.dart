import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';
import 'package:pulumi/pulumi.dart';
import 'package:pulumi/src/monitor.dart' as monitorpkg;
import 'package:pulumi/src/pulumirpc/pulumi/resource.pbgrpc.dart';

import '../mocks/mock_engine.dart';
import 'monitor_test_utils.dart';

class CapturingRegisterMonitor extends BaseMonitor {
  RegisterResourceRequest? lastRegisterResourceRequest;
  final List<RegisterResourceRequest> registerResourceRequests = [];
  final List<String> requestedFeatures = [];
  bool supportsFeatureValue = true;

  @override
  Future<monitorpkg.SupportsFeatureResponse> supportsFeature(
    monitorpkg.SupportsFeatureRequest request,
  ) {
    requestedFeatures.add(request.id);
    return Future.value(
      monitorpkg.SupportsFeatureResponse(supportsFeatureValue),
    );
  }

  @override
  Future<RegisterResourceResponse> registerResource(
    Resource resource,
    RegisterResourceRequest request,
  ) async {
    lastRegisterResourceRequest = request;
    registerResourceRequests.add(request);
    return RegisterResourceResponse()
      ..urn = 'urn:pulumi:stack::project::${request.type}::${request.name}'
      ..id = '${request.name}-id'
      ..object = Struct();
  }
}

DeploymentImpl configureCapturedDeployment(CapturingRegisterMonitor monitor) {
  final deployment = DeploymentImpl.createForTesting(
    organizationName: 'org',
    projectName: 'project',
    stackName: 'stack',
    isDryRun: false,
    monitor: monitor,
    engine: MockEngine(),
  );
  DeploymentImpl.setTestInstance(deployment);
  return deployment;
}
