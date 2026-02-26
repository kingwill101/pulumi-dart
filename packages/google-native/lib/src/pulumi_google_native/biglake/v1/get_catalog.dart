import 'package:pulumi/pulumi.dart';
import 'get_catalog_args.dart';
import 'get_catalog_result.dart';

/// Gets the catalog specified by the resource name.
Future<GetCatalogResult> getCatalog(
  GetCatalogArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:biglake/v1:getCatalog',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCatalogResult.fromMap(result);
}
