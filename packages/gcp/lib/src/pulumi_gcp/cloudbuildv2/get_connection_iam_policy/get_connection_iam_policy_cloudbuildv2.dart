import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connection_iam_policy_cloudbuildv2_args.dart';
import 'get_connection_iam_policy_cloudbuildv2_result.dart';

/// Retrieves the current IAM policy data for connection
Future<GetConnectionIamPolicyCloudbuildv2Result>
    getConnectionIamPolicyCloudbuildv2(
  GetConnectionIamPolicyCloudbuildv2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudbuildv2/getConnectionIamPolicy:getConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionIamPolicyCloudbuildv2Result.fromMap(result);
}
