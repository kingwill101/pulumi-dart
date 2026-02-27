import 'package:pulumi/pulumi.dart' hide Config;
import 'get_custom_job_args2.dart';
import 'get_custom_job_result2.dart';

/// Gets a CustomJob.
Future<GetCustomJobResult2> getCustomJob2(
  GetCustomJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getCustomJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomJobResult2.fromMap(result);
}
