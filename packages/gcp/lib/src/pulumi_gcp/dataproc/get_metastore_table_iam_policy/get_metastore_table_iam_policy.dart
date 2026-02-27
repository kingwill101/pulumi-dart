import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_table_iam_policy_args.dart';
import 'get_metastore_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for table
Future<GetMetastoreTableIamPolicyResult> getMetastoreTableIamPolicy(
  GetMetastoreTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreTableIamPolicy:getMetastoreTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMetastoreTableIamPolicyResult.fromMap(result);
}
