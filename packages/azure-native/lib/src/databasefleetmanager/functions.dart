import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_fleet_args.dart';
import 'get_fleet_database_args.dart';
import 'get_fleet_database_result.dart';
import 'get_fleet_result.dart';
import 'get_fleet_tier_args.dart';
import 'get_fleet_tier_result.dart';
import 'get_fleetspace_args.dart';
import 'get_fleetspace_result.dart';

/// Gets a firewall rule.
///
/// Uses Azure REST API version 2025-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefleetmanager_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasefleetmanager:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

/// Gets a fleet resource.
///
/// Uses Azure REST API version 2025-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefleetmanager_get_fleet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetResult> getFleet(
  GetFleetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasefleetmanager:getFleet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetResult.fromMap(result);
}

/// Gets a fleet database.
///
/// Uses Azure REST API version 2025-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefleetmanager_get_fleet_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetDatabaseResult> getFleetDatabase(
  GetFleetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasefleetmanager:getFleetDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetDatabaseResult.fromMap(result);
}

/// Gets a tier resource.
///
/// Uses Azure REST API version 2025-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefleetmanager_get_fleet_tier_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetTierResult> getFleetTier(
  GetFleetTierArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasefleetmanager:getFleetTier',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetTierResult.fromMap(result);
}

/// Gets fleetspace resource.
///
/// Uses Azure REST API version 2025-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefleetmanager_get_fleetspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFleetspaceResult> getFleetspace(
  GetFleetspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:databasefleetmanager:getFleetspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFleetspaceResult.fromMap(result);
}
