import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_retail_v2beta_args.dart';
import 'get_product_retail_v2beta_result.dart';

/// Gets a Product.
Future<GetProductRetailV2betaResult> getProductRetailV2beta(
  GetProductRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductRetailV2betaResult.fromMap(result);
}
