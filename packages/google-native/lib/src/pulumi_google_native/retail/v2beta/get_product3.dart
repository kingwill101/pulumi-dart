import 'package:pulumi/pulumi.dart';
import 'get_product_args3.dart';
import 'get_product_result3.dart';

/// Gets a Product.
Future<GetProductResult3> getProduct3(
  GetProductArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult3.fromMap(result);
}
