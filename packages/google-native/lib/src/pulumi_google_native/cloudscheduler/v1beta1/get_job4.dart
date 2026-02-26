import 'package:pulumi/pulumi.dart';
import 'get_job_args4.dart';
import 'get_job_result4.dart';

/// Gets a job.
Future<GetJobResult4> getJob4(
  GetJobArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudscheduler/v1beta1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult4.fromMap(result);
}
