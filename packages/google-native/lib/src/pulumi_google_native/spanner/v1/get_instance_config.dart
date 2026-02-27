import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_config_args.dart';
import 'get_instance_config_result.dart';

/// Gets information about a particular instance configuration.
Future<GetInstanceConfigResult> getInstanceConfig(
  GetInstanceConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceConfigResult.fromMap(result);
}
