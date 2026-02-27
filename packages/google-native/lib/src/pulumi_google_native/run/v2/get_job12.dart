import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args12.dart';
import 'get_job_result12.dart';

/// Gets information about a Job.
Future<GetJobResult12> getJob12(
  GetJobArgs12 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult12.fromMap(result);
}
