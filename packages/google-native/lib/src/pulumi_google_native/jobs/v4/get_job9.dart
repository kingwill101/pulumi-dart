import 'package:pulumi/pulumi.dart';
import 'get_job_args9.dart';
import 'get_job_result9.dart';

/// Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
Future<GetJobResult9> getJob9(
  GetJobArgs9 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult9.fromMap(result);
}
