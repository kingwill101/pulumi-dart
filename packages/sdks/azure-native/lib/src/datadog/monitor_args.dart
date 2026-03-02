// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';
import 'monitor_properties.dart';
import 'resource_sku.dart';

/// {@template pulumi_datadog_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_datadog_monitor_args_doc}
class MonitorArgs {
  final pulumi.Input<IdentityProperties>? identity;
  final pulumi.Input<String>? location;
  /// Monitor resource name
  final pulumi.Input<String>? monitorName;
  /// Properties specific to the monitor resource.
  final pulumi.Input<MonitorProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<ResourceSku>? sku;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MonitorArgs].
  /// [identity] Optional.
  /// [location] Optional.
  /// [monitorName] Monitor resource name
  /// [properties] Properties specific to the monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Optional.
  /// [tags] Optional.
  MonitorArgs({
    this.identity,
    this.location,
    this.monitorName,
    this.properties,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityProperties, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'monitorName': ?monitorName,
      'properties': ?pulumi.Input.mapOptionalInputValue<MonitorProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ResourceSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      identity: map['identity'] == null ? null : (IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      monitorName: map['monitorName'] == null ? null : (map['monitorName'] as String).input(),
      properties: map['properties'] == null ? null : (MonitorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (ResourceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

