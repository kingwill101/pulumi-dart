import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_backend_service_args.dart';
import 'get_region_backend_service_result.dart';

/// Returns the specified regional BackendService resource.
Future<GetRegionBackendServiceResult> getRegionBackendService(
  GetRegionBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult.fromMap(result);
}
