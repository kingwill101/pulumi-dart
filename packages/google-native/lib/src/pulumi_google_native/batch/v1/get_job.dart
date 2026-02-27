import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args.dart';
import 'get_job_result.dart';

/// Get a Job specified by its resource name.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:batch/v1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}
