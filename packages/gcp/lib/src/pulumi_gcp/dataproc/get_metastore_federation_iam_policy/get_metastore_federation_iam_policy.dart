import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_federation_iam_policy_args.dart';
import 'get_metastore_federation_iam_policy_result.dart';

/// Retrieves the current IAM policy data for federation
Future<GetMetastoreFederationIamPolicyResult> getMetastoreFederationIamPolicy(
  GetMetastoreFederationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreFederationIamPolicy:getMetastoreFederationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreFederationIamPolicyResult.fromMap(result);
}
