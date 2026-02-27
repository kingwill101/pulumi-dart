import 'package:pulumi/pulumi.dart' hide Config;
import 'get_product_args2.dart';
import 'get_product_result2.dart';

/// Gets a Product.
Future<GetProductResult2> getProduct2(
  GetProductArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult2.fromMap(result);
}
