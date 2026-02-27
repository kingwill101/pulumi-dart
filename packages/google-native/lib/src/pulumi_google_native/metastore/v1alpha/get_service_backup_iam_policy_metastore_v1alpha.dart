import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_backup_iam_policy_metastore_v1alpha_args.dart';
import 'get_service_backup_iam_policy_metastore_v1alpha_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetServiceBackupIamPolicyMetastoreV1alphaResult>
    getServiceBackupIamPolicyMetastoreV1alpha(
  GetServiceBackupIamPolicyMetastoreV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1alpha:getServiceBackupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceBackupIamPolicyMetastoreV1alphaResult.fromMap(result);
}
