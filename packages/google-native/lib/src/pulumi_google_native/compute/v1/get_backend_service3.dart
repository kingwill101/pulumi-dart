import 'package:pulumi/pulumi.dart';
import 'get_backend_service_args3.dart';
import 'get_backend_service_result3.dart';

/// Returns the specified BackendService resource.
Future<GetBackendServiceResult3> getBackendService3(
  GetBackendServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult3.fromMap(result);
}
