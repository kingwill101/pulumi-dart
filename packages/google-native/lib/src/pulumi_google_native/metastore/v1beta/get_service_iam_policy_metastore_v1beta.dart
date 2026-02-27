import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_iam_policy_metastore_v1beta_args.dart';
import 'get_service_iam_policy_metastore_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceIamPolicyMetastoreV1betaResult>
    getServiceIamPolicyMetastoreV1beta(
  GetServiceIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceIamPolicyMetastoreV1betaResult.fromMap(result);
}
