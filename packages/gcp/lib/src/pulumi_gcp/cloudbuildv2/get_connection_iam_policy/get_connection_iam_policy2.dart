import 'package:pulumi/pulumi.dart';
import 'get_connection_iam_policy_args2.dart';
import 'get_connection_iam_policy_result2.dart';

/// Retrieves the current IAM policy data for connection
Future<GetConnectionIamPolicyResult2> getConnectionIamPolicy2(
  GetConnectionIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudbuildv2/getConnectionIamPolicy:getConnectionIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyResult2.fromMap(result);
}
