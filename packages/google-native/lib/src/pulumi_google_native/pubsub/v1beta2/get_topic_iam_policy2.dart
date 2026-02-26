import 'package:pulumi/pulumi.dart';
import 'get_topic_iam_policy_args2.dart';
import 'get_topic_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetTopicIamPolicyResult2> getTopicIamPolicy2(
  GetTopicIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1beta2:getTopicIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyResult2.fromMap(result);
}
