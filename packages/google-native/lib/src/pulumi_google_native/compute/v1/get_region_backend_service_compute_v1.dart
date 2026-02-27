import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_compute_v1_args.dart';
import 'get_region_backend_service_compute_v1_result.dart';

/// Returns the specified regional BackendService resource.
Future<GetRegionBackendServiceComputeV1Result> getRegionBackendServiceComputeV1(
  GetRegionBackendServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceComputeV1Result.fromMap(result);
}
