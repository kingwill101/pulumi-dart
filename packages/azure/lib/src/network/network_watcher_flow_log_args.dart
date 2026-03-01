// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_watcher_flow_log_retention_policy.dart';
import 'network_watcher_flow_log_traffic_analytics.dart';

/// {@template pulumi_network_network_watcher_flow_log_network_watcher_flow_log_args_doc}
/// The set of arguments for NetworkWatcherFlowLog.
/// {@endtemplate}
/// {@macro pulumi_network_network_watcher_flow_log_network_watcher_flow_log_args_doc}
class NetworkWatcherFlowLogArgs {
  /// Should Network Flow Logging be Enabled?
  final pulumi.Input<bool> enabled;
  /// The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher.
  final pulumi.Input<String>? location;
  /// The name of the Network Watcher Flow Log. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? networkSecurityGroupId;
  /// The name of the Network Watcher. Changing this forces a new resource to be created.
  final pulumi.Input<String> networkWatcherName;
  /// The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `retention_policy` block as documented below.
  final pulumi.Input<NetworkWatcherFlowLogRetentionPolicy> retentionPolicy;
  /// The ID of the Storage Account where flow logs are stored.
  final pulumi.Input<String> storageAccountId;
  /// A mapping of tags which should be assigned to the Network Watcher Flow Log.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Resource for which to enable flow logs for.
  ///
  /// > **Note:** As of July 30, 2025, it is no longer possible to create new flow logs for Network Security Groups.
  final pulumi.Input<String>? targetResourceId;
  /// A `traffic_analytics` block as documented below.
  final pulumi.Input<NetworkWatcherFlowLogTrafficAnalytics>? trafficAnalytics;
  /// The version (revision) of the flow log. Possible values are `1` and `2`. Defaults to `1`.
  final pulumi.Input<int>? version;

  /// Creates a new [NetworkWatcherFlowLogArgs].
  /// [enabled] Should Network Flow Logging be Enabled?
  /// [location] The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher.
  /// [name] The name of the Network Watcher Flow Log. Changing this forces a new resource to be created.
  /// [networkSecurityGroupId] Optional.
  /// [networkWatcherName] The name of the Network Watcher. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created.
  /// [retentionPolicy] A `retention_policy` block as documented below.
  /// [storageAccountId] The ID of the Storage Account where flow logs are stored.
  /// [tags] A mapping of tags which should be assigned to the Network Watcher Flow Log.
  /// [targetResourceId] The ID of the Resource for which to enable flow logs for.
  /// [trafficAnalytics] A `traffic_analytics` block as documented below.
  /// [version] The version (revision) of the flow log. Possible values are `1` and `2`. Defaults to `1`.
  NetworkWatcherFlowLogArgs({
    required bool enabled,
    String? location,
    String? name,
    String? networkSecurityGroupId,
    required String networkWatcherName,
    required String resourceGroupName,
    required NetworkWatcherFlowLogRetentionPolicy retentionPolicy,
    required String storageAccountId,
    Map<String, String>? tags,
    String? targetResourceId,
    NetworkWatcherFlowLogTrafficAnalytics? trafficAnalytics,
    int? version,
  }) :
      enabled = pulumi.Input.asInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkSecurityGroupId = pulumi.Input.asOptionalInput<String>(networkSecurityGroupId),
      networkWatcherName = pulumi.Input.asInput<String>(networkWatcherName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionPolicy = pulumi.Input.asInput<NetworkWatcherFlowLogRetentionPolicy>(retentionPolicy),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceId = pulumi.Input.asOptionalInput<String>(targetResourceId),
      trafficAnalytics = pulumi.Input.asOptionalInput<NetworkWatcherFlowLogTrafficAnalytics>(trafficAnalytics),
      version = pulumi.Input.asOptionalInput<int>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'location': ?location,
      'name': ?name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'networkWatcherName': networkWatcherName,
      'resourceGroupName': resourceGroupName,
      'retentionPolicy': pulumi.Input.mapInputValue<NetworkWatcherFlowLogRetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'storageAccountId': storageAccountId,
      'tags': ?tags,
      'targetResourceId': ?targetResourceId,
      'trafficAnalytics': ?pulumi.Input.mapOptionalInputValue<NetworkWatcherFlowLogTrafficAnalytics, Map<String, dynamic>>(trafficAnalytics, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory NetworkWatcherFlowLogArgs.fromMap(Map<String, dynamic> map) {
    return NetworkWatcherFlowLogArgs(
      enabled: map['enabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : map['networkSecurityGroupId'] as String,
      networkWatcherName: map['networkWatcherName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionPolicy: NetworkWatcherFlowLogRetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      storageAccountId: map['storageAccountId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetResourceId: map['targetResourceId'] == null ? null : map['targetResourceId'] as String,
      trafficAnalytics: map['trafficAnalytics'] == null ? null : NetworkWatcherFlowLogTrafficAnalytics.fromMap((map['trafficAnalytics'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}

