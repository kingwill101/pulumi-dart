import 'package:pulumi/pulumi.dart' hide Config;
import 'get_service_database_iam_policy_args2.dart';
import 'get_service_database_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceDatabaseIamPolicyResult2> getServiceDatabaseIamPolicy2(
  GetServiceDatabaseIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseIamPolicyResult2.fromMap(result);
}
