import 'package:pulumi/pulumi.dart';
import 'get_worker_configuration_args.dart';
import 'get_worker_configuration_result.dart';

/// Get information on an Amazon MSK Connect Worker Configuration.
Future<GetWorkerConfigurationResult> getWorkerConfiguration(
  GetWorkerConfigurationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getWorkerConfiguration:getWorkerConfiguration',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkerConfigurationResult.fromMap(result);
}
