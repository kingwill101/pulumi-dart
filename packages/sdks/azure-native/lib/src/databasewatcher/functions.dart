import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_rule_resource_args.dart';
import 'get_alert_rule_resource_result.dart';
import 'get_shared_private_link_resource_args.dart';
import 'get_shared_private_link_resource_result.dart';
import 'get_target_args.dart';
import 'get_target_result.dart';
import 'get_watcher_args.dart';
import 'get_watcher_result.dart';

/// Get a AlertRuleResource
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2024-07-19-preview, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databasewatcher [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasewatcher_get_alert_rule_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAlertRuleResourceResult> getAlertRuleResource(
  GetAlertRuleResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasewatcher:getAlertRuleResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAlertRuleResourceResult.fromMap(result);
}

pulumi.Output<GetAlertRuleResourceResult> getAlertRuleResourceOutput(
  GetAlertRuleResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:databasewatcher:getAlertRuleResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAlertRuleResourceResult.fromMap);
}

/// Get a SharedPrivateLinkResource
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-07-19-preview, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databasewatcher [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasewatcher_get_shared_private_link_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedPrivateLinkResourceResult> getSharedPrivateLinkResource(
  GetSharedPrivateLinkResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasewatcher:getSharedPrivateLinkResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedPrivateLinkResourceResult.fromMap(result);
}

pulumi.Output<GetSharedPrivateLinkResourceResult> getSharedPrivateLinkResourceOutput(
  GetSharedPrivateLinkResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:databasewatcher:getSharedPrivateLinkResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSharedPrivateLinkResourceResult.fromMap);
}

/// Get a Target
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-07-19-preview, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databasewatcher [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasewatcher_get_target_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetResult> getTarget(
  GetTargetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasewatcher:getTarget',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetResult.fromMap(result);
}

pulumi.Output<GetTargetResult> getTargetOutput(
  GetTargetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:databasewatcher:getTarget',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetResult.fromMap);
}

/// Get a Watcher
///
/// Uses Azure REST API version 2024-10-01-preview.
///
/// Other available API versions: 2023-09-01-preview, 2024-07-19-preview, 2025-01-02. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native databasewatcher [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasewatcher_get_watcher_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWatcherResult> getWatcher(
  GetWatcherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasewatcher:getWatcher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWatcherResult.fromMap(result);
}

pulumi.Output<GetWatcherResult> getWatcherOutput(
  GetWatcherArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:databasewatcher:getWatcher',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWatcherResult.fromMap);
}
