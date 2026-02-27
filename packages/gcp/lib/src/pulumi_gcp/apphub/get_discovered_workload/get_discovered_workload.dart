import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_discovered_workload_args.dart';
import 'get_discovered_workload_result.dart';

/// Get information about a discovered workload from its uri.
Future<GetDiscoveredWorkloadResult> getDiscoveredWorkload(
  GetDiscoveredWorkloadArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredWorkload:getDiscoveredWorkload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredWorkloadResult.fromMap(result);
}
