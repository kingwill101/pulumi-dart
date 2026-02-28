// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrationconnectors_managed_zone_managed_zone_args_doc}
/// The set of arguments for ManagedZone.
/// {@endtemplate}
/// {@macro pulumi_integrationconnectors_managed_zone_managed_zone_args_doc}
class ManagedZoneArgs {
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

  /// Creates a new [ManagedZoneArgs].
  /// [description] Description of the resource.
  /// [dns] DNS Name of the resource.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] Name of Managed Zone needs to be created.
  /// [project] The ID of the project in which the resource belongs.
  /// [targetProject] The name of the Target Project.
  /// [targetVpc] The name of the Target Project VPC Network.
  ManagedZoneArgs({
    String? description,
    required String dns,
    Map<String, String>? labels,
    String? name,
    String? project,
    required String targetProject,
    required String targetVpc,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        dns = pulumi.Input.asInput<String>(dns),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        targetProject = pulumi.Input.asInput<String>(targetProject),
        targetVpc = pulumi.Input.asInput<String>(targetVpc);

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

  factory ManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return ManagedZoneArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      dns: map['dns'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      targetProject: map['targetProject'] as String,
      targetVpc: map['targetVpc'] as String,
    );
  }
}
