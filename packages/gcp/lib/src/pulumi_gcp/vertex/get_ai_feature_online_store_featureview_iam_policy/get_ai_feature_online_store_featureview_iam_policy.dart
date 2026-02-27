import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ai_feature_online_store_featureview_iam_policy_args.dart';
import 'get_ai_feature_online_store_featureview_iam_policy_result.dart';

Future<GetAiFeatureOnlineStoreFeatureviewIamPolicyResult>
    getAiFeatureOnlineStoreFeatureviewIamPolicy(
  GetAiFeatureOnlineStoreFeatureviewIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vertex/getAiFeatureOnlineStoreFeatureviewIamPolicy:getAiFeatureOnlineStoreFeatureviewIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAiFeatureOnlineStoreFeatureviewIamPolicyResult.fromMap(result);
}
