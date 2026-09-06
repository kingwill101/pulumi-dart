import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_creator_args.dart';
import 'get_creator_result.dart';
import 'get_private_atlase_args.dart';
import 'get_private_atlase_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'list_account_keys_args.dart';
import 'list_account_keys_result.dart';
import 'list_account_sas_args.dart';
import 'list_account_sas_result.dart';

/// Get a Maps Account.
///
/// Uses Azure REST API version 2024-07-01-preview.
///
/// Other available API versions: 2020-02-01-preview, 2021-02-01, 2021-07-01-preview, 2021-12-01-preview, 2023-06-01, 2023-08-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maps:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

pulumi.Output<GetAccountResult> getAccountOutput(
  GetAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:maps:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Get a Maps Creator resource.
///
/// Uses Azure REST API version 2024-07-01-preview.
///
/// Other available API versions: 2020-02-01-preview, 2021-02-01, 2021-07-01-preview, 2021-12-01-preview, 2023-06-01, 2023-08-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_get_creator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCreatorResult> getCreator(
  GetCreatorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maps:getCreator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCreatorResult.fromMap(result);
}

pulumi.Output<GetCreatorResult> getCreatorOutput(
  GetCreatorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:maps:getCreator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCreatorResult.fromMap);
}

/// [Deprecated] Get a Private Atlas resource.
///
/// Uses Azure REST API version 2020-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_get_private_atlase_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateAtlaseResult> getPrivateAtlase(
  GetPrivateAtlaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maps:getPrivateAtlase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateAtlaseResult.fromMap(result);
}

pulumi.Output<GetPrivateAtlaseResult> getPrivateAtlaseOutput(
  GetPrivateAtlaseArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:maps:getPrivateAtlase',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateAtlaseResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the Maps Account.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-12-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maps:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:maps:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Get the keys to use with the Maps APIs. A key is used to authenticate and authorize access to the Maps REST APIs. Only one key is needed at a time; two are given to provide seamless key regeneration.
///
/// Uses Azure REST API version 2024-07-01-preview.
///
/// Other available API versions: 2020-02-01-preview, 2021-02-01, 2021-07-01-preview, 2021-12-01-preview, 2023-06-01, 2023-08-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_list_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccountKeysResult> listAccountKeys(
  ListAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maps:listAccountKeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccountKeysResult.fromMap(result);
}

pulumi.Output<ListAccountKeysResult> listAccountKeysOutput(
  ListAccountKeysArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:maps:listAccountKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAccountKeysResult.fromMap);
}

/// Create and list an account shared access signature token. Use this SAS token for authentication to Azure Maps REST APIs through various Azure Maps SDKs. As prerequisite to create a SAS Token.
///
/// Prerequisites:
/// 1. Create or have an existing User Assigned Managed Identity in the same Azure region as the account.
/// 2. Create or update an Azure Maps account with the same Azure region as the User Assigned Managed Identity is placed.
///
/// Uses Azure REST API version 2024-07-01-preview.
///
/// Other available API versions: 2021-12-01-preview, 2023-06-01, 2023-08-01-preview, 2023-12-01-preview, 2024-01-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native maps [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_maps_list_account_sas_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccountSasResult> listAccountSas(
  ListAccountSasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:maps:listAccountSas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccountSasResult.fromMap(result);
}

pulumi.Output<ListAccountSasResult> listAccountSasOutput(
  ListAccountSasArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:maps:listAccountSas',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAccountSasResult.fromMap);
}
