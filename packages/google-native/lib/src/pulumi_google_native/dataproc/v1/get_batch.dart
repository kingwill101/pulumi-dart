import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_batch_args.dart';
import 'get_batch_result.dart';

/// Gets the batch workload resource representation.
Future<GetBatchResult> getBatch(
  GetBatchArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getBatch',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBatchResult.fromMap(result);
}
