import 'package:pulumi/pulumi.dart';
import 'get_queue_iam_policy_args.dart';
import 'get_queue_iam_policy_result.dart';

/// Retrieves the current IAM policy data for queue
Future<GetQueueIamPolicyResult> getQueueIamPolicy(
  GetQueueIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudtasks/getQueueIamPolicy:getQueueIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyResult.fromMap(result);
}
