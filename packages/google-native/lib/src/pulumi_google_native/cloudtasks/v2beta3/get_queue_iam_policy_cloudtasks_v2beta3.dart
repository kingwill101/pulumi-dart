import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_iam_policy_cloudtasks_v2beta3_args.dart';
import 'get_queue_iam_policy_cloudtasks_v2beta3_result.dart';

/// Gets the access control policy for a Queue. Returns an empty policy if the resource exists and does not have a policy set. Authorization requires the following [Google IAM](https://cloud.google.com/iam) permission on the specified resource parent: * `cloudtasks.queues.getIamPolicy`
Future<GetQueueIamPolicyCloudtasksV2beta3Result>
    getQueueIamPolicyCloudtasksV2beta3(
  GetQueueIamPolicyCloudtasksV2beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueueIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueIamPolicyCloudtasksV2beta3Result.fromMap(result);
}
