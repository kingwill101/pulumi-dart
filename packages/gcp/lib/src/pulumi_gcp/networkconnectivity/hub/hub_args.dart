// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Hub.
class HubArgs {
  /// An optional description of the hub.
  final pulumi.Input<String>? description;

  /// Whether Private Service Connect transitivity is enabled for the hub. If true, Private Service Connect endpoints in VPC spokes attached to the hub are made accessible to other VPC spokes attached to the hub. The default value is false.
  final pulumi.Input<bool>? exportPsc;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  final pulumi.Input<String>? name;

  /// Optional. The policy mode of this hub. This field can be either PRESET or CUSTOM. If unspecified, the policyMode defaults to PRESET.
  /// Possible values are: `CUSTOM`, `PRESET`.
  final pulumi.Input<String>? policyMode;

  /// Optional. The topology implemented in this hub. Currently, this field is only used when policyMode = PRESET. The available preset topologies are MESH and STAR. If presetTopology is unspecified and policyMode = PRESET, the presetTopology defaults to MESH. When policyMode = CUSTOM, the presetTopology is set to PRESET_TOPOLOGY_UNSPECIFIED.
  /// Possible values are: `MESH`, `STAR`, `HYBRID_INSPECTION`.
  final pulumi.Input<String>? presetTopology;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  HubArgs({
    this.description,
    this.exportPsc,
    this.labels,
    this.name,
    this.policyMode,
    this.presetTopology,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final exportPscValue = exportPsc;
    if (exportPscValue != null) {
      map['exportPsc'] = exportPscValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyModeValue = policyMode;
    if (policyModeValue != null) {
      map['policyMode'] = policyModeValue;
    }
    final presetTopologyValue = presetTopology;
    if (presetTopologyValue != null) {
      map['presetTopology'] = presetTopologyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      exportPsc: pulumi.Input.asOptionalInput<bool>(map['exportPsc']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyMode: pulumi.Input.asOptionalInput<String>(map['policyMode']),
      presetTopology:
          pulumi.Input.asOptionalInput<String>(map['presetTopology']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
