import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_compute_v1_args.dart';
import 'get_backend_service_compute_v1_result.dart';

/// Returns the specified BackendService resource.
Future<GetBackendServiceComputeV1Result> getBackendServiceComputeV1(
  GetBackendServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceComputeV1Result.fromMap(result);
}
