import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_iam_policy_gkehub_v1beta_args.dart';
import 'get_feature_iam_policy_gkehub_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFeatureIamPolicyGkehubV1betaResult> getFeatureIamPolicyGkehubV1beta(
  GetFeatureIamPolicyGkehubV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1beta:getFeatureIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyGkehubV1betaResult.fromMap(result);
}
