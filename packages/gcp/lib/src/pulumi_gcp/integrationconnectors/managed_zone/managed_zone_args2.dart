// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ManagedZone.
class ManagedZoneArgs2 {
  /// Description of the resource.
  final Input<String>? description;

  /// DNS Name of the resource.
  final Input<String> dns;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of Managed Zone needs to be created.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the Target Project.
  final Input<String> targetProject;

  /// The name of the Target Project VPC Network.
  final Input<String> targetVpc;

  ManagedZoneArgs2({
    this.description,
    required this.dns,
    this.labels,
    this.name,
    this.project,
    required this.targetProject,
    required this.targetVpc,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['dns'] = dns;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetProject'] = targetProject;
    map['targetVpc'] = targetVpc;
    return map;
  }

  factory ManagedZoneArgs2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      dns: Input.asInput<String>(map['dns']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      targetProject: Input.asInput<String>(map['targetProject']),
      targetVpc: Input.asInput<String>(map['targetVpc']),
    );
  }
}
