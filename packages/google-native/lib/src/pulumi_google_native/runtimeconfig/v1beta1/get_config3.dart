import 'package:pulumi/pulumi.dart';
import 'get_config_args3.dart';
import 'get_config_result3.dart';

/// Gets information about a RuntimeConfig resource.
Future<GetConfigResult3> getConfig3(
  GetConfigArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:runtimeconfig/v1beta1:getConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigResult3.fromMap(result);
}
