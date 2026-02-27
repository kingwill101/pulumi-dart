import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_backend_service_args2.dart';
import 'get_region_backend_service_result2.dart';

/// Returns the specified regional BackendService resource.
Future<GetRegionBackendServiceResult2> getRegionBackendService2(
  GetRegionBackendServiceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult2.fromMap(result);
}
