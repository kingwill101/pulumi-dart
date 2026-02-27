import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_entry_args.dart';
import 'get_access_entry_result.dart';

/// Access Entry Configurations for an EKS Cluster.
Future<GetAccessEntryResult> getAccessEntry(
  GetAccessEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:eks/getAccessEntry:getAccessEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessEntryResult.fromMap(result);
}
