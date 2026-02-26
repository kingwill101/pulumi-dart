import 'package:pulumi/pulumi.dart';
import 'get_config_args2.dart';
import 'get_config_result2.dart';

/// Gets details of a single ApiConfig.
Future<GetConfigResult2> getConfig2(
  GetConfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigateway/v1beta:getConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigResult2.fromMap(result);
}
