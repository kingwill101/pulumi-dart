import 'package:pulumi/pulumi.dart';
import 'get_service_database_table_iam_policy_args2.dart';
import 'get_service_database_table_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceDatabaseTableIamPolicyResult2>
    getServiceDatabaseTableIamPolicy2(
  GetServiceDatabaseTableIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseTableIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseTableIamPolicyResult2.fromMap(result);
}
