import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_manufacturing_data_service_args.dart';
import 'get_manufacturing_data_service_result.dart';
import 'list_manufacturing_data_service_available_versions_args.dart';
import 'list_manufacturing_data_service_available_versions_result.dart';

/// Get a MdsResource
///
/// Uses Azure REST API version 2025-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_manufacturingplatform_get_manufacturing_data_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManufacturingDataServiceResult> getManufacturingDataService(
  GetManufacturingDataServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:manufacturingplatform:getManufacturingDataService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManufacturingDataServiceResult.fromMap(result);
}

/// Returns the list of available versions
///
/// Uses Azure REST API version 2025-03-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_manufacturingplatform_list_manufacturing_data_service_available_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManufacturingDataServiceAvailableVersionsResult> listManufacturingDataServiceAvailableVersions(
  ListManufacturingDataServiceAvailableVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:manufacturingplatform:listManufacturingDataServiceAvailableVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManufacturingDataServiceAvailableVersionsResult.fromMap(result);
}
