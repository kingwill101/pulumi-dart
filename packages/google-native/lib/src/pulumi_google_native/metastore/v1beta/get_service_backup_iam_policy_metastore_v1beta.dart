import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_backup_iam_policy_metastore_v1beta_args.dart';
import 'get_service_backup_iam_policy_metastore_v1beta_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBackupIamPolicyMetastoreV1betaResult>
    getServiceBackupIamPolicyMetastoreV1beta(
  GetServiceBackupIamPolicyMetastoreV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getServiceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyMetastoreV1betaResult.fromMap(result);
}
