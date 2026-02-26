import 'package:pulumi/pulumi.dart';
import 'get_featurestore_entity_type_iam_policy_args.dart';
import 'get_featurestore_entity_type_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFeaturestoreEntityTypeIamPolicyResult>
    getFeaturestoreEntityTypeIamPolicy(
  GetFeaturestoreEntityTypeIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyResult.fromMap(result);
}
