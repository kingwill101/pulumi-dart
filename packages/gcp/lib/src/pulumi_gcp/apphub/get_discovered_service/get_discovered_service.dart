import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovered_service_args.dart';
import 'get_discovered_service_result.dart';

/// Get information about a discovered service from its uri.
Future<GetDiscoveredServiceResult> getDiscoveredService(
  GetDiscoveredServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredService:getDiscoveredService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredServiceResult.fromMap(result);
}
