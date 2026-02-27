import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_federation_iam_policy_metastore_v1alpha_args.dart';
import 'get_federation_iam_policy_metastore_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetFederationIamPolicyMetastoreV1alphaResult>
    getFederationIamPolicyMetastoreV1alpha(
  GetFederationIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getFederationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFederationIamPolicyMetastoreV1alphaResult.fromMap(result);
}
