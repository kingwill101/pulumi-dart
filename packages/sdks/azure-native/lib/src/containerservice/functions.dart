import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_pool_args.dart';
import 'get_agent_pool_result.dart';
import 'get_auto_upgrade_profile_args.dart';
import 'get_auto_upgrade_profile_result.dart';
import 'get_deployment_safeguard_args.dart';
import 'get_deployment_safeguard_result.dart';
import 'get_fleet_args.dart';
import 'get_fleet_managed_namespace_args.dart';
import 'get_fleet_managed_namespace_result.dart';
import 'get_fleet_member_args.dart';
import 'get_fleet_member_result.dart';
import 'get_fleet_result.dart';
import 'get_fleet_update_strategy_args.dart';
import 'get_fleet_update_strategy_result.dart';
import 'get_identity_binding_args.dart';
import 'get_identity_binding_result.dart';
import 'get_jwtauthenticator_args.dart';
import 'get_jwtauthenticator_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_result.dart';
import 'get_maintenance_configuration_args.dart';
import 'get_maintenance_configuration_result.dart';
import 'get_managed_cluster_args.dart';
import 'get_managed_cluster_result.dart';
import 'get_managed_cluster_snapshot_args.dart';
import 'get_managed_cluster_snapshot_result.dart';
import 'get_managed_namespace_args.dart';
import 'get_managed_namespace_result.dart';
import 'get_mesh_membership_args.dart';
import 'get_mesh_membership_result.dart';
import 'get_namespace_args.dart';
import 'get_namespace_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';
import 'get_trusted_access_role_binding_args.dart';
import 'get_trusted_access_role_binding_result.dart';
import 'get_update_run_args.dart';
import 'get_update_run_result.dart';
import 'list_fleet_credentials_args.dart';
import 'list_fleet_credentials_result.dart';
import 'list_managed_cluster_access_profile_args.dart';
import 'list_managed_cluster_access_profile_result.dart';
import 'list_managed_cluster_admin_credentials_args.dart';
import 'list_managed_cluster_admin_credentials_result.dart';
import 'list_managed_cluster_monitoring_user_credentials_args.dart';
import 'list_managed_cluster_monitoring_user_credentials_result.dart';
import 'list_managed_cluster_user_credentials_args.dart';
import 'list_managed_cluster_user_credentials_result.dart';
import 'list_managed_namespace_credential_args.dart';
import 'list_managed_namespace_credential_result.dart';
import 'list_namespace_credential_args.dart';
import 'list_namespace_credential_result.dart';

/// Agent Pool.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_agent_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAgentPoolResult> getAgentPool(
  GetAgentPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getAgentPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAgentPoolResult.fromMap(result);
}

pulumi.Output<GetAgentPoolResult> getAgentPoolOutput(
  GetAgentPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getAgentPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAgentPoolResult.fromMap);
}

/// Get a AutoUpgradeProfile
///
/// Uses Azure REST API version 2024-05-02-preview.
///
/// Other available API versions: 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_auto_upgrade_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoUpgradeProfileResult> getAutoUpgradeProfile(
  GetAutoUpgradeProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getAutoUpgradeProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoUpgradeProfileResult.fromMap(result);
}

pulumi.Output<GetAutoUpgradeProfileResult> getAutoUpgradeProfileOutput(
  GetAutoUpgradeProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getAutoUpgradeProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAutoUpgradeProfileResult.fromMap);
}

/// Fetch a deployment safeguard by name
///
/// Uses Azure REST API version 2025-04-02-preview.
///
/// Other available API versions: 2025-04-01, 2025-05-02-preview, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_deployment_safeguard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeploymentSafeguardResult> getDeploymentSafeguard(
  GetDeploymentSafeguardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getDeploymentSafeguard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentSafeguardResult.fromMap(result);
}

pulumi.Output<GetDeploymentSafeguardResult> getDeploymentSafeguardOutput(
  GetDeploymentSafeguardArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getDeploymentSafeguard',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeploymentSafeguardResult.fromMap);
}

/// Gets a Fleet.
///
/// Uses Azure REST API version 2024-05-02-preview.
///
/// Other available API versions: 2022-06-02-preview, 2022-07-02-preview, 2022-09-02-preview, 2023-03-15-preview, 2023-06-15-preview, 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_fleet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}

pulumi.Output<GetFleetResult> getFleetOutput(
  GetFleetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getFleet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetResult.fromMap);
}

/// Get a FleetManagedNamespace
///
/// Uses Azure REST API version 2025-08-01-preview.
///
/// Other available API versions: 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_fleet_managed_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetManagedNamespaceResult> getFleetManagedNamespace(
  GetFleetManagedNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getFleetManagedNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetManagedNamespaceResult.fromMap(result);
}

pulumi.Output<GetFleetManagedNamespaceResult> getFleetManagedNamespaceOutput(
  GetFleetManagedNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getFleetManagedNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetManagedNamespaceResult.fromMap);
}

/// Get a FleetMember
///
/// Uses Azure REST API version 2024-05-02-preview.
///
/// Other available API versions: 2022-06-02-preview, 2022-07-02-preview, 2022-09-02-preview, 2023-03-15-preview, 2023-06-15-preview, 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_fleet_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetMemberResult> getFleetMember(
  GetFleetMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getFleetMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetMemberResult.fromMap(result);
}

pulumi.Output<GetFleetMemberResult> getFleetMemberOutput(
  GetFleetMemberArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getFleetMember',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetMemberResult.fromMap);
}

/// Get a FleetUpdateStrategy
///
/// Uses Azure REST API version 2024-05-02-preview.
///
/// Other available API versions: 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_fleet_update_strategy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetUpdateStrategyResult> getFleetUpdateStrategy(
  GetFleetUpdateStrategyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getFleetUpdateStrategy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetUpdateStrategyResult.fromMap(result);
}

pulumi.Output<GetFleetUpdateStrategyResult> getFleetUpdateStrategyOutput(
  GetFleetUpdateStrategyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getFleetUpdateStrategy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFleetUpdateStrategyResult.fromMap);
}

/// The IdentityBinding resource.
///
/// Uses Azure REST API version 2025-06-02-preview.
///
/// Other available API versions: 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_identity_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIdentityBindingResult> getIdentityBinding(
  GetIdentityBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getIdentityBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIdentityBindingResult.fromMap(result);
}

pulumi.Output<GetIdentityBindingResult> getIdentityBindingOutput(
  GetIdentityBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getIdentityBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIdentityBindingResult.fromMap);
}

/// Configuration for JWT authenticator in the managed cluster.
///
/// Uses Azure REST API version 2025-07-02-preview.
///
/// Other available API versions: 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-02-preview, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_jwtauthenticator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJWTAuthenticatorResult> getJWTAuthenticator(
  GetJWTAuthenticatorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getJWTAuthenticator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJWTAuthenticatorResult.fromMap(result);
}

pulumi.Output<GetJWTAuthenticatorResult> getJWTAuthenticatorOutput(
  GetJWTAuthenticatorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getJWTAuthenticator',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetJWTAuthenticatorResult.fromMap);
}

/// The configurations regarding multiple standard load balancers. If not supplied, single load balancer mode will be used. Multiple standard load balancers mode will be used if at lease one configuration is supplied. There has to be a configuration named `kubernetes`.
///
/// Uses Azure REST API version 2024-10-02-preview.
///
/// Other available API versions: 2024-03-02-preview, 2024-04-02-preview, 2024-05-02-preview, 2024-06-02-preview, 2024-07-02-preview, 2024-09-02-preview, 2025-01-02-preview, 2025-02-02-preview, 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-02-preview, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

pulumi.Output<GetLoadBalancerResult> getLoadBalancerOutput(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getLoadBalancer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadBalancerResult.fromMap);
}

/// Planned maintenance configuration, used to configure when updates can be deployed to a Managed Cluster. See [planned maintenance](https://docs.microsoft.com/azure/aks/planned-maintenance) for more information about planned maintenance.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_maintenance_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMaintenanceConfigurationResult> getMaintenanceConfiguration(
  GetMaintenanceConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getMaintenanceConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMaintenanceConfigurationResult.fromMap(result);
}

pulumi.Output<GetMaintenanceConfigurationResult> getMaintenanceConfigurationOutput(
  GetMaintenanceConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getMaintenanceConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMaintenanceConfigurationResult.fromMap);
}

/// Managed cluster.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_managed_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterResult> getManagedCluster(
  GetManagedClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getManagedCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterResult.fromMap(result);
}

pulumi.Output<GetManagedClusterResult> getManagedClusterOutput(
  GetManagedClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getManagedCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterResult.fromMap);
}

/// A managed cluster snapshot resource.
///
/// Uses Azure REST API version 2024-10-02-preview.
///
/// Other available API versions: 2022-02-02-preview, 2022-03-02-preview, 2022-04-02-preview, 2022-05-02-preview, 2022-06-02-preview, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-02-preview, 2022-10-02-preview, 2022-11-02-preview, 2023-01-02-preview, 2023-02-02-preview, 2023-03-02-preview, 2023-04-02-preview, 2023-05-02-preview, 2023-06-02-preview, 2023-07-02-preview, 2023-08-02-preview, 2023-09-02-preview, 2023-10-02-preview, 2023-11-02-preview, 2024-01-02-preview, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-02-preview, 2024-06-02-preview, 2024-07-02-preview, 2024-09-02-preview, 2025-01-02-preview, 2025-02-02-preview, 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-02-preview, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_managed_cluster_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedClusterSnapshotResult> getManagedClusterSnapshot(
  GetManagedClusterSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getManagedClusterSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedClusterSnapshotResult.fromMap(result);
}

pulumi.Output<GetManagedClusterSnapshotResult> getManagedClusterSnapshotOutput(
  GetManagedClusterSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getManagedClusterSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedClusterSnapshotResult.fromMap);
}

/// Namespace managed by ARM.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_managed_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedNamespaceResult> getManagedNamespace(
  GetManagedNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getManagedNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedNamespaceResult.fromMap(result);
}

pulumi.Output<GetManagedNamespaceResult> getManagedNamespaceOutput(
  GetManagedNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getManagedNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedNamespaceResult.fromMap);
}

/// Mesh membership of a managed cluster.
///
/// Uses Azure REST API version 2025-08-02-preview.
///
/// Other available API versions: 2025-09-02-preview, 2025-10-02-preview, 2026-01-02-preview, 2026-02-02-preview, 2026-03-02-preview, 2026-04-02-preview, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_mesh_membership_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMeshMembershipResult> getMeshMembership(
  GetMeshMembershipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getMeshMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMeshMembershipResult.fromMap(result);
}

pulumi.Output<GetMeshMembershipResult> getMeshMembershipOutput(
  GetMeshMembershipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getMeshMembership',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMeshMembershipResult.fromMap);
}

/// Namespace managed by ARM.
///
/// Uses Azure REST API version 2025-02-02-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_namespace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNamespaceResult> getNamespace(
  GetNamespaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getNamespace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNamespaceResult.fromMap(result);
}

pulumi.Output<GetNamespaceResult> getNamespaceOutput(
  GetNamespaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getNamespace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNamespaceResult.fromMap);
}

/// To learn more about private clusters, see: https://docs.microsoft.com/azure/aks/private-clusters
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getPrivateEndpointConnection',
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
    'azure-native:containerservice:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// A node pool snapshot resource.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

pulumi.Output<GetSnapshotResult> getSnapshotOutput(
  GetSnapshotArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getSnapshot',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSnapshotResult.fromMap);
}

/// Defines binding between a resource and role
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2022-04-02-preview, 2022-05-02-preview, 2022-06-02-preview, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-02-preview, 2022-10-02-preview, 2022-11-02-preview, 2023-01-02-preview, 2023-02-02-preview, 2023-03-02-preview, 2023-04-02-preview, 2023-05-02-preview, 2023-06-02-preview, 2023-07-02-preview, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_trusted_access_role_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrustedAccessRoleBindingResult> getTrustedAccessRoleBinding(
  GetTrustedAccessRoleBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getTrustedAccessRoleBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrustedAccessRoleBindingResult.fromMap(result);
}

pulumi.Output<GetTrustedAccessRoleBindingResult> getTrustedAccessRoleBindingOutput(
  GetTrustedAccessRoleBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getTrustedAccessRoleBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTrustedAccessRoleBindingResult.fromMap);
}

/// Get a UpdateRun
///
/// Uses Azure REST API version 2024-05-02-preview.
///
/// Other available API versions: 2023-03-15-preview, 2023-06-15-preview, 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_get_update_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUpdateRunResult> getUpdateRun(
  GetUpdateRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:getUpdateRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUpdateRunResult.fromMap(result);
}

pulumi.Output<GetUpdateRunResult> getUpdateRunOutput(
  GetUpdateRunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:getUpdateRun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUpdateRunResult.fromMap);
}

/// Lists the user credentials of a Fleet.
///
/// Uses Azure REST API version 2024-05-02-preview.
///
/// Other available API versions: 2022-06-02-preview, 2022-07-02-preview, 2022-09-02-preview, 2023-03-15-preview, 2023-06-15-preview, 2023-08-15-preview, 2023-10-15, 2024-02-02-preview, 2024-04-01, 2025-03-01, 2025-04-01-preview, 2025-08-01-preview, 2026-02-01-preview, 2026-03-02-preview, 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_fleet_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFleetCredentialsResult> listFleetCredentials(
  ListFleetCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listFleetCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFleetCredentialsResult.fromMap(result);
}

pulumi.Output<ListFleetCredentialsResult> listFleetCredentialsOutput(
  ListFleetCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listFleetCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListFleetCredentialsResult.fromMap);
}

/// Gets the accessProfile for the specified role name of the managed cluster with a specified resource group and name.
///
/// Uses Azure REST API version 2020-03-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_managed_cluster_access_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManagedClusterAccessProfileResult> listManagedClusterAccessProfile(
  ListManagedClusterAccessProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterAccessProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManagedClusterAccessProfileResult.fromMap(result);
}

pulumi.Output<ListManagedClusterAccessProfileResult> listManagedClusterAccessProfileOutput(
  ListManagedClusterAccessProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterAccessProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListManagedClusterAccessProfileResult.fromMap);
}

/// The list credential result response.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_managed_cluster_admin_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManagedClusterAdminCredentialsResult> listManagedClusterAdminCredentials(
  ListManagedClusterAdminCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterAdminCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManagedClusterAdminCredentialsResult.fromMap(result);
}

pulumi.Output<ListManagedClusterAdminCredentialsResult> listManagedClusterAdminCredentialsOutput(
  ListManagedClusterAdminCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterAdminCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListManagedClusterAdminCredentialsResult.fromMap);
}

/// The list credential result response.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_managed_cluster_monitoring_user_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManagedClusterMonitoringUserCredentialsResult> listManagedClusterMonitoringUserCredentials(
  ListManagedClusterMonitoringUserCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterMonitoringUserCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManagedClusterMonitoringUserCredentialsResult.fromMap(result);
}

pulumi.Output<ListManagedClusterMonitoringUserCredentialsResult> listManagedClusterMonitoringUserCredentialsOutput(
  ListManagedClusterMonitoringUserCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterMonitoringUserCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListManagedClusterMonitoringUserCredentialsResult.fromMap);
}

/// The list credential result response.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2019-11-01, 2020-01-01, 2020-02-01, 2020-03-01, 2020-04-01, 2020-06-01, 2020-07-01, 2020-09-01, 2020-11-01, 2020-12-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-07-01, 2021-08-01, 2021-09-01, 2021-10-01, 2021-11-01-preview, 2022-01-01, 2022-01-02-preview, 2022-02-01, 2022-02-02-preview, 2022-03-01, 2022-03-02-preview, 2022-04-01, 2022-04-02-preview, 2022-05-02-preview, 2022-06-01, 2022-06-02-preview, 2022-07-01, 2022-07-02-preview, 2022-08-02-preview, 2022-08-03-preview, 2022-09-01, 2022-09-02-preview, 2022-10-02-preview, 2022-11-01, 2022-11-02-preview, 2023-01-01, 2023-01-02-preview, 2023-02-01, 2023-02-02-preview, 2023-03-01, 2023-03-02-preview, 2023-04-01, 2023-04-02-preview, 2023-05-01, 2023-05-02-preview, 2023-06-01, 2023-06-02-preview, 2023-07-01, 2023-07-02-preview, 2023-08-01, 2023-08-02-preview, 2023-09-01, 2023-09-02-preview, 2023-10-01, 2023-10-02-preview, 2023-11-01, 2023-11-02-preview, 2024-01-01, 2024-01-02-preview, 2024-02-01, 2024-02-02-preview, 2024-03-02-preview, 2024-04-02-preview, 2024-05-01, 2024-05-02-preview, 2024-06-02-preview, 2024-07-01, 2024-07-02-preview, 2024-08-01, 2024-09-01, 2024-09-02-preview, 2024-10-01, 2024-10-02-preview, 2025-01-01, 2025-01-02-preview, 2025-02-01, 2025-02-02-preview, 2025-03-01, 2025-03-02-preview, 2025-04-01, 2025-04-02-preview, 2025-05-01, 2025-05-02-preview, 2025-06-02-preview, 2025-07-01, 2025-07-02-preview, 2025-08-01, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_managed_cluster_user_credentials_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManagedClusterUserCredentialsResult> listManagedClusterUserCredentials(
  ListManagedClusterUserCredentialsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterUserCredentials',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManagedClusterUserCredentialsResult.fromMap(result);
}

pulumi.Output<ListManagedClusterUserCredentialsResult> listManagedClusterUserCredentialsOutput(
  ListManagedClusterUserCredentialsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedClusterUserCredentials',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListManagedClusterUserCredentialsResult.fromMap);
}

/// The list credential result response.
///
/// Uses Azure REST API version 2025-09-01.
///
/// Other available API versions: 2025-03-02-preview, 2025-04-02-preview, 2025-05-02-preview, 2025-06-02-preview, 2025-07-02-preview, 2025-08-02-preview, 2025-09-02-preview, 2025-10-01, 2025-10-02-preview, 2026-01-01, 2026-01-02-preview, 2026-02-01, 2026-02-02-preview, 2026-03-01, 2026-03-02-preview, 2026-04-01, 2026-04-02-preview, 2026-05-01, 2026-05-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_managed_namespace_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListManagedNamespaceCredentialResult> listManagedNamespaceCredential(
  ListManagedNamespaceCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedNamespaceCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListManagedNamespaceCredentialResult.fromMap(result);
}

pulumi.Output<ListManagedNamespaceCredentialResult> listManagedNamespaceCredentialOutput(
  ListManagedNamespaceCredentialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listManagedNamespaceCredential',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListManagedNamespaceCredentialResult.fromMap);
}

/// The list credential result response.
///
/// Uses Azure REST API version 2025-02-02-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_containerservice_list_namespace_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNamespaceCredentialResult> listNamespaceCredential(
  ListNamespaceCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:containerservice:listNamespaceCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNamespaceCredentialResult.fromMap(result);
}

pulumi.Output<ListNamespaceCredentialResult> listNamespaceCredentialOutput(
  ListNamespaceCredentialArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:containerservice:listNamespaceCredential',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNamespaceCredentialResult.fromMap);
}
