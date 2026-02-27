import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_topic_iam_policy_args.dart';
import 'get_topic_iam_policy_result.dart';

/// Retrieves the current IAM policy data for topic
Future<GetTopicIamPolicyResult> getTopicIamPolicy(
  GetTopicIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getTopicIamPolicy:getTopicIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicIamPolicyResult.fromMap(result);
}
