import 'package:pulumi/pulumi.dart';
import 'get_job_args8.dart';
import 'get_job_result8.dart';

/// Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
Future<GetJobResult8> getJob8(
  GetJobArgs8 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v3:getJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobResult8.fromMap(result);
}
