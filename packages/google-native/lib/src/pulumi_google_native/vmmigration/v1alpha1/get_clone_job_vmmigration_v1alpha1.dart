import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clone_job_vmmigration_v1alpha1_args.dart';
import 'get_clone_job_vmmigration_v1alpha1_result.dart';

/// Gets details of a single CloneJob.
Future<GetCloneJobVmmigrationV1alpha1Result> getCloneJobVmmigrationV1alpha1(
  GetCloneJobVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCloneJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloneJobVmmigrationV1alpha1Result.fromMap(result);
}
