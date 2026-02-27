import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_feature_online_store_iam_policy_args.dart';
import 'get_ai_feature_online_store_iam_policy_result.dart';

Future<GetAiFeatureOnlineStoreIamPolicyResult> getAiFeatureOnlineStoreIamPolicy(
  GetAiFeatureOnlineStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreIamPolicy:getAiFeatureOnlineStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreIamPolicyResult.fromMap(result);
}
