import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_set_args.dart';
import 'get_product_set_result.dart';

/// Gets information associated with a ProductSet. Possible errors: * Returns NOT_FOUND if the ProductSet does not exist.
Future<GetProductSetResult> getProductSet(
  GetProductSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vision/v1:getProductSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductSetResult.fromMap(result);
}
