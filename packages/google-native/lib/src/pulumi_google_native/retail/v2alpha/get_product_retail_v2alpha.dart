import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_retail_v2alpha_args.dart';
import 'get_product_retail_v2alpha_result.dart';

/// Gets a Product.
Future<GetProductRetailV2alphaResult> getProductRetailV2alpha(
  GetProductRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductRetailV2alphaResult.fromMap(result);
}
