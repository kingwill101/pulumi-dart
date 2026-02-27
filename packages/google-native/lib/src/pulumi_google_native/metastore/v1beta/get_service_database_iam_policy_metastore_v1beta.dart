import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_database_iam_policy_metastore_v1beta_args.dart';
import 'get_service_database_iam_policy_metastore_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceDatabaseIamPolicyMetastoreV1betaResult>
    getServiceDatabaseIamPolicyMetastoreV1beta(
  GetServiceDatabaseIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceDatabaseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceDatabaseIamPolicyMetastoreV1betaResult.fromMap(result);
}
