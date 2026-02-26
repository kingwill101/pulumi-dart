import 'package:pulumi/pulumi.dart';
import 'get_product_args4.dart';
import 'get_product_result4.dart';

/// Gets information associated with a Product. Possible errors: * Returns NOT_FOUND if the Product does not exist.
Future<GetProductResult4> getProduct4(
  GetProductArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult4.fromMap(result);
}
