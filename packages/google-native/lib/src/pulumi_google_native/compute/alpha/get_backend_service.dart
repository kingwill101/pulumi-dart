import 'package:pulumi/pulumi.dart';
import 'get_backend_service_args.dart';
import 'get_backend_service_result.dart';

/// Returns the specified BackendService resource.
Future<GetBackendServiceResult> getBackendService(
  GetBackendServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult.fromMap(result);
}
