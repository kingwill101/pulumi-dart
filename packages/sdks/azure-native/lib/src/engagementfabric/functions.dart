import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_channel_args.dart';
import 'get_channel_result.dart';
import 'list_account_channel_types_args.dart';
import 'list_account_channel_types_result.dart';
import 'list_account_keys_args.dart';
import 'list_account_keys_result.dart';

/// The EngagementFabric account
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_engagementfabric_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:engagementfabric:getAccount',
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
    'azure-native:engagementfabric:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// The EngagementFabric channel
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_engagementfabric_get_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChannelResult> getChannel(
  GetChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:engagementfabric:getChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChannelResult.fromMap(result);
}

pulumi.Output<GetChannelResult> getChannelOutput(
  GetChannelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:engagementfabric:getChannel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChannelResult.fromMap);
}

/// List of the EngagementFabric channel descriptions
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_engagementfabric_list_account_channel_types_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccountChannelTypesResult> listAccountChannelTypes(
  ListAccountChannelTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:engagementfabric:listAccountChannelTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAccountChannelTypesResult.fromMap(result);
}

pulumi.Output<ListAccountChannelTypesResult> listAccountChannelTypesOutput(
  ListAccountChannelTypesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:engagementfabric:listAccountChannelTypes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAccountChannelTypesResult.fromMap);
}

/// The list of the EngagementFabric account keys
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_engagementfabric_list_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccountKeysResult> listAccountKeys(
  ListAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:engagementfabric:listAccountKeys',
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
    'azure-native:engagementfabric:listAccountKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAccountKeysResult.fromMap);
}
