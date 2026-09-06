import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_adccatalog_args.dart';
import 'get_adccatalog_result.dart';

/// The Get Azure Data Catalog Service operation retrieves a json representation of the data catalog.
///
/// Uses Azure REST API version 2016-03-30.
/// [args] Arguments passed to this invoke. {@macro pulumi_datacatalog_get_adccatalog_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADCCatalogResult> getADCCatalog(
  GetADCCatalogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datacatalog:getADCCatalog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADCCatalogResult.fromMap(result);
}

pulumi.Output<GetADCCatalogResult> getADCCatalogOutput(
  GetADCCatalogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datacatalog:getADCCatalog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADCCatalogResult.fromMap);
}
