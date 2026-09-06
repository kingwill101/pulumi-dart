import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_approval_args.dart';
import 'get_approval_result.dart';
import 'get_community_args.dart';
import 'get_community_endpoint_args.dart';
import 'get_community_endpoint_result.dart';
import 'get_community_result.dart';
import 'get_dedicated_hub_args.dart';
import 'get_dedicated_hub_result.dart';
import 'get_enclave_connection_args.dart';
import 'get_enclave_connection_result.dart';
import 'get_enclave_endpoint_args.dart';
import 'get_enclave_endpoint_result.dart';
import 'get_transit_hub_args.dart';
import 'get_transit_hub_result.dart';
import 'get_virtual_enclave_args.dart';
import 'get_virtual_enclave_result.dart';
import 'get_workload_args.dart';
import 'get_workload_result.dart';

/// Get a ApprovalResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_approval_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApprovalResult> getApproval(
  GetApprovalArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getApproval',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApprovalResult.fromMap(result);
}

pulumi.Output<GetApprovalResult> getApprovalOutput(
  GetApprovalArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getApproval',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApprovalResult.fromMap);
}

/// Get a CommunityResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_community_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommunityResult> getCommunity(
  GetCommunityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getCommunity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommunityResult.fromMap(result);
}

pulumi.Output<GetCommunityResult> getCommunityOutput(
  GetCommunityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getCommunity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCommunityResult.fromMap);
}

/// Get a CommunityEndpointResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_community_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommunityEndpointResult> getCommunityEndpoint(
  GetCommunityEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getCommunityEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommunityEndpointResult.fromMap(result);
}

pulumi.Output<GetCommunityEndpointResult> getCommunityEndpointOutput(
  GetCommunityEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getCommunityEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCommunityEndpointResult.fromMap);
}

/// Get a DedicatedHubResource
///
/// Uses Azure REST API version 2025-11-01-preview.
///
/// Other available API versions: 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_dedicated_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHubResult> getDedicatedHub(
  GetDedicatedHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getDedicatedHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHubResult.fromMap(result);
}

pulumi.Output<GetDedicatedHubResult> getDedicatedHubOutput(
  GetDedicatedHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getDedicatedHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDedicatedHubResult.fromMap);
}

/// Get a EnclaveConnectionResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_enclave_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnclaveConnectionResult> getEnclaveConnection(
  GetEnclaveConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getEnclaveConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnclaveConnectionResult.fromMap(result);
}

pulumi.Output<GetEnclaveConnectionResult> getEnclaveConnectionOutput(
  GetEnclaveConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getEnclaveConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnclaveConnectionResult.fromMap);
}

/// Get a EnclaveEndpointResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_enclave_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnclaveEndpointResult> getEnclaveEndpoint(
  GetEnclaveEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getEnclaveEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnclaveEndpointResult.fromMap(result);
}

pulumi.Output<GetEnclaveEndpointResult> getEnclaveEndpointOutput(
  GetEnclaveEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getEnclaveEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEnclaveEndpointResult.fromMap);
}

/// Get a TransitHubResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_transit_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitHubResult> getTransitHub(
  GetTransitHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getTransitHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitHubResult.fromMap(result);
}

pulumi.Output<GetTransitHubResult> getTransitHubOutput(
  GetTransitHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getTransitHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTransitHubResult.fromMap);
}

/// Get a EnclaveResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_virtual_enclave_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualEnclaveResult> getVirtualEnclave(
  GetVirtualEnclaveArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getVirtualEnclave',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualEnclaveResult.fromMap(result);
}

pulumi.Output<GetVirtualEnclaveResult> getVirtualEnclaveOutput(
  GetVirtualEnclaveArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getVirtualEnclave',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualEnclaveResult.fromMap);
}

/// Get a WorkloadResource
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2024-06-01-preview, 2024-12-01-preview, 2025-11-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mission [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mission_get_workload_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadResult> getWorkload(
  GetWorkloadArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mission:getWorkload',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadResult.fromMap(result);
}

pulumi.Output<GetWorkloadResult> getWorkloadOutput(
  GetWorkloadArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:mission:getWorkload',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadResult.fromMap);
}
