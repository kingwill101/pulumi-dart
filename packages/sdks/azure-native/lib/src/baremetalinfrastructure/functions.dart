import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_bare_metal_instance_args.dart';
import 'get_azure_bare_metal_instance_result.dart';
import 'get_azure_bare_metal_storage_instance_args.dart';
import 'get_azure_bare_metal_storage_instance_result.dart';

/// Gets an Azure Bare Metal Instance for the specified subscription, resource group, and instance name.
///
/// Uses Azure REST API version 2024-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_baremetalinfrastructure_get_azure_bare_metal_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureBareMetalInstanceResult> getAzureBareMetalInstance(
  GetAzureBareMetalInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:baremetalinfrastructure:getAzureBareMetalInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureBareMetalInstanceResult.fromMap(result);
}

pulumi.Output<GetAzureBareMetalInstanceResult> getAzureBareMetalInstanceOutput(
  GetAzureBareMetalInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:baremetalinfrastructure:getAzureBareMetalInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureBareMetalInstanceResult.fromMap);
}

/// Gets an Azure Bare Metal Storage instance for the specified subscription, resource group, and instance name.
///
/// Uses Azure REST API version 2024-08-01-preview.
///
/// Other available API versions: 2023-04-06, 2023-08-04-preview, 2023-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native baremetalinfrastructure [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_baremetalinfrastructure_get_azure_bare_metal_storage_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureBareMetalStorageInstanceResult> getAzureBareMetalStorageInstance(
  GetAzureBareMetalStorageInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:baremetalinfrastructure:getAzureBareMetalStorageInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureBareMetalStorageInstanceResult.fromMap(result);
}

pulumi.Output<GetAzureBareMetalStorageInstanceResult> getAzureBareMetalStorageInstanceOutput(
  GetAzureBareMetalStorageInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:baremetalinfrastructure:getAzureBareMetalStorageInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureBareMetalStorageInstanceResult.fromMap);
}
