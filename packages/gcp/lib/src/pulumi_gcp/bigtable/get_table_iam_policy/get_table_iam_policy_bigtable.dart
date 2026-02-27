import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_table_iam_policy_bigtable_args.dart';
import 'get_table_iam_policy_bigtable_result.dart';

/// Retrieves the current IAM policy data for a Bigtable Table.
///
/// ## example
Future<GetTableIamPolicyBigtableResult> getTableIamPolicyBigtable(
  GetTableIamPolicyBigtableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigtable/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyBigtableResult.fromMap(result);
}
