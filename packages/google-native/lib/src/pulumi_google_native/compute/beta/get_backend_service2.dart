import 'package:pulumi/pulumi.dart';
import 'get_backend_service_args2.dart';
import 'get_backend_service_result2.dart';

/// Returns the specified BackendService resource.
Future<GetBackendServiceResult2> getBackendService2(
  GetBackendServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult2.fromMap(result);
}
