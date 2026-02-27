import 'package:pulumi/pulumi.dart' hide Config;
import 'get_serving_config_args3.dart';
import 'get_serving_config_result3.dart';

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
Future<GetServingConfigResult3> getServingConfig3(
  GetServingConfigArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getServingConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServingConfigResult3.fromMap(result);
}
