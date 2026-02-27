import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args7.dart';
import 'get_job_result7.dart';

/// Gets the resource representation for a job in a project.
Future<GetJobResult7> getJob7(
  GetJobArgs7 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult7.fromMap(result);
}
