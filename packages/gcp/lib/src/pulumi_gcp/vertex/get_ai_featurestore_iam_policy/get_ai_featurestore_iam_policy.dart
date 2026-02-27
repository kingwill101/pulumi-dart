import 'package:pulumi/pulumi.dart';
import 'get_ai_featurestore_iam_policy_args.dart';
import 'get_ai_featurestore_iam_policy_result.dart';

Future<GetAiFeaturestoreIamPolicyResult> getAiFeaturestoreIamPolicy(
  GetAiFeaturestoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeaturestoreIamPolicy:getAiFeaturestoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeaturestoreIamPolicyResult.fromMap(result);
}
