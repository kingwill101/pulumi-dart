import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_service_iam_policy_args.dart';
import 'get_metastore_service_iam_policy_result.dart';

/// Retrieves the current IAM policy data for service
Future<GetMetastoreServiceIamPolicyResult> getMetastoreServiceIamPolicy(
  GetMetastoreServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreServiceIamPolicy:getMetastoreServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreServiceIamPolicyResult.fromMap(result);
}
