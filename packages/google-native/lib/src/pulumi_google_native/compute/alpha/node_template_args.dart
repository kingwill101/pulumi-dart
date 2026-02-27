// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config.dart';
import 'local_disk.dart';
import 'node_template_cpu_overcommit_type.dart';
import 'node_template_node_type_flexibility.dart';
import 'server_binding.dart';

/// The set of arguments for NodeTemplate.
class NodeTemplateArgs {
  final pulumi.Input<List<AcceleratorConfig>>? accelerators;

  /// CPU overcommit.
  final pulumi.Input<NodeTemplateCpuOvercommitType>? cpuOvercommitType;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<List<LocalDisk>>? disks;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Labels to use for node affinity, which will be used in instance scheduling.
  final pulumi.Input<Map<String, String>>? nodeAffinityLabels;

  /// The node type to use for nodes group that are created from this template.
  final pulumi.Input<String>? nodeType;

  /// Do not use. Instead, use the node_type property.
  final pulumi.Input<NodeTemplateNodeTypeFlexibility>? nodeTypeFlexibility;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  final pulumi.Input<ServerBinding>? serverBinding;

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
    required this.region,
    this.requestId,
    this.serverBinding,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = pulumi.Input.mapOptionalInputValue<
              List<AcceleratorConfig>, List<Map<String, dynamic>>>(
          acceleratorsValue,
          (value) =>
              pulumi.Input.encodeList<AcceleratorConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cpuOvercommitTypeValue = cpuOvercommitType;
    if (cpuOvercommitTypeValue != null) {
      map['cpuOvercommitType'] = pulumi.Input.mapOptionalInputValue<
          NodeTemplateCpuOvercommitType,
          String>(cpuOvercommitTypeValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = pulumi.Input.mapOptionalInputValue<List<LocalDisk>,
              List<Map<String, dynamic>>>(
          disksValue,
          (value) => pulumi.Input.encodeList<LocalDisk, Map<String, dynamic>>(
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
      map['nodeTypeFlexibility'] = pulumi.Input.mapOptionalInputValue<
              NodeTemplateNodeTypeFlexibility, Map<String, dynamic>>(
          nodeTypeFlexibilityValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serverBindingValue = serverBinding;
    if (serverBindingValue != null) {
      map['serverBinding'] = pulumi.Input.mapOptionalInputValue<ServerBinding,
          Map<String, dynamic>>(serverBindingValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return NodeTemplateArgs(
      accelerators: pulumi.Input.asOptionalInput<List<AcceleratorConfig>>(
          map['accelerators']),
      cpuOvercommitType:
          pulumi.Input.asOptionalInput<NodeTemplateCpuOvercommitType>(
              map['cpuOvercommitType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disks: pulumi.Input.asOptionalInput<List<LocalDisk>>(map['disks']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nodeAffinityLabels: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['nodeAffinityLabels']),
      nodeType: pulumi.Input.asOptionalInput<String>(map['nodeType']),
      nodeTypeFlexibility:
          pulumi.Input.asOptionalInput<NodeTemplateNodeTypeFlexibility>(
              map['nodeTypeFlexibility']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serverBinding:
          pulumi.Input.asOptionalInput<ServerBinding>(map['serverBinding']),
    );
  }
}
