import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_iam_policy_args.dart';
import 'get_table_iam_policy_result.dart';

/// Retrieves the current IAM policy data for table
Future<GetTableIamPolicyResult> getTableIamPolicy(
  GetTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult.fromMap(result);
}
