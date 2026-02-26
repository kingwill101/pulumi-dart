import 'package:pulumi/pulumi.dart';
import 'get_featurestore_iam_policy_args2.dart';
import 'get_featurestore_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFeaturestoreIamPolicyResult2> getFeaturestoreIamPolicy2(
  GetFeaturestoreIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreIamPolicyResult2.fromMap(result);
}
