import 'package:pulumi/pulumi.dart' hide Config;
import 'get_serving_config_args2.dart';
import 'get_serving_config_result2.dart';

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
Future<GetServingConfigResult2> getServingConfig2(
  GetServingConfigArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getServingConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServingConfigResult2.fromMap(result);
}
