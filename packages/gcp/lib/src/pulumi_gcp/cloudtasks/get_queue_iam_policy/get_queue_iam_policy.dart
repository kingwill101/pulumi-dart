import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_iam_policy_args.dart';
import 'get_queue_iam_policy_result.dart';

/// Retrieves the current IAM policy data for queue
Future<GetQueueIamPolicyResult> getQueueIamPolicy(
  GetQueueIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudtasks/getQueueIamPolicy:getQueueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyResult.fromMap(result);
}
