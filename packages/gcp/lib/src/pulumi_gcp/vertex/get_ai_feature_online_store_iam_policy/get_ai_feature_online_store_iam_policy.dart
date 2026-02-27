import 'package:pulumi/pulumi.dart';
import 'get_ai_feature_online_store_iam_policy_args.dart';
import 'get_ai_feature_online_store_iam_policy_result.dart';

Future<GetAiFeatureOnlineStoreIamPolicyResult> getAiFeatureOnlineStoreIamPolicy(
  GetAiFeatureOnlineStoreIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreIamPolicy:getAiFeatureOnlineStoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreIamPolicyResult.fromMap(result);
}
