import 'package:pulumi/pulumi.dart';
import 'get_ai_feature_group_iam_policy_args.dart';
import 'get_ai_feature_group_iam_policy_result.dart';

Future<GetAiFeatureGroupIamPolicyResult> getAiFeatureGroupIamPolicy(
  GetAiFeatureGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureGroupIamPolicy:getAiFeatureGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureGroupIamPolicyResult.fromMap(result);
}
