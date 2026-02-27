import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_database_iam_policy_args.dart';
import 'get_service_database_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceDatabaseIamPolicyResult> getServiceDatabaseIamPolicy(
  GetServiceDatabaseIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseIamPolicyResult.fromMap(result);
}
