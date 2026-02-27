import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_featurestore_entity_type_iam_policy_aiplatform_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result>
    getFeaturestoreEntityTypeIamPolicyAiplatformV1beta1(
  GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getFeaturestoreEntityTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFeaturestoreEntityTypeIamPolicyAiplatformV1beta1Result.fromMap(
      result);
}
