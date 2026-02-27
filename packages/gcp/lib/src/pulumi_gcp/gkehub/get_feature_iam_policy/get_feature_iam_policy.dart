import 'package:pulumi/pulumi.dart';
import 'get_feature_iam_policy_args.dart';
import 'get_feature_iam_policy_result.dart';

/// Retrieves the current IAM policy data for feature
Future<GetFeatureIamPolicyResult> getFeatureIamPolicy(
  GetFeatureIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gkehub/getFeatureIamPolicy:getFeatureIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyResult.fromMap(result);
}
