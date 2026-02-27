import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_configuration_args.dart';
import 'get_worker_configuration_result.dart';

/// Get information on an Amazon MSK Connect Worker Configuration.
Future<GetWorkerConfigurationResult> getWorkerConfiguration(
  GetWorkerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getWorkerConfiguration:getWorkerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkerConfigurationResult.fromMap(result);
}
