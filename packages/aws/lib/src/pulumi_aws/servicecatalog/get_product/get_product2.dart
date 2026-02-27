import 'package:pulumi/pulumi.dart';
import 'get_product_args2.dart';
import 'get_product_result2.dart';

/// Use this data source to retrieve information about a Service Catalog product.
///
/// > **NOTE:** A "provisioning artifact" is also known as a "version," and a "distributor" is also known as a "vendor."
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProductResult2> getProduct2(
  GetProductArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getProduct:getProduct',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProductResult2.fromMap(result);
}
