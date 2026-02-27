import 'package:pulumi/pulumi.dart';
import 'get_table_iam_policy_args2.dart';
import 'get_table_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for a Bigtable Table.
///
/// ## example
Future<GetTableIamPolicyResult2> getTableIamPolicy2(
  GetTableIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigtable/getTableIamPolicy:getTableIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTableIamPolicyResult2.fromMap(result);
}
