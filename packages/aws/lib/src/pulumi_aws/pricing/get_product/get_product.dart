import 'package:pulumi/pulumi.dart';
import 'get_product_args.dart';
import 'get_product_result.dart';

/// Use this data source to get the pricing information of all products in AWS.
/// This data source is only available in a us-east-1 or ap-south-1 provider.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:pricing/getProduct:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}
