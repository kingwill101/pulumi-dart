import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args3.dart';
import 'get_job_result3.dart';

/// Gets a job.
Future<GetJobResult3> getJob3(
  GetJobArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudscheduler/v1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult3.fromMap(result);
}
