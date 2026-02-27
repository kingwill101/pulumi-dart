import 'package:pulumi/pulumi.dart';
import 'get_connection_iam_policy_args.dart';
import 'get_connection_iam_policy_result.dart';

/// Retrieves the current IAM policy data for connection
Future<GetConnectionIamPolicyResult> getConnectionIamPolicy(
  GetConnectionIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getConnectionIamPolicy:getConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult.fromMap(result);
}
