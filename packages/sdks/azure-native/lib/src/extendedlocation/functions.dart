import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_location_args.dart';
import 'get_custom_location_result.dart';
import 'get_resource_sync_rule_args.dart';
import 'get_resource_sync_rule_result.dart';

/// Gets the details of the customLocation with a specified resource group and name.
///
/// Uses Azure REST API version 2021-08-31-preview.
///
/// Other available API versions: 2021-08-15, 2024-09-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native extendedlocation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_extendedlocation_get_custom_location_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomLocationResult> getCustomLocation(
  GetCustomLocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:extendedlocation:getCustomLocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomLocationResult.fromMap(result);
}

pulumi.Output<GetCustomLocationResult> getCustomLocationOutput(
  GetCustomLocationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:extendedlocation:getCustomLocation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomLocationResult.fromMap);
}

/// Gets the details of the resourceSyncRule with a specified resource group, subscription id Custom Location resource name and Resource Sync Rule name.
///
/// Uses Azure REST API version 2021-08-31-preview.
///
/// Other available API versions: 2024-09-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native extendedlocation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_extendedlocation_get_resource_sync_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceSyncRuleResult> getResourceSyncRule(
  GetResourceSyncRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:extendedlocation:getResourceSyncRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceSyncRuleResult.fromMap(result);
}

pulumi.Output<GetResourceSyncRuleResult> getResourceSyncRuleOutput(
  GetResourceSyncRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:extendedlocation:getResourceSyncRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceSyncRuleResult.fromMap);
}
