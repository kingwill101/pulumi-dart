import 'package:pulumi/pulumi.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';

/// Gets a Product.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}
