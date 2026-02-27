import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_job_args.dart';
import 'get_custom_job_result.dart';

/// Gets a CustomJob.
Future<GetCustomJobResult> getCustomJob(
  GetCustomJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getCustomJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomJobResult.fromMap(result);
}
