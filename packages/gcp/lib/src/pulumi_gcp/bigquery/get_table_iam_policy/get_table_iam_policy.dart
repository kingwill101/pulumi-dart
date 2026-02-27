import 'package:pulumi/pulumi.dart';
import 'get_table_iam_policy_args.dart';
import 'get_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for table
Future<GetTableIamPolicyResult> getTableIamPolicy(
  GetTableIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult.fromMap(result);
}
