import 'package:pulumi/pulumi.dart';
import 'get_metastore_database_iam_policy_args.dart';
import 'get_metastore_database_iam_policy_result.dart';

/// Retrieves the current IAM policy data for database
Future<GetMetastoreDatabaseIamPolicyResult> getMetastoreDatabaseIamPolicy(
  GetMetastoreDatabaseIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataproc/getMetastoreDatabaseIamPolicy:getMetastoreDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMetastoreDatabaseIamPolicyResult.fromMap(result);
}
