import 'package:pulumi/pulumi.dart' hide Config;
import 'get_serving_config_args.dart';
import 'get_serving_config_result.dart';

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
Future<GetServingConfigResult> getServingConfig(
  GetServingConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getServingConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServingConfigResult.fromMap(result);
}
