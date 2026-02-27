import 'package:pulumi/pulumi.dart';
import 'get_discovered_workload_args.dart';
import 'get_discovered_workload_result.dart';

/// Get information about a discovered workload from its uri.
Future<GetDiscoveredWorkloadResult> getDiscoveredWorkload(
  GetDiscoveredWorkloadArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:apphub/getDiscoveredWorkload:getDiscoveredWorkload',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDiscoveredWorkloadResult.fromMap(result);
}
