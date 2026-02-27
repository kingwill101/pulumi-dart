import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partition_args.dart';
import 'get_partition_result.dart';

/// Use this data source to lookup information about the current AWS partition in
/// which the provider is working.
Future<GetPartitionResult> getPartition(
  GetPartitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:index/getPartition:getPartition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartitionResult.fromMap(result);
}
