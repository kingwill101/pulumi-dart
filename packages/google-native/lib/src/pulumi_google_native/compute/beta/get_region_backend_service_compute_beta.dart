import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_compute_beta_args.dart';
import 'get_region_backend_service_compute_beta_result.dart';

/// Returns the specified regional BackendService resource.
Future<GetRegionBackendServiceComputeBetaResult>
    getRegionBackendServiceComputeBeta(
  GetRegionBackendServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceComputeBetaResult.fromMap(result);
}
