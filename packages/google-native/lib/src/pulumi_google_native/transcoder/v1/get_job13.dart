import 'package:pulumi/pulumi.dart';
import 'get_job_args13.dart';
import 'get_job_result13.dart';

/// Returns the job data.
Future<GetJobResult13> getJob13(
  GetJobArgs13 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:transcoder/v1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult13.fromMap(result);
}
