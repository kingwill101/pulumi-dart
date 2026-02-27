import 'package:pulumi/pulumi.dart' hide Config;
import 'get_job_args6.dart';
import 'get_job_result6.dart';

/// Gets the resource representation for a job in a project.
Future<GetJobResult6> getJob6(
  GetJobArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult6.fromMap(result);
}
