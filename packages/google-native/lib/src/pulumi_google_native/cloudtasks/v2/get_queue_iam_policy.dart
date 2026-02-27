import 'package:pulumi/pulumi.dart' hide Config;
import 'get_queue_iam_policy_args.dart';
import 'get_queue_iam_policy_result.dart';

/// Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`
Future<GetQueueIamPolicyResult> getQueueIamPolicy(
  GetQueueIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getQueueIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyResult.fromMap(result);
}
