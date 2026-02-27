// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ManagedZone.
class ManagedZoneArgs {
  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;

  /// DNS Name of the resource
  final pulumi.Input<String> dns;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;

  /// Required. Identifier to assign to the ManagedZone. Must be unique within scope of the parent resource.
  final pulumi.Input<String> managedZoneId;
  final pulumi.Input<String>? project;

  /// The name of the Target Project
  final pulumi.Input<String> targetProject;

  /// The name of the Target Project VPC Network
  final pulumi.Input<String> targetVpc;

  ManagedZoneArgs({
    this.description,
    required this.dns,
    this.labels,
    required this.managedZoneId,
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
    map['managedZoneId'] = managedZoneId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetProject'] = targetProject;
    map['targetVpc'] = targetVpc;
    return map;
  }

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dns: pulumi.Input.asInput<String>(map['dns']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      managedZoneId: pulumi.Input.asInput<String>(map['managedZoneId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetProject: pulumi.Input.asInput<String>(map['targetProject']),
      targetVpc: pulumi.Input.asInput<String>(map['targetVpc']),
    );
  }
}
