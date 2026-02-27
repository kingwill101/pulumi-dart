import 'package:pulumi/pulumi.dart';
import 'get_discovered_service_args.dart';
import 'get_discovered_service_result.dart';

/// Get information about a discovered service from its uri.
Future<GetDiscoveredServiceResult> getDiscoveredService(
  GetDiscoveredServiceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredService:getDiscoveredService',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredServiceResult.fromMap(result);
}
