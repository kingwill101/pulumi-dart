import 'package:pulumi/pulumi.dart' hide Config;
import 'get_feature_iam_policy_args2.dart';
import 'get_feature_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFeatureIamPolicyResult2> getFeatureIamPolicy2(
  GetFeatureIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkehub/v1alpha:getFeatureIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeatureIamPolicyResult2.fromMap(result);
}
