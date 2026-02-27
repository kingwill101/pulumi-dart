import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_feature_group_iam_policy_args.dart';
import 'get_ai_feature_group_iam_policy_result.dart';

Future<GetAiFeatureGroupIamPolicyResult> getAiFeatureGroupIamPolicy(
  GetAiFeatureGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureGroupIamPolicy:getAiFeatureGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureGroupIamPolicyResult.fromMap(result);
}
