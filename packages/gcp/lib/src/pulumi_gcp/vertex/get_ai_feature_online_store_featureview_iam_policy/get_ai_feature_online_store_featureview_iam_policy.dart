import 'package:pulumi/pulumi.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_args.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_result.dart';

Future<GetAiFeatureOnlineStoreFeatureviewIamPolicyResult>
    getAiFeatureOnlineStoreFeatureviewIamPolicy(
  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreFeatureviewIamPolicy:getAiFeatureOnlineStoreFeatureviewIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreFeatureviewIamPolicyResult.fromMap(result);
}
