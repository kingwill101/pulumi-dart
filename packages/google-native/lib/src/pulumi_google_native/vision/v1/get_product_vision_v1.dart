import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_vision_v1_args.dart';
import 'get_product_vision_v1_result.dart';

/// Gets information associated with a Product. Possible errors: * Returns NOT_FOUND if the Product does not exist.
Future<GetProductVisionV1Result> getProductVisionV1(
  GetProductVisionV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductVisionV1Result.fromMap(result);
}
