import 'package:pulumi/pulumi.dart';
import 'get_queue_iam_policy_args3.dart';
import 'get_queue_iam_policy_result3.dart';

/// Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`
Future<GetQueueIamPolicyResult3> getQueueIamPolicy3(
  GetQueueIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueueIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyResult3.fromMap(result);
}
