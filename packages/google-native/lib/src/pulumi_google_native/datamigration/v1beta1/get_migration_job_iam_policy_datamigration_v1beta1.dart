import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_migration_job_iam_policy_datamigration_v1beta1_args.dart';
import 'get_migration_job_iam_policy_datamigration_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetMigrationJobIamPolicyDatamigrationV1beta1Result>
    getMigrationJobIamPolicyDatamigrationV1beta1(
  GetMigrationJobIamPolicyDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobIamPolicyDatamigrationV1beta1Result.fromMap(result);
}
