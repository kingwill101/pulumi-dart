import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cutover_job_args.dart';
import 'get_cutover_job_result.dart';

/// Gets details of a single CutoverJob.
Future<GetCutoverJobResult> getCutoverJob(
  GetCutoverJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCutoverJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCutoverJobResult.fromMap(result);
}
