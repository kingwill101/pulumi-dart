import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_args.dart';
import 'get_region_backend_service_result.dart';

/// Get information about a Regional Backend Service. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/load-balancing/internal/backend-service) and
/// [API](https://cloud.google.com/compute/docs/reference/rest/beta/regionBackendServices).
Future<GetRegionBackendServiceResult> getRegionBackendService(
  GetRegionBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionBackendService:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult.fromMap(result);
}
