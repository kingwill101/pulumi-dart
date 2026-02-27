import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serving_config_retail_v2beta_args.dart';
import 'get_serving_config_retail_v2beta_result.dart';

/// Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not exist.
Future<GetServingConfigRetailV2betaResult> getServingConfigRetailV2beta(
  GetServingConfigRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getServingConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServingConfigRetailV2betaResult.fromMap(result);
}
