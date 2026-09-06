import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_azure_large_instance_args.dart';
import 'get_azure_large_instance_result.dart';
import 'get_azure_large_storage_instance_args.dart';
import 'get_azure_large_storage_instance_result.dart';

/// Gets an Azure Large Instance for the specified subscription, resource group,
/// and instance name.
///
/// Uses Azure REST API version 2024-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurelargeinstance_get_azure_large_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureLargeInstanceResult> getAzureLargeInstance(
  GetAzureLargeInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurelargeinstance:getAzureLargeInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureLargeInstanceResult.fromMap(result);
}

pulumi.Output<GetAzureLargeInstanceResult> getAzureLargeInstanceOutput(
  GetAzureLargeInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurelargeinstance:getAzureLargeInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureLargeInstanceResult.fromMap);
}

/// Gets an Azure Large Storage instance for the specified subscription, resource
/// group, and instance name.
///
/// Uses Azure REST API version 2024-08-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_azurelargeinstance_get_azure_large_storage_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureLargeStorageInstanceResult> getAzureLargeStorageInstance(
  GetAzureLargeStorageInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:azurelargeinstance:getAzureLargeStorageInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureLargeStorageInstanceResult.fromMap(result);
}

pulumi.Output<GetAzureLargeStorageInstanceResult> getAzureLargeStorageInstanceOutput(
  GetAzureLargeStorageInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:azurelargeinstance:getAzureLargeStorageInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureLargeStorageInstanceResult.fromMap);
}
