import 'package:pulumi/pulumi.dart';
import 'get_config_args.dart';
import 'get_config_result.dart';

Future<GetConfigResult> getConfig(
  GetConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:runtimeconfig/getConfig:getConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigResult.fromMap(result);
}
