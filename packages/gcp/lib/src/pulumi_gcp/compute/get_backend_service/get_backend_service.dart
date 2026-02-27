import 'package:pulumi/pulumi.dart';
import 'get_backend_service_args.dart';
import 'get_backend_service_result.dart';

/// Provide access to a Backend Service's attribute. For more information
/// see [the official documentation](https://cloud.google.com/compute/docs/load-balancing/http/backend-service)
/// and the [API](https://cloud.google.com/compute/docs/reference/latest/backendServices).
Future<GetBackendServiceResult> getBackendService(
  GetBackendServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getBackendService:getBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult.fromMap(result);
}
