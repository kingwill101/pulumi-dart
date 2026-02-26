import 'package:pulumi/pulumi.dart';
import 'get_job_args10.dart';
import 'get_job_result10.dart';

/// Describes a job.
Future<GetJobResult10> getJob10(
  GetJobArgs10 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:ml/v1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult10.fromMap(result);
}
