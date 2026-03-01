import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_controller_details_args.dart';
import 'get_controller_details_result.dart';
import 'get_delegated_subnet_service_details_args.dart';
import 'get_delegated_subnet_service_details_result.dart';
import 'get_orchestrator_instance_service_details_args.dart';
import 'get_orchestrator_instance_service_details_result.dart';

/// Gets details about the specified dnc controller.
///
/// Uses Azure REST API version 2023-06-27-preview.
///
/// Other available API versions: 2021-03-15, 2023-05-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native delegatednetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_delegatednetwork_get_controller_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControllerDetailsResult> getControllerDetails(
  GetControllerDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:delegatednetwork:getControllerDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControllerDetailsResult.fromMap(result);
}

/// Gets details about the specified dnc DelegatedSubnet Link.
///
/// Uses Azure REST API version 2023-06-27-preview.
///
/// Other available API versions: 2021-03-15, 2023-05-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native delegatednetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_delegatednetwork_get_delegated_subnet_service_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDelegatedSubnetServiceDetailsResult> getDelegatedSubnetServiceDetails(
  GetDelegatedSubnetServiceDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:delegatednetwork:getDelegatedSubnetServiceDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegatedSubnetServiceDetailsResult.fromMap(result);
}

/// Gets details about the orchestrator instance.
///
/// Uses Azure REST API version 2023-06-27-preview.
///
/// Other available API versions: 2021-03-15, 2023-05-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native delegatednetwork [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_delegatednetwork_get_orchestrator_instance_service_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrchestratorInstanceServiceDetailsResult> getOrchestratorInstanceServiceDetails(
  GetOrchestratorInstanceServiceDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:delegatednetwork:getOrchestratorInstanceServiceDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrchestratorInstanceServiceDetailsResult.fromMap(result);
}
