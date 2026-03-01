import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agri_service_args.dart';
import 'get_agri_service_result.dart';
import 'list_agri_service_available_solutions_args.dart';
import 'list_agri_service_available_solutions_result.dart';

/// Get a AgriServiceResource
///
/// Uses Azure REST API version 2024-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agricultureplatform_get_agri_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgriServiceResult> getAgriService(
  GetAgriServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agricultureplatform:getAgriService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgriServiceResult.fromMap(result);
}

/// Returns the list of available agri solutions.
///
/// Uses Azure REST API version 2024-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_agricultureplatform_list_agri_service_available_solutions_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgriServiceAvailableSolutionsResult> listAgriServiceAvailableSolutions(
  ListAgriServiceAvailableSolutionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:agricultureplatform:listAgriServiceAvailableSolutions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgriServiceAvailableSolutionsResult.fromMap(result);
}
