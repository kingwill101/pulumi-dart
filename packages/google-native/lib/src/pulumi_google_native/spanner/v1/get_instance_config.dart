import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_config_args.dart';
import 'get_instance_config_result.dart';

/// Gets information about a particular instance configuration.
Future<GetInstanceConfigResult> getInstanceConfig(
  GetInstanceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getInstanceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceConfigResult.fromMap(result);
}
