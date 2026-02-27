import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partition_args.dart';
import 'get_partition_result.dart';

/// Get a metadata partition of an entity.
Future<GetPartitionResult> getPartition(
  GetPartitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getPartition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPartitionResult.fromMap(result);
}
