import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_horizon_db_cluster_args.dart';
import 'get_horizon_db_cluster_result.dart';
import 'get_horizon_db_firewall_rule_args.dart';
import 'get_horizon_db_firewall_rule_result.dart';
import 'get_horizon_db_parameter_group_args.dart';
import 'get_horizon_db_parameter_group_result.dart';
import 'get_horizon_db_replica_args.dart';
import 'get_horizon_db_replica_result.dart';

/// Gets information about a HorizonDB cluster.
///
/// Uses Azure REST API version 2026-01-20-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_horizondb_get_horizon_db_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHorizonDbClusterResult> getHorizonDbCluster(
  GetHorizonDbClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:horizondb:getHorizonDbCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHorizonDbClusterResult.fromMap(result);
}

/// Gets information about a HorizonDB firewall rule.
///
/// Uses Azure REST API version 2026-01-20-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_horizondb_get_horizon_db_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHorizonDbFirewallRuleResult> getHorizonDbFirewallRule(
  GetHorizonDbFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:horizondb:getHorizonDbFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHorizonDbFirewallRuleResult.fromMap(result);
}

/// Gets information about a HorizonDB parameter group.
///
/// Uses Azure REST API version 2026-01-20-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_horizondb_get_horizon_db_parameter_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHorizonDbParameterGroupResult> getHorizonDbParameterGroup(
  GetHorizonDbParameterGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:horizondb:getHorizonDbParameterGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHorizonDbParameterGroupResult.fromMap(result);
}

/// Gets information about a HorizonDB replica.
///
/// Uses Azure REST API version 2026-01-20-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_horizondb_get_horizon_db_replica_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHorizonDbReplicaResult> getHorizonDbReplica(
  GetHorizonDbReplicaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:horizondb:getHorizonDbReplica',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHorizonDbReplicaResult.fromMap(result);
}
