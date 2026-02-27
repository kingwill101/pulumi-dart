import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cutover_job_vmmigration_v1alpha1_args.dart';
import 'get_cutover_job_vmmigration_v1alpha1_result.dart';

/// Gets details of a single CutoverJob.
Future<GetCutoverJobVmmigrationV1alpha1Result> getCutoverJobVmmigrationV1alpha1(
  GetCutoverJobVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCutoverJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCutoverJobVmmigrationV1alpha1Result.fromMap(result);
}
