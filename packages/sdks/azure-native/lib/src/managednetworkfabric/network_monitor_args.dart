// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bmp_configuration_properties.dart';

/// {@template pulumi_managednetworkfabric_network_monitor_args_doc}
/// The set of arguments for NetworkMonitor.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_monitor_args_doc}
class NetworkMonitorArgs {
  /// Switch configuration description.
  final pulumi.Input<String?>? annotation;
  /// BMP Configurations for the Network Fabric.
  final pulumi.Input<BmpConfigurationProperties?>? bmpConfiguration;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Name of the Network Monitor.
  final pulumi.Input<String?>? networkMonitorName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [NetworkMonitorArgs].
  /// [annotation] Switch configuration description.
  /// [bmpConfiguration] BMP Configurations for the Network Fabric.
  /// [location] The geo-location where the resource lives
  /// [networkMonitorName] Name of the Network Monitor.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const NetworkMonitorArgs({
    this.annotation,
    this.bmpConfiguration,
    this.location,
    this.networkMonitorName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'bmpConfiguration': ?pulumi.Input.mapOptionalInputValue<BmpConfigurationProperties, Map<String, dynamic>>(bmpConfiguration, (value) => value.toMap()),
      'location': ?location,
      'networkMonitorName': ?networkMonitorName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkMonitorArgs.fromMap(Map<String, dynamic> map) {
    return NetworkMonitorArgs(
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bmpConfiguration: (() { final guardedValue = map['bmpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BmpConfigurationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkMonitorName: (() { final guardedValue = map['networkMonitorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
