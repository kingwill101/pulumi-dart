import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_rule_args.dart';
import 'get_firewall_rule_result.dart';
import 'get_mongo_cluster_args.dart';
import 'get_mongo_cluster_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'list_mongo_cluster_connection_strings_args.dart';
import 'list_mongo_cluster_connection_strings_result.dart';

/// Gets information about a mongo cluster firewall rule.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01, 2026-02-01-preview, 2026-06-01, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mongocluster_get_firewall_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallRuleResult> getFirewallRule(
  GetFirewallRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mongocluster:getFirewallRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallRuleResult.fromMap(result);
}

/// Gets information about a mongo cluster.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01, 2026-02-01-preview, 2026-06-01, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mongocluster_get_mongo_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMongoClusterResult> getMongoCluster(
  GetMongoClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mongocluster:getMongoCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMongoClusterResult.fromMap(result);
}

/// Get a specific private connection
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01, 2026-02-01-preview, 2026-06-01, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mongocluster_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mongocluster:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Gets the defintion of a Mongo cluster user.
///
/// Uses Azure REST API version 2025-04-01-preview.
///
/// Other available API versions: 2025-07-01-preview, 2025-08-01-preview, 2025-09-01, 2026-02-01-preview, 2026-06-01, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mongocluster_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mongocluster:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// List mongo cluster connection strings. This includes the default connection string using SCRAM-SHA-256, as well as other connection strings supported by the cluster.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01, 2026-02-01-preview, 2026-06-01, 2026-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_mongocluster_list_mongo_cluster_connection_strings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListMongoClusterConnectionStringsResult> listMongoClusterConnectionStrings(
  ListMongoClusterConnectionStringsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:mongocluster:listMongoClusterConnectionStrings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListMongoClusterConnectionStringsResult.fromMap(result);
}
