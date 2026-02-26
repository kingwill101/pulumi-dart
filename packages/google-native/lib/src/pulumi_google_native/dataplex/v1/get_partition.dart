import 'package:pulumi/pulumi.dart';
import 'get_partition_args.dart';
import 'get_partition_result.dart';

/// Get a metadata partition of an entity.
Future<GetPartitionResult> getPartition(
  GetPartitionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getPartition',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPartitionResult.fromMap(result);
}
