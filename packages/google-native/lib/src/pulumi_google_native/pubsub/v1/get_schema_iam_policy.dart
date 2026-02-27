import 'package:pulumi/pulumi.dart' hide Config;
import 'get_schema_iam_policy_args.dart';
import 'get_schema_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetSchemaIamPolicyResult> getSchemaIamPolicy(
  GetSchemaIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsub/v1:getSchemaIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSchemaIamPolicyResult.fromMap(result);
}
