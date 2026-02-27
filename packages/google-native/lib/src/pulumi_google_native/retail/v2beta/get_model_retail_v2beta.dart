import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_retail_v2beta_args.dart';
import 'get_model_retail_v2beta_result.dart';

/// Gets a model.
Future<GetModelRetailV2betaResult> getModelRetailV2beta(
  GetModelRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelRetailV2betaResult.fromMap(result);
}
