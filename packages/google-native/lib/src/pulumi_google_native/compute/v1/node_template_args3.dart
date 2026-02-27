// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config3.dart';
import 'local_disk3.dart';
import 'node_template_cpu_overcommit_type3.dart';
import 'node_template_node_type_flexibility3.dart';
import 'server_binding3.dart';

/// The set of arguments for NodeTemplate.
class NodeTemplateArgs3 {
  final Input<List<AcceleratorConfig3>>? accelerators;

  /// CPU overcommit.
  final Input<NodeTemplateCpuOvercommitType3>? cpuOvercommitType;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;
  final Input<List<LocalDisk3>>? disks;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Labels to use for node affinity, which will be used in instance scheduling.
  final Input<Map<String, String>>? nodeAffinityLabels;

  /// The node type to use for nodes group that are created from this template.
  final Input<String>? nodeType;

  /// Do not use. Instead, use the node_type property.
  final Input<NodeTemplateNodeTypeFlexibility3>? nodeTypeFlexibility;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  final Input<ServerBinding3>? serverBinding;

  NodeTemplateArgs3({
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
      map['accelerators'] = Input.mapOptionalInputValue<
              List<AcceleratorConfig3>, List<Map<String, dynamic>>>(
          acceleratorsValue,
          (value) => Input.encodeList<AcceleratorConfig3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final cpuOvercommitTypeValue = cpuOvercommitType;
    if (cpuOvercommitTypeValue != null) {
      map['cpuOvercommitType'] =
          Input.mapOptionalInputValue<NodeTemplateCpuOvercommitType3, String>(
              cpuOvercommitTypeValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] = Input.mapOptionalInputValue<List<LocalDisk3>,
              List<Map<String, dynamic>>>(
          disksValue,
          (value) => Input.encodeList<LocalDisk3, Map<String, dynamic>>(
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
              NodeTemplateNodeTypeFlexibility3, Map<String, dynamic>>(
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
      map['serverBinding'] =
          Input.mapOptionalInputValue<ServerBinding3, Map<String, dynamic>>(
              serverBindingValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeTemplateArgs3.fromMap(Map<String, dynamic> map) {
    return NodeTemplateArgs3(
      accelerators:
          Input.asOptionalInput<List<AcceleratorConfig3>>(map['accelerators']),
      cpuOvercommitType: Input.asOptionalInput<NodeTemplateCpuOvercommitType3>(
          map['cpuOvercommitType']),
      description: Input.asOptionalInput<String>(map['description']),
      disks: Input.asOptionalInput<List<LocalDisk3>>(map['disks']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeAffinityLabels:
          Input.asOptionalInput<Map<String, String>>(map['nodeAffinityLabels']),
      nodeType: Input.asOptionalInput<String>(map['nodeType']),
      nodeTypeFlexibility:
          Input.asOptionalInput<NodeTemplateNodeTypeFlexibility3>(
              map['nodeTypeFlexibility']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      serverBinding:
          Input.asOptionalInput<ServerBinding3>(map['serverBinding']),
    );
  }
}
