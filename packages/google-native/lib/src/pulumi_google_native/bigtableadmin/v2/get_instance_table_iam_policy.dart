import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_table_iam_policy_args.dart';
import 'get_instance_table_iam_policy_result.dart';

/// Gets the access control policy for a Table or Backup resource. Returns an empty policy if the resource exists but does not have a policy set.
Future<GetInstanceTableIamPolicyResult> getInstanceTableIamPolicy(
  GetInstanceTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:bigtableadmin/v2:getInstanceTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTableIamPolicyResult.fromMap(result);
}
