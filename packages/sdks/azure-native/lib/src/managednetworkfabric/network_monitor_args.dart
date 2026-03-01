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
    pulumi.Output<String>? location,
    pulumi.Output<String>? networkMonitorName,
    required pulumi.Output<NetworkMonitorProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      networkMonitorName = pulumi.Input.asOptionalInput<String>(networkMonitorName),
      properties = pulumi.Input.asInput<NetworkMonitorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkMonitorName: map['networkMonitorName'] == null ? null : pulumi.Output.create<String>(map['networkMonitorName'] as String),
      properties: pulumi.Output.create<NetworkMonitorProperties>(NetworkMonitorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

