import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_backend_service_args3.dart';
import 'get_region_backend_service_result3.dart';

/// Returns the specified regional BackendService resource.
Future<GetRegionBackendServiceResult3> getRegionBackendService3(
  GetRegionBackendServiceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult3.fromMap(result);
}
