import 'package:pulumi/pulumi.dart';
import 'get_featurestore_entity_type_iam_policy_args2.dart';
import 'get_featurestore_entity_type_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFeaturestoreEntityTypeIamPolicyResult2>
    getFeaturestoreEntityTypeIamPolicy2(
  GetFeaturestoreEntityTypeIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyResult2.fromMap(result);
}
