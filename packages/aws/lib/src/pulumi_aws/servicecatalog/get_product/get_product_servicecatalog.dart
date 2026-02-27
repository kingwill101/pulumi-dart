import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_servicecatalog_args.dart';
import 'get_product_servicecatalog_result.dart';

/// Use this data source to retrieve information about a Service Catalog product.
///
/// > **NOTE:** A "provisioning artifact" is also known as a "version," and a "distributor" is also known as a "vendor."
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetProductServicecatalogResult> getProductServicecatalog(
  GetProductServicecatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getProduct:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductServicecatalogResult.fromMap(result);
}
