import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_backend_service_args.dart';
import 'get_region_backend_service_result.dart';

/// Returns the specified regional BackendService resource.
Future<GetRegionBackendServiceResult> getRegionBackendService(
  GetRegionBackendServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionBackendService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult.fromMap(result);
}
