import 'package:pulumi/pulumi.dart';
import 'get_schema_iam_policy_args.dart';
import 'get_schema_iam_policy_result.dart';

/// Retrieves the current IAM policy data for schema
Future<GetSchemaIamPolicyResult> getSchemaIamPolicy(
  GetSchemaIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:pubsub/getSchemaIamPolicy:getSchemaIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchemaIamPolicyResult.fromMap(result);
}
