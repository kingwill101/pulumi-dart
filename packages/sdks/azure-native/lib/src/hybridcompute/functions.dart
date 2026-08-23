import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_args.dart';
import 'get_gateway_result.dart';
import 'get_license_args.dart';
import 'get_license_profile_args.dart';
import 'get_license_profile_result.dart';
import 'get_license_result.dart';
import 'get_machine_args.dart';
import 'get_machine_extension_args.dart';
import 'get_machine_extension_result.dart';
import 'get_machine_result.dart';
import 'get_machine_run_command_args.dart';
import 'get_machine_run_command_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_private_link_scope_args.dart';
import 'get_private_link_scope_result.dart';
import 'get_private_link_scoped_resource_args.dart';
import 'get_private_link_scoped_resource_result.dart';

/// Retrieves information about the view of a gateway.
///
/// Uses Azure REST API version 2024-07-31-preview.
///
/// Other available API versions: 2024-03-31-preview, 2024-05-20-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGatewayResult> getGateway(
  GetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGatewayResult.fromMap(result);
}

/// Retrieves information about the view of a license.
///
/// Uses Azure REST API version 2024-07-10.
///
/// Other available API versions: 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseResult> getLicense(
  GetLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseResult.fromMap(result);
}

/// Retrieves information about the view of a license profile.
///
/// Uses Azure REST API version 2024-07-10.
///
/// Other available API versions: 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_license_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseProfileResult> getLicenseProfile(
  GetLicenseProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getLicenseProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseProfileResult.fromMap(result);
}

/// Retrieves information about the model view or the instance view of a hybrid machine.
///
/// Uses Azure REST API version 2024-07-10.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_machine_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineResult> getMachine(
  GetMachineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getMachine',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineResult.fromMap(result);
}

/// The operation to get the extension.
///
/// Uses Azure REST API version 2024-07-10.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_machine_extension_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineExtensionResult> getMachineExtension(
  GetMachineExtensionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getMachineExtension',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineExtensionResult.fromMap(result);
}

/// The operation to get a run command.
///
/// Uses Azure REST API version 2024-07-31-preview.
///
/// Other available API versions: 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_machine_run_command_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineRunCommandResult> getMachineRunCommand(
  GetMachineRunCommandArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getMachineRunCommand',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineRunCommandResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2024-07-10.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Returns a Azure Arc PrivateLinkScope.
///
/// Uses Azure REST API version 2024-07-10.
///
/// Other available API versions: 2020-08-15-preview, 2021-01-28-preview, 2021-03-25-preview, 2021-04-22-preview, 2021-05-17-preview, 2021-05-20, 2021-06-10-preview, 2021-12-10-preview, 2022-03-10, 2022-05-10-preview, 2022-08-11-preview, 2022-11-10, 2022-12-27, 2022-12-27-preview, 2023-03-15-preview, 2023-06-20-preview, 2023-10-03-preview, 2024-03-31-preview, 2024-05-20-preview, 2024-07-31-preview, 2024-09-10-preview, 2024-11-10-preview, 2025-01-13, 2025-02-19-preview, 2025-06-01, 2025-08-21-preview, 2025-09-16-preview, 2026-02-12-preview, 2026-06-04-preview, 2026-06-16-preview, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native hybridcompute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_private_link_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkScopeResult> getPrivateLinkScope(
  GetPrivateLinkScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getPrivateLinkScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkScopeResult.fromMap(result);
}

/// Gets a scoped resource in a private link scope.
///
/// Uses Azure REST API version 2020-08-15-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_hybridcompute_get_private_link_scoped_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkScopedResourceResult> getPrivateLinkScopedResource(
  GetPrivateLinkScopedResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:hybridcompute:getPrivateLinkScopedResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkScopedResourceResult.fromMap(result);
}
