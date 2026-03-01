import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_network_args.dart';
import 'get_managed_network_group_args.dart';
import 'get_managed_network_group_result.dart';
import 'get_managed_network_peering_policy_args.dart';
import 'get_managed_network_peering_policy_result.dart';
import 'get_managed_network_result.dart';
import 'get_scope_assignment_args.dart';
import 'get_scope_assignment_result.dart';

/// The Get ManagedNetworks operation gets a Managed Network Resource, specified by the resource group and Managed Network name
///
/// Uses Azure REST API version 2019-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetwork_get_managed_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedNetworkResult> getManagedNetwork(
  GetManagedNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetwork:getManagedNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedNetworkResult.fromMap(result);
}

/// The Get ManagedNetworkGroups operation gets a Managed Network Group specified by the resource group, Managed Network name, and group name
///
/// Uses Azure REST API version 2019-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetwork_get_managed_network_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedNetworkGroupResult> getManagedNetworkGroup(
  GetManagedNetworkGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetwork:getManagedNetworkGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedNetworkGroupResult.fromMap(result);
}

/// The Get ManagedNetworkPeeringPolicies operation gets a Managed Network Peering Policy resource, specified by the  resource group, Managed Network name, and peering policy name
///
/// Uses Azure REST API version 2019-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetwork_get_managed_network_peering_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedNetworkPeeringPolicyResult> getManagedNetworkPeeringPolicy(
  GetManagedNetworkPeeringPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetwork:getManagedNetworkPeeringPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedNetworkPeeringPolicyResult.fromMap(result);
}

/// Get the specified scope assignment.
///
/// Uses Azure REST API version 2019-06-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_managednetwork_get_scope_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeAssignmentResult> getScopeAssignment(
  GetScopeAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:managednetwork:getScopeAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeAssignmentResult.fromMap(result);
}
