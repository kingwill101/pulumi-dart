// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_group_named_port/get_instance_group_named_port.dart';

/// Result data returned by getInstanceGroup.
class GetInstanceGroupResult {
  /// Textual description of the instance group.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of instances in the group.
  final List<String> instances;
  final String? name;

  /// List of named ports in the group.
  final List<GetInstanceGroupNamedPort> namedPorts;

  /// The URL of the network the instance group is in.
  final String network;
  final String project;

  /// The URI of the resource.
  final String selfLink;

  /// The number of instances in the group.
  final int size;
  final String zone;

  GetInstanceGroupResult({
    required this.description,
    required this.id,
    required this.instances,
    this.name,
    required this.namedPorts,
    required this.network,
    required this.project,
    required this.selfLink,
    required this.size,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['id'] = id;
    map['instances'] = instances;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['namedPorts'] =
        Input.encodeList<GetInstanceGroupNamedPort, Map<String, dynamic>>(
            namedPorts, (value) => value.toMap());
    map['network'] = network;
    map['project'] = project;
    map['selfLink'] = selfLink;
    map['size'] = size;
    map['zone'] = zone;
    return map;
  }

  factory GetInstanceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupResult(
      description: map['description'] as String,
      id: map['id'] as String,
      instances: (map['instances'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      namedPorts: Input.decodeList<GetInstanceGroupNamedPort>(
          map['namedPorts'],
          (value) => GetInstanceGroupNamedPort.fromMap(
              (value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      size: map['size'] as int,
      zone: map['zone'] as String,
    );
  }
}
