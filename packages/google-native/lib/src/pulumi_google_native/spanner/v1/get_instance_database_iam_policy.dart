import 'package:pulumi/pulumi.dart';
import 'get_instance_database_iam_policy_args.dart';
import 'get_instance_database_iam_policy_result.dart';

/// Gets the access control policy for a database or backup resource. Returns an empty policy if a database or backup exists but does not have a policy set. Authorization requires `spanner.databases.getIamPolicy` permission on resource. For backups, authorization requires `spanner.backups.getIamPolicy` permission on resource.
Future<GetInstanceDatabaseIamPolicyResult> getInstanceDatabaseIamPolicy(
  GetInstanceDatabaseIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceDatabaseIamPolicyResult.fromMap(result);
}
