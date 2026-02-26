// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for InstanceGroupNamedPort.
class InstanceGroupNamedPortArgs {
  /// The name of the instance group.
  final Input<String> group;

  /// The name for this named port. The name must be 1-63 characters
  /// long, and comply with RFC1035.
  final Input<String>? name;

  /// The port number, which can be a value between 1 and 65535.
  final Input<int> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The zone of the instance group.
  final Input<String>? zone;

  InstanceGroupNamedPortArgs({
    required this.group,
    this.name,
    required this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['group'] = group;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['port'] = port;
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

  factory InstanceGroupNamedPortArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupNamedPortArgs(
      group: Input.asInput<String>(map['group']),
      name: Input.asOptionalInput<String>(map['name']),
      port: Input.asInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
