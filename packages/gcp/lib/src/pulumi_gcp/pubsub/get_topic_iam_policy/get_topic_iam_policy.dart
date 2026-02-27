import 'package:pulumi/pulumi.dart';
import 'get_topic_iam_policy_args.dart';
import 'get_topic_iam_policy_result.dart';

/// Retrieves the current IAM policy data for topic
Future<GetTopicIamPolicyResult> getTopicIamPolicy(
  GetTopicIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getTopicIamPolicy:getTopicIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyResult.fromMap(result);
}
