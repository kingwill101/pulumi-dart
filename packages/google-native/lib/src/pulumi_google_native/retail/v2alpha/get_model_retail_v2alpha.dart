import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_model_retail_v2alpha_args.dart';
import 'get_model_retail_v2alpha_result.dart';

/// Gets a model.
Future<GetModelRetailV2alphaResult> getModelRetailV2alpha(
  GetModelRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModelRetailV2alphaResult.fromMap(result);
}
