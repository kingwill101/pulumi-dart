import 'package:pulumi/pulumi.dart';
import 'get_database_iam_policy_args.dart';
import 'get_database_iam_policy_result.dart';

/// Retrieves the current IAM policy data for a Spanner database.
///
/// ## example
Future<GetDatabaseIamPolicyResult> getDatabaseIamPolicy(
  GetDatabaseIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:spanner/getDatabaseIamPolicy:getDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseIamPolicyResult.fromMap(result);
}
