// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ManagedZone.
class ManagedZoneIntegrationconnectorsArgs {
  /// Description of the resource.
  final pulumi.Input<String>? description;

  /// DNS Name of the resource.
  final pulumi.Input<String> dns;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of Managed Zone needs to be created.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the Target Project.
  final pulumi.Input<String> targetProject;

  /// The name of the Target Project VPC Network.
  final pulumi.Input<String> targetVpc;

  ManagedZoneIntegrationconnectorsArgs({
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

  factory ManagedZoneIntegrationconnectorsArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneIntegrationconnectorsArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dns: pulumi.Input.asInput<String>(map['dns']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetProject: pulumi.Input.asInput<String>(map['targetProject']),
      targetVpc: pulumi.Input.asInput<String>(map['targetVpc']),
    );
  }
}
