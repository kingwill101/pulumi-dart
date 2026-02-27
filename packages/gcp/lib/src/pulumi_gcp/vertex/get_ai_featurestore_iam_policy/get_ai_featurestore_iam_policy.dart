import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_featurestore_iam_policy_args.dart';
import 'get_ai_featurestore_iam_policy_result.dart';

Future<GetAiFeaturestoreIamPolicyResult> getAiFeaturestoreIamPolicy(
  GetAiFeaturestoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreIamPolicy:getAiFeaturestoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeaturestoreIamPolicyResult.fromMap(result);
}
