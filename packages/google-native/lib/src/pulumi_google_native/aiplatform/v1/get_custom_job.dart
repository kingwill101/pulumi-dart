import 'package:pulumi/pulumi.dart' hide Config;
import 'get_custom_job_args.dart';
import 'get_custom_job_result.dart';

/// Gets a CustomJob.
Future<GetCustomJobResult> getCustomJob(
  GetCustomJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getCustomJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomJobResult.fromMap(result);
}
