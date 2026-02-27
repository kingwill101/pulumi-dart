import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_database_table_iam_policy_args.dart';
import 'get_service_database_table_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceDatabaseTableIamPolicyResult> getServiceDatabaseTableIamPolicy(
  GetServiceDatabaseTableIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceDatabaseTableIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseTableIamPolicyResult.fromMap(result);
}
