import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_afdcustom_domain_args.dart';
import 'get_afdcustom_domain_result.dart';
import 'get_afdendpoint_args.dart';
import 'get_afdendpoint_result.dart';
import 'get_afdorigin_args.dart';
import 'get_afdorigin_group_args.dart';
import 'get_afdorigin_group_result.dart';
import 'get_afdorigin_result.dart';
import 'get_afdtarget_group_args.dart';
import 'get_afdtarget_group_result.dart';
import 'get_custom_domain_args.dart';
import 'get_custom_domain_result.dart';
import 'get_edge_action_args.dart';
import 'get_edge_action_execution_filter_args.dart';
import 'get_edge_action_execution_filter_result.dart';
import 'get_edge_action_result.dart';
import 'get_edge_action_version_args.dart';
import 'get_edge_action_version_code_args.dart';
import 'get_edge_action_version_code_result.dart';
import 'get_edge_action_version_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_key_group_args.dart';
import 'get_key_group_result.dart';
import 'get_knowledge_source_args.dart';
import 'get_knowledge_source_result.dart';
import 'get_origin_args.dart';
import 'get_origin_group_args.dart';
import 'get_origin_group_result.dart';
import 'get_origin_result.dart';
import 'get_policy_args.dart';
import 'get_policy_result.dart';
import 'get_profile_agent_args.dart';
import 'get_profile_agent_result.dart';
import 'get_profile_args.dart';
import 'get_profile_result.dart';
import 'get_profile_supported_optimization_types_args.dart';
import 'get_profile_supported_optimization_types_result.dart';
import 'get_route_args.dart';
import 'get_route_result.dart';
import 'get_rule_args.dart';
import 'get_rule_result.dart';
import 'get_rule_set_args.dart';
import 'get_rule_set_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_security_policy_args.dart';
import 'get_security_policy_result.dart';
import 'get_tunnel_policy_args.dart';
import 'get_tunnel_policy_result.dart';
import 'get_web_agent_args.dart';
import 'get_web_agent_result.dart';

/// Gets an existing AzureFrontDoor domain with the specified domain name under the specified subscription, resource group and profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_afdcustom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAFDCustomDomainResult> getAFDCustomDomain(
  GetAFDCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getAFDCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAFDCustomDomainResult.fromMap(result);
}

pulumi.Output<GetAFDCustomDomainResult> getAFDCustomDomainOutput(
  GetAFDCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getAFDCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAFDCustomDomainResult.fromMap);
}

/// Gets an existing AzureFrontDoor endpoint with the specified endpoint name under the specified subscription, resource group and profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_afdendpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAFDEndpointResult> getAFDEndpoint(
  GetAFDEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getAFDEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAFDEndpointResult.fromMap(result);
}

pulumi.Output<GetAFDEndpointResult> getAFDEndpointOutput(
  GetAFDEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getAFDEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAFDEndpointResult.fromMap);
}

/// Gets an existing origin within an origin group.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_afdorigin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAFDOriginResult> getAFDOrigin(
  GetAFDOriginArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getAFDOrigin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAFDOriginResult.fromMap(result);
}

pulumi.Output<GetAFDOriginResult> getAFDOriginOutput(
  GetAFDOriginArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getAFDOrigin',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAFDOriginResult.fromMap);
}

/// Gets an existing origin group within a profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_afdorigin_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAFDOriginGroupResult> getAFDOriginGroup(
  GetAFDOriginGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getAFDOriginGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAFDOriginGroupResult.fromMap(result);
}

pulumi.Output<GetAFDOriginGroupResult> getAFDOriginGroupOutput(
  GetAFDOriginGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getAFDOriginGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAFDOriginGroupResult.fromMap);
}

/// Gets an existing target group within a profile.
///
/// Uses Azure REST API version 2024-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_afdtarget_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAFDTargetGroupResult> getAFDTargetGroup(
  GetAFDTargetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getAFDTargetGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAFDTargetGroupResult.fromMap(result);
}

pulumi.Output<GetAFDTargetGroupResult> getAFDTargetGroupOutput(
  GetAFDTargetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getAFDTargetGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAFDTargetGroupResult.fromMap);
}

/// Gets an existing custom domain within an endpoint.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_custom_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomDomainResult> getCustomDomain(
  GetCustomDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getCustomDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomDomainResult.fromMap(result);
}

pulumi.Output<GetCustomDomainResult> getCustomDomainOutput(
  GetCustomDomainArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getCustomDomain',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomDomainResult.fromMap);
}

/// Get a EdgeAction
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_edge_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeActionResult> getEdgeAction(
  GetEdgeActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeActionResult.fromMap(result);
}

pulumi.Output<GetEdgeActionResult> getEdgeActionOutput(
  GetEdgeActionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeAction',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeActionResult.fromMap);
}

/// Get a EdgeActionExecutionFilter
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_edge_action_execution_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeActionExecutionFilterResult> getEdgeActionExecutionFilter(
  GetEdgeActionExecutionFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeActionExecutionFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeActionExecutionFilterResult.fromMap(result);
}

pulumi.Output<GetEdgeActionExecutionFilterResult> getEdgeActionExecutionFilterOutput(
  GetEdgeActionExecutionFilterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeActionExecutionFilter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeActionExecutionFilterResult.fromMap);
}

/// Get a EdgeActionVersion
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_edge_action_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeActionVersionResult> getEdgeActionVersion(
  GetEdgeActionVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeActionVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeActionVersionResult.fromMap(result);
}

pulumi.Output<GetEdgeActionVersionResult> getEdgeActionVersionOutput(
  GetEdgeActionVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeActionVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeActionVersionResult.fromMap);
}

/// Get the version code for the edge action version.
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// Other available API versions: 2024-07-22-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_edge_action_version_code_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEdgeActionVersionCodeResult> getEdgeActionVersionCode(
  GetEdgeActionVersionCodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeActionVersionCode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEdgeActionVersionCodeResult.fromMap(result);
}

pulumi.Output<GetEdgeActionVersionCodeResult> getEdgeActionVersionCodeOutput(
  GetEdgeActionVersionCodeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getEdgeActionVersionCode',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEdgeActionVersionCodeResult.fromMap);
}

/// Gets an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

pulumi.Output<GetEndpointResult> getEndpointOutput(
  GetEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEndpointResult.fromMap);
}

/// Gets an existing KeyGroup within a profile.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2023-07-01-preview, 2024-05-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_key_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyGroupResult> getKeyGroup(
  GetKeyGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getKeyGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyGroupResult.fromMap(result);
}

pulumi.Output<GetKeyGroupResult> getKeyGroupOutput(
  GetKeyGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getKeyGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKeyGroupResult.fromMap);
}

/// Gets a knowledge source with the specified name within a web agent.
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_knowledge_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKnowledgeSourceResult> getKnowledgeSource(
  GetKnowledgeSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getKnowledgeSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKnowledgeSourceResult.fromMap(result);
}

pulumi.Output<GetKnowledgeSourceResult> getKnowledgeSourceOutput(
  GetKnowledgeSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getKnowledgeSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKnowledgeSourceResult.fromMap);
}

/// Gets an existing origin within an endpoint.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_origin_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOriginResult> getOrigin(
  GetOriginArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getOrigin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginResult.fromMap(result);
}

pulumi.Output<GetOriginResult> getOriginOutput(
  GetOriginArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getOrigin',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOriginResult.fromMap);
}

/// Gets an existing origin group within an endpoint.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_origin_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOriginGroupResult> getOriginGroup(
  GetOriginGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getOriginGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOriginGroupResult.fromMap(result);
}

pulumi.Output<GetOriginGroupResult> getOriginGroupOutput(
  GetOriginGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getOriginGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOriginGroupResult.fromMap);
}

/// Retrieve protection policy with specified name within a resource group.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyResult> getPolicyOutput(
  GetPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyResult.fromMap);
}

/// Gets an Azure Front Door Standard or Azure Front Door Premium or CDN profile with the specified profile name under the specified subscription and resource group.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileResult> getProfile(
  GetProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileResult.fromMap(result);
}

pulumi.Output<GetProfileResult> getProfileOutput(
  GetProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProfileResult.fromMap);
}

/// Gets an agent link (web agent association) within a CDN profile.
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_profile_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileAgentResult> getProfileAgent(
  GetProfileAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getProfileAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileAgentResult.fromMap(result);
}

pulumi.Output<GetProfileAgentResult> getProfileAgentOutput(
  GetProfileAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getProfileAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProfileAgentResult.fromMap);
}

/// Gets the supported optimization types for the current profile. A user can create an endpoint with an optimization type from the listed values.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_profile_supported_optimization_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProfileSupportedOptimizationTypesResult> getProfileSupportedOptimizationTypes(
  GetProfileSupportedOptimizationTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getProfileSupportedOptimizationTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileSupportedOptimizationTypesResult.fromMap(result);
}

pulumi.Output<GetProfileSupportedOptimizationTypesResult> getProfileSupportedOptimizationTypesOutput(
  GetProfileSupportedOptimizationTypesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getProfileSupportedOptimizationTypes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProfileSupportedOptimizationTypesResult.fromMap);
}

/// Gets an existing route with the specified route name under the specified subscription, resource group, profile, and AzureFrontDoor endpoint.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}

pulumi.Output<GetRouteResult> getRouteOutput(
  GetRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteResult.fromMap);
}

/// Gets an existing delivery rule within a rule set.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleResult> getRule(
  GetRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleResult.fromMap(result);
}

pulumi.Output<GetRuleResult> getRuleOutput(
  GetRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleResult.fromMap);
}

/// Gets an existing AzureFrontDoor rule set with the specified rule set name under the specified subscription, resource group and profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_rule_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuleSetResult> getRuleSet(
  GetRuleSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getRuleSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuleSetResult.fromMap(result);
}

pulumi.Output<GetRuleSetResult> getRuleSetOutput(
  GetRuleSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getRuleSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRuleSetResult.fromMap);
}

/// Gets an existing Secret within a profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

pulumi.Output<GetSecretResult> getSecretOutput(
  GetSecretArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getSecret',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecretResult.fromMap);
}

/// Gets an existing security policy within a profile.
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2023-05-01, 2023-07-01-preview, 2024-02-01, 2024-05-01-preview, 2024-06-01-preview, 2024-09-01, 2025-01-01-preview, 2025-04-15, 2025-07-01-preview, 2025-09-01-preview, 2025-12-01, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cdn [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPolicyResult> getSecurityPolicy(
  GetSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult.fromMap(result);
}

pulumi.Output<GetSecurityPolicyResult> getSecurityPolicyOutput(
  GetSecurityPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getSecurityPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityPolicyResult.fromMap);
}

/// Gets an existing tunnel policy within a profile.
///
/// Uses Azure REST API version 2024-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_tunnel_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTunnelPolicyResult> getTunnelPolicy(
  GetTunnelPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getTunnelPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTunnelPolicyResult.fromMap(result);
}

pulumi.Output<GetTunnelPolicyResult> getTunnelPolicyOutput(
  GetTunnelPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getTunnelPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTunnelPolicyResult.fromMap);
}

/// Gets a web agent with the specified name within a resource group.
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_cdn_get_web_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAgentResult> getWebAgent(
  GetWebAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:cdn:getWebAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAgentResult.fromMap(result);
}

pulumi.Output<GetWebAgentResult> getWebAgentOutput(
  GetWebAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:cdn:getWebAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAgentResult.fromMap);
}
