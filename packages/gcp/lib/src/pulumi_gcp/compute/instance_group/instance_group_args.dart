// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_group_named_port/instance_group_named_port.dart';

/// The set of arguments for InstanceGroup.
class InstanceGroupArgs {
  /// An optional textual description of the instance
  /// group.
  final pulumi.Input<String>? description;

  /// The list of instances in the group, in `self_link` format.
  /// When adding instances they must all be in the same network and zone as the instance group.
  final pulumi.Input<List<String>>? instances;

  /// The name of the instance group. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final pulumi.Input<String>? name;

  /// The named port configuration. See the section below
  /// for details on configuration. Structure is documented below.
  final pulumi.Input<List<InstanceGroupNamedPort>>? namedPorts;

  /// The URL of the network the instance group is in. If
  /// this is different from the network where the instances are in, the creation
  /// fails. Defaults to the network where the instances are in (if neither
  /// `network` nor `instances` is specified, this field will be blank).
  final pulumi.Input<String>? network;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The zone that this instance group should be created in.
  ///
  /// - - -
  final pulumi.Input<String>? zone;

  InstanceGroupArgs({
    this.description,
    this.instances,
    this.name,
    this.namedPorts,
    this.network,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = instancesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namedPortsValue = namedPorts;
    if (namedPortsValue != null) {
      map['namedPorts'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceGroupNamedPort>, List<Map<String, dynamic>>>(
          namedPortsValue,
          (value) => pulumi.Input.encodeList<InstanceGroupNamedPort,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory InstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instances: pulumi.Input.asOptionalInput<List<String>>(map['instances']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namedPorts: pulumi.Input.asOptionalInput<List<InstanceGroupNamedPort>>(
          map['namedPorts']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
