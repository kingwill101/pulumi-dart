// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties.dart';
import 'monitor_properties.dart';
import 'resource_sku.dart';

/// {@template pulumi_elastic_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_elastic_monitor_args_doc}
class MonitorArgs {
  /// Identity properties of the monitor resource.
  final pulumi.Input<IdentityProperties>? identity;
  /// The location of the monitor resource
  final pulumi.Input<String>? location;
  /// Monitor resource name
  final pulumi.Input<String>? monitorName;
  /// Properties of the monitor resource.
  final pulumi.Input<MonitorProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the monitor resource.
  final pulumi.Input<ResourceSku>? sku;
  /// The tags of the monitor resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MonitorArgs].
  /// [identity] Identity properties of the monitor resource.
  /// [location] The location of the monitor resource
  /// [monitorName] Monitor resource name
  /// [properties] Properties of the monitor resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the monitor resource.
  /// [tags] The tags of the monitor resource.
  MonitorArgs({
    pulumi.Output<IdentityProperties>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? monitorName,
    pulumi.Output<MonitorProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResourceSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<IdentityProperties>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      monitorName = pulumi.Input.asOptionalInput<String>(monitorName),
      properties = pulumi.Input.asOptionalInput<MonitorProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<ResourceSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityProperties>(IdentityProperties.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      monitorName: map['monitorName'] == null ? null : pulumi.Output.create<String>(map['monitorName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<MonitorProperties>(MonitorProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<ResourceSku>(ResourceSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

