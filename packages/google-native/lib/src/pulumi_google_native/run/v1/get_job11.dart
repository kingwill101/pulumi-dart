import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args11.dart';
import 'get_job_result11.dart';

/// Get information about a job.
Future<GetJobResult11> getJob11(
  GetJobArgs11 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult11.fromMap(result);
}
