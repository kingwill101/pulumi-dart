import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_capability_host_args.dart';
import 'get_account_capability_host_result.dart';
import 'get_account_connection_args.dart';
import 'get_account_connection_result.dart';
import 'get_account_result.dart';
import 'get_agent_application_args.dart';
import 'get_agent_application_result.dart';
import 'get_agent_deployment_args.dart';
import 'get_agent_deployment_result.dart';
import 'get_commitment_plan_args.dart';
import 'get_commitment_plan_association_args.dart';
import 'get_commitment_plan_association_result.dart';
import 'get_commitment_plan_result.dart';
import 'get_deployment_args.dart';
import 'get_deployment_result.dart';
import 'get_encryption_scope_args.dart';
import 'get_encryption_scope_result.dart';
import 'get_managed_network_setting_args.dart';
import 'get_managed_network_setting_result.dart';
import 'get_outbound_rule_args.dart';
import 'get_outbound_rule_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_project_args.dart';
import 'get_project_capability_host_args.dart';
import 'get_project_capability_host_result.dart';
import 'get_project_connection_args.dart';
import 'get_project_connection_result.dart';
import 'get_project_result.dart';
import 'get_rai_blocklist_args.dart';
import 'get_rai_blocklist_item_args.dart';
import 'get_rai_blocklist_item_result.dart';
import 'get_rai_blocklist_result.dart';
import 'get_rai_external_safety_provider_args.dart';
import 'get_rai_external_safety_provider_result.dart';
import 'get_rai_policy_args.dart';
import 'get_rai_policy_result.dart';
import 'get_rai_tool_label_args.dart';
import 'get_rai_tool_label_result.dart';
import 'get_rai_topic_args.dart';
import 'get_rai_topic_result.dart';
import 'get_shared_commitment_plan_args.dart';
import 'get_shared_commitment_plan_result.dart';
import 'get_subscription_rai_policy_args.dart';
import 'get_subscription_rai_policy_result.dart';
import 'list_account_keys_args.dart';
import 'list_account_keys_result.dart';
import 'list_agent_application_agents_args.dart';
import 'list_agent_application_agents_result.dart';

/// Returns a Cognitive Services account specified by the parameters.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAccount',
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
    'azure-native:cognitiveservices:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_account_capability_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountCapabilityHostResult> getAccountCapabilityHost(
  GetAccountCapabilityHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAccountCapabilityHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountCapabilityHostResult.fromMap(result);
}

pulumi.Output<GetAccountCapabilityHostResult> getAccountCapabilityHostOutput(
  GetAccountCapabilityHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAccountCapabilityHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountCapabilityHostResult.fromMap);
}

/// Connection base resource schema.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_account_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountConnectionResult> getAccountConnection(
  GetAccountConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAccountConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountConnectionResult.fromMap(result);
}

pulumi.Output<GetAccountConnectionResult> getAccountConnectionOutput(
  GetAccountConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAccountConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountConnectionResult.fromMap);
}

/// Gets an Agent Application by name.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_agent_application_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentApplicationResult> getAgentApplication(
  GetAgentApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAgentApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentApplicationResult.fromMap(result);
}

pulumi.Output<GetAgentApplicationResult> getAgentApplicationOutput(
  GetAgentApplicationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAgentApplication',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentApplicationResult.fromMap);
}

/// Gets an Agent Deployment by name.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_agent_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentDeploymentResult> getAgentDeployment(
  GetAgentDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAgentDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentDeploymentResult.fromMap(result);
}

pulumi.Output<GetAgentDeploymentResult> getAgentDeploymentOutput(
  GetAgentDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getAgentDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentDeploymentResult.fromMap);
}

/// Gets the specified commitmentPlans associated with the Cognitive Services account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_commitment_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommitmentPlanResult> getCommitmentPlan(
  GetCommitmentPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getCommitmentPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommitmentPlanResult.fromMap(result);
}

pulumi.Output<GetCommitmentPlanResult> getCommitmentPlanOutput(
  GetCommitmentPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getCommitmentPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCommitmentPlanResult.fromMap);
}

/// Gets the association of the Cognitive Services commitment plan.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_commitment_plan_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommitmentPlanAssociationResult> getCommitmentPlanAssociation(
  GetCommitmentPlanAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getCommitmentPlanAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommitmentPlanAssociationResult.fromMap(result);
}

pulumi.Output<GetCommitmentPlanAssociationResult> getCommitmentPlanAssociationOutput(
  GetCommitmentPlanAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getCommitmentPlanAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCommitmentPlanAssociationResult.fromMap);
}

/// Gets the specified deployments associated with the Cognitive Services account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentResult> getDeployment(
  GetDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResult.fromMap(result);
}

pulumi.Output<GetDeploymentResult> getDeploymentOutput(
  GetDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentResult.fromMap);
}

/// Gets the specified EncryptionScope associated with the Cognitive Services account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_encryption_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptionScopeResult> getEncryptionScope(
  GetEncryptionScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getEncryptionScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptionScopeResult.fromMap(result);
}

pulumi.Output<GetEncryptionScopeResult> getEncryptionScopeOutput(
  GetEncryptionScopeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getEncryptionScope',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEncryptionScopeResult.fromMap);
}

/// Get API for managed network settings of a cognitive services account.
///
/// Uses Azure REST API version 2026-01-15-preview.
///
/// Other available API versions: 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_managed_network_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedNetworkSettingResult> getManagedNetworkSetting(
  GetManagedNetworkSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getManagedNetworkSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedNetworkSettingResult.fromMap(result);
}

pulumi.Output<GetManagedNetworkSettingResult> getManagedNetworkSettingOutput(
  GetManagedNetworkSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getManagedNetworkSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedNetworkSettingResult.fromMap);
}

/// The GET API for retrieving a single outbound rule of the managed network associated with the cognitive services account.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_outbound_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOutboundRuleResult> getOutboundRule(
  GetOutboundRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getOutboundRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutboundRuleResult.fromMap(result);
}

pulumi.Output<GetOutboundRuleResult> getOutboundRuleOutput(
  GetOutboundRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getOutboundRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOutboundRuleResult.fromMap);
}

/// Gets the specified private endpoint connection associated with the Cognitive Services account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getPrivateEndpointConnection',
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
    'azure-native:cognitiveservices:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Returns a Cognitive Services project specified by the parameters.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
}

/// Azure Resource Manager resource envelope for Project CapabilityHost.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_project_capability_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectCapabilityHostResult> getProjectCapabilityHost(
  GetProjectCapabilityHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getProjectCapabilityHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCapabilityHostResult.fromMap(result);
}

pulumi.Output<GetProjectCapabilityHostResult> getProjectCapabilityHostOutput(
  GetProjectCapabilityHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getProjectCapabilityHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectCapabilityHostResult.fromMap);
}

/// Connection base resource schema.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_project_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectConnectionResult> getProjectConnection(
  GetProjectConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getProjectConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectConnectionResult.fromMap(result);
}

pulumi.Output<GetProjectConnectionResult> getProjectConnectionOutput(
  GetProjectConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getProjectConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectConnectionResult.fromMap);
}

/// Gets the specified custom blocklist associated with the Azure OpenAI account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_rai_blocklist_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiBlocklistResult> getRaiBlocklist(
  GetRaiBlocklistArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiBlocklist',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiBlocklistResult.fromMap(result);
}

pulumi.Output<GetRaiBlocklistResult> getRaiBlocklistOutput(
  GetRaiBlocklistArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiBlocklist',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiBlocklistResult.fromMap);
}

/// Gets the specified custom blocklist Item associated with the custom blocklist.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_rai_blocklist_item_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiBlocklistItemResult> getRaiBlocklistItem(
  GetRaiBlocklistItemArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiBlocklistItem',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiBlocklistItemResult.fromMap(result);
}

pulumi.Output<GetRaiBlocklistItemResult> getRaiBlocklistItemOutput(
  GetRaiBlocklistItemArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiBlocklistItem',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiBlocklistItemResult.fromMap);
}

/// Gets the specified external safety provider associated with the Subscription
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_rai_external_safety_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiExternalSafetyProviderResult> getRaiExternalSafetyProvider(
  GetRaiExternalSafetyProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiExternalSafetyProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiExternalSafetyProviderResult.fromMap(result);
}

pulumi.Output<GetRaiExternalSafetyProviderResult> getRaiExternalSafetyProviderOutput(
  GetRaiExternalSafetyProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiExternalSafetyProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiExternalSafetyProviderResult.fromMap);
}

/// Gets the specified Content Filters associated with the Azure OpenAI account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_rai_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiPolicyResult> getRaiPolicy(
  GetRaiPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiPolicyResult.fromMap(result);
}

pulumi.Output<GetRaiPolicyResult> getRaiPolicyOutput(
  GetRaiPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiPolicyResult.fromMap);
}

/// Gets the specified RAI Tool Label associated with the Azure OpenAI account.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_rai_tool_label_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiToolLabelResult> getRaiToolLabel(
  GetRaiToolLabelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiToolLabel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiToolLabelResult.fromMap(result);
}

pulumi.Output<GetRaiToolLabelResult> getRaiToolLabelOutput(
  GetRaiToolLabelArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiToolLabel',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiToolLabelResult.fromMap);
}

/// Gets the specified custom topic associated with the Azure OpenAI account.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_rai_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRaiTopicResult> getRaiTopic(
  GetRaiTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRaiTopicResult.fromMap(result);
}

pulumi.Output<GetRaiTopicResult> getRaiTopicOutput(
  GetRaiTopicArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getRaiTopic',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRaiTopicResult.fromMap);
}

/// Returns a Cognitive Services commitment plan specified by the parameters.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_shared_commitment_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedCommitmentPlanResult> getSharedCommitmentPlan(
  GetSharedCommitmentPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getSharedCommitmentPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedCommitmentPlanResult.fromMap(result);
}

pulumi.Output<GetSharedCommitmentPlanResult> getSharedCommitmentPlanOutput(
  GetSharedCommitmentPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getSharedCommitmentPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSharedCommitmentPlanResult.fromMap);
}

/// Gets the specified Content Filters associated with the Subscription.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_get_subscription_rai_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionRaiPolicyResult> getSubscriptionRaiPolicy(
  GetSubscriptionRaiPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getSubscriptionRaiPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionRaiPolicyResult.fromMap(result);
}

pulumi.Output<GetSubscriptionRaiPolicyResult> getSubscriptionRaiPolicyOutput(
  GetSubscriptionRaiPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:getSubscriptionRaiPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionRaiPolicyResult.fromMap);
}

/// Lists the account keys for the specified Cognitive Services account.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-10-01-preview, 2024-04-01-preview, 2024-06-01-preview, 2024-10-01, 2025-04-01-preview, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_list_account_keys_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAccountKeysResult> listAccountKeys(
  ListAccountKeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:listAccountKeys',
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
    'azure-native:cognitiveservices:listAccountKeys',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAccountKeysResult.fromMap);
}

/// Lists agents for an Agent Application.
///
/// Uses Azure REST API version 2025-10-01-preview.
///
/// Other available API versions: 2025-12-01, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview, 2026-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitiveservices_list_agent_application_agents_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAgentApplicationAgentsResult> listAgentApplicationAgents(
  ListAgentApplicationAgentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cognitiveservices:listAgentApplicationAgents',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAgentApplicationAgentsResult.fromMap(result);
}

pulumi.Output<ListAgentApplicationAgentsResult> listAgentApplicationAgentsOutput(
  ListAgentApplicationAgentsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cognitiveservices:listAgentApplicationAgents',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListAgentApplicationAgentsResult.fromMap);
}
