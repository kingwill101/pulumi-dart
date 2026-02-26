import 'package:pulumi/pulumi.dart';
import 'get_cutover_job_args2.dart';
import 'get_cutover_job_result2.dart';

/// Gets details of a single CutoverJob.
Future<GetCutoverJobResult2> getCutoverJob2(
  GetCutoverJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCutoverJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCutoverJobResult2.fromMap(result);
}
