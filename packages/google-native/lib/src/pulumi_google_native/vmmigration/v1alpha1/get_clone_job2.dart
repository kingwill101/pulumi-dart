import 'package:pulumi/pulumi.dart';
import 'get_clone_job_args2.dart';
import 'get_clone_job_result2.dart';

/// Gets details of a single CloneJob.
Future<GetCloneJobResult2> getCloneJob2(
  GetCloneJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCloneJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloneJobResult2.fromMap(result);
}
