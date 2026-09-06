import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authentication_setting_args.dart';
import 'get_authentication_setting_result.dart';
import 'get_discovery_rule_args.dart';
import 'get_discovery_rule_result.dart';
import 'get_entity_args.dart';
import 'get_entity_history_args.dart';
import 'get_entity_history_result.dart';
import 'get_entity_result.dart';
import 'get_entity_signal_history_args.dart';
import 'get_entity_signal_history_result.dart';
import 'get_health_model_args.dart';
import 'get_health_model_result.dart';
import 'get_relationship_args.dart';
import 'get_relationship_result.dart';
import 'get_signal_definition_args.dart';
import 'get_signal_definition_result.dart';

/// Get a AuthenticationSetting
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_authentication_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthenticationSettingResult> getAuthenticationSetting(
  GetAuthenticationSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getAuthenticationSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthenticationSettingResult.fromMap(result);
}

pulumi.Output<GetAuthenticationSettingResult> getAuthenticationSettingOutput(
  GetAuthenticationSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getAuthenticationSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthenticationSettingResult.fromMap);
}

/// Get a DiscoveryRule
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_discovery_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiscoveryRuleResult> getDiscoveryRule(
  GetDiscoveryRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getDiscoveryRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiscoveryRuleResult.fromMap(result);
}

pulumi.Output<GetDiscoveryRuleResult> getDiscoveryRuleOutput(
  GetDiscoveryRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getDiscoveryRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDiscoveryRuleResult.fromMap);
}

/// Get a Entity
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityResult> getEntity(
  GetEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityResult.fromMap(result);
}

pulumi.Output<GetEntityResult> getEntityOutput(
  GetEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityResult.fromMap);
}

/// Retrieve the health state transition history for an entity
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_entity_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntityHistoryResult> getEntityHistory(
  GetEntityHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getEntityHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntityHistoryResult.fromMap(result);
}

pulumi.Output<GetEntityHistoryResult> getEntityHistoryOutput(
  GetEntityHistoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getEntityHistory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntityHistoryResult.fromMap);
}

/// Retrieve the time series history for a signal on an entity
///
/// Uses Azure REST API version 2026-01-01-preview.
///
/// Other available API versions: 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_entity_signal_history_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntitySignalHistoryResult> getEntitySignalHistory(
  GetEntitySignalHistoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getEntitySignalHistory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntitySignalHistoryResult.fromMap(result);
}

pulumi.Output<GetEntitySignalHistoryResult> getEntitySignalHistoryOutput(
  GetEntitySignalHistoryArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getEntitySignalHistory',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntitySignalHistoryResult.fromMap);
}

/// Get a HealthModel
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_health_model_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthModelResult> getHealthModel(
  GetHealthModelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getHealthModel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthModelResult.fromMap(result);
}

pulumi.Output<GetHealthModelResult> getHealthModelOutput(
  GetHealthModelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getHealthModel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHealthModelResult.fromMap);
}

/// Get a Relationship
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_relationship_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRelationshipResult> getRelationship(
  GetRelationshipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getRelationship',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRelationshipResult.fromMap(result);
}

pulumi.Output<GetRelationshipResult> getRelationshipOutput(
  GetRelationshipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getRelationship',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRelationshipResult.fromMap);
}

/// Get a SignalDefinition
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview, 2026-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudhealth_get_signal_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSignalDefinitionResult> getSignalDefinition(
  GetSignalDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cloudhealth:getSignalDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSignalDefinitionResult.fromMap(result);
}

pulumi.Output<GetSignalDefinitionResult> getSignalDefinitionOutput(
  GetSignalDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cloudhealth:getSignalDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSignalDefinitionResult.fromMap);
}
