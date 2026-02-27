import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_api_product_args.dart';
import 'get_api_product_result.dart';

/// Gets configuration details for an API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.
Future<GetApiProductResult> getApiProduct(
  GetApiProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApiProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiProductResult.fromMap(result);
}
