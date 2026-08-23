import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cgprofile_args.dart';
import 'get_cgprofile_result.dart';
import 'get_container_group_args.dart';
import 'get_container_group_profile_args.dart';
import 'get_container_group_profile_result.dart';
import 'get_container_group_result.dart';
import 'get_ngroup_args.dart';
import 'get_ngroup_result.dart';

/// Get the properties of the specified container group profile.
///
/// Uses Azure REST API version 2024-11-01-preview.
///
/// Other available API versions: 2025-09-01, 2026-06-01-preview, 2026-07-01, 2026-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerinstance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinstance_get_cgprofile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCGProfileResult> getCGProfile(
  GetCGProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerinstance:getCGProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCGProfileResult.fromMap(result);
}

/// Gets the properties of the specified container group in the specified subscription and resource group. The operation returns the properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.
///
/// Uses Azure REST API version 2024-05-01-preview.
///
/// Other available API versions: 2023-05-01, 2024-09-01-preview, 2024-10-01-preview, 2024-11-01-preview, 2025-09-01, 2026-06-01-preview, 2026-07-01, 2026-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerinstance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinstance_get_container_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerGroupResult> getContainerGroup(
  GetContainerGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerinstance:getContainerGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerGroupResult.fromMap(result);
}

/// Gets the properties of the specified container group profile in the specified subscription and resource group. The operation returns the properties of container group profile including containers, image registry credentials, restart policy, IP address type, OS type, volumes, current revision number, etc.
///
/// Uses Azure REST API version 2024-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinstance_get_container_group_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerGroupProfileResult> getContainerGroupProfile(
  GetContainerGroupProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerinstance:getContainerGroupProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerGroupProfileResult.fromMap(result);
}

/// Get the properties of the specified NGroups resource.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2024-09-01-preview, 2024-11-01-preview, 2026-06-01-preview, 2026-07-01, 2026-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerinstance [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerinstance_get_ngroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNGroupResult> getNGroup(
  GetNGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerinstance:getNGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNGroupResult.fromMap(result);
}
