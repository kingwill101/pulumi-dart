import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_args.dart';
import 'get_backend_service_result.dart';

/// Returns the specified BackendService resource.
Future<GetBackendServiceResult> getBackendService(
  GetBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult.fromMap(result);
}
