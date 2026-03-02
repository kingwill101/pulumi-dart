// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_monitor_properties.dart';

/// {@template pulumi_managednetworkfabric_network_monitor_args_doc}
/// The set of arguments for NetworkMonitor.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_monitor_args_doc}
class NetworkMonitorArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the Network Monitor.
  final pulumi.Input<String>? networkMonitorName;
  /// The NetworkFabric Properties
  final pulumi.Input<NetworkMonitorProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkMonitorArgs].
  /// [location] The geo-location where the resource lives
  /// [networkMonitorName] Name of the Network Monitor.
  /// [properties] The NetworkFabric Properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkMonitorArgs({
    this.location,
    this.networkMonitorName,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'networkMonitorName': ?networkMonitorName,
      'properties': pulumi.Input.mapInputValue<NetworkMonitorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkMonitorArgs.fromMap(Map<String, dynamic> map) {
    return NetworkMonitorArgs(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkMonitorName: map['networkMonitorName'] == null ? null : (map['networkMonitorName']! as String).input(),
      properties: (NetworkMonitorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

