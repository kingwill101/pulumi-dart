// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostGroup.
class HostGroupArgs {
  /// An optional description of this resource.
  final Input<String>? description;

  /// The list of hosts associated with the host group
  final Input<List<String>> hosts;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location (region) of the Host Group.
  final Input<String> location;

  /// The resource name of the Host Group. Needs to be unique per location.
  final Input<String>? name;

  /// The OS type of the host group. It indicates the type of operating system
  /// used by all of the hosts in the HostGroup. All hosts in a HostGroup must be
  /// of the same OS type. This can be set only when creating a HostGroup.
  /// Possible values are: `LINUX`, `WINDOWS`, `ESXI`.
  final Input<String> osType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Type of the host group.
  /// Possible values are: `ISCSI_INITIATOR`.
  final Input<String> type;

  HostGroupArgs({
    this.description,
    required this.hosts,
    this.labels,
    required this.location,
    this.name,
    required this.osType,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['hosts'] = hosts;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['osType'] = osType;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    return map;
  }

  factory HostGroupArgs.fromMap(Map<String, dynamic> map) {
    return HostGroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      hosts: Input.asInput<List<String>>(map['hosts']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      osType: Input.asInput<String>(map['osType']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
