// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_template_accelerator/node_template_accelerator.dart';
import '../node_template_disk/node_template_disk.dart';
import '../node_template_node_type_flexibility/node_template_node_type_flexibility.dart';
import '../node_template_server_binding/node_template_server_binding.dart';

/// The set of arguments for NodeTemplate.
class NodeTemplateArgs {
  /// List of the type and count of accelerator cards attached to the
  /// node template
  /// Structure is documented below.
  final Input<List<NodeTemplateAccelerator>>? accelerators;

  /// CPU overcommit.
  /// Default value is `NONE`.
  /// Possible values are: `ENABLED`, `NONE`.
  final Input<String>? cpuOvercommitType;

  /// An optional textual description of the resource.
  final Input<String>? description;

  /// List of the type, size and count of disks attached to the
  /// node template
  /// Structure is documented below.
  final Input<List<NodeTemplateDisk>>? disks;

  /// Name of the resource.
  final Input<String>? name;

  /// Labels to use for node affinity, which will be used in
  /// instance scheduling.
  final Input<Map<String, String>>? nodeAffinityLabels;

  /// Node type to use for nodes group that are created from this template.
  /// Only one of nodeTypeFlexibility and nodeType can be specified.
  final Input<String>? nodeType;

  /// Flexible properties for the desired node type. Node groups that
  /// use this node template will create nodes of a type that matches
  /// these properties. Only one of nodeTypeFlexibility and nodeType can
  /// be specified.
  /// Structure is documented below.
  final Input<NodeTemplateNodeTypeFlexibility>? nodeTypeFlexibility;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where nodes using the node template will be created.
  /// If it is not provided, the provider region is used.
  final Input<String>? region;

  /// The server binding policy for nodes using this template. Determines
  /// where the nodes should restart following a maintenance event.
  /// Structure is documented below.
  final Input<NodeTemplateServerBinding>? serverBinding;

  NodeTemplateArgs({
    this.accelerators,
    this.cpuOvercommitType,
    this.description,
    this.disks,
    this.name,
    this.nodeAffinityLabels,
    this.nodeType,
    this.nodeTypeFlexibility,
    this.project,
    this.region,
    this.serverBinding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = Input.mapOptionalInputValue<
              List<NodeTemplateAccelerator>, List<Map<String, dynamic>>>(
          acceleratorsValue,
          (value) =>
              Input.encodeList<NodeTemplateAccelerator, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cpuOvercommitTypeValue = cpuOvercommitType;
    if (cpuOvercommitTypeValue != null) {
      map['cpuOvercommitType'] = cpuOvercommitTypeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.mapOptionalInputValue<List<NodeTemplateDisk>,
              List<Map<String, dynamic>>>(
          disksValue,
          (value) => Input.encodeList<NodeTemplateDisk, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeAffinityLabelsValue = nodeAffinityLabels;
    if (nodeAffinityLabelsValue != null) {
      map['nodeAffinityLabels'] = nodeAffinityLabelsValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final nodeTypeFlexibilityValue = nodeTypeFlexibility;
    if (nodeTypeFlexibilityValue != null) {
      map['nodeTypeFlexibility'] = Input.mapOptionalInputValue<
              NodeTemplateNodeTypeFlexibility, Map<String, dynamic>>(
          nodeTypeFlexibilityValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverBindingValue = serverBinding;
    if (serverBindingValue != null) {
      map['serverBinding'] = Input.mapOptionalInputValue<
          NodeTemplateServerBinding,
          Map<String, dynamic>>(serverBindingValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return NodeTemplateArgs(
      accelerators: Input.asOptionalInput<List<NodeTemplateAccelerator>>(
          map['accelerators']),
      cpuOvercommitType:
          Input.asOptionalInput<String>(map['cpuOvercommitType']),
      description: Input.asOptionalInput<String>(map['description']),
      disks: Input.asOptionalInput<List<NodeTemplateDisk>>(map['disks']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeAffinityLabels:
          Input.asOptionalInput<Map<String, String>>(map['nodeAffinityLabels']),
      nodeType: Input.asOptionalInput<String>(map['nodeType']),
      nodeTypeFlexibility:
          Input.asOptionalInput<NodeTemplateNodeTypeFlexibility>(
              map['nodeTypeFlexibility']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      serverBinding: Input.asOptionalInput<NodeTemplateServerBinding>(
          map['serverBinding']),
    );
  }
}
