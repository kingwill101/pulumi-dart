// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response.dart';
import 'local_disk_response.dart';
import 'node_template_node_type_flexibility_response.dart';
import 'server_binding_response.dart';

/// Result data returned by getNodeTemplate.
class GetNodeTemplateResult {
  final List<AcceleratorConfigResponse> accelerators;

  /// CPU overcommit.
  final String cpuOvercommitType;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  final List<LocalDiskResponse> disks;

  /// The type of the resource. Always compute#nodeTemplate for node templates.
  final String kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Labels to use for node affinity, which will be used in instance scheduling.
  final Map<String, String> nodeAffinityLabels;

  /// The node type to use for nodes group that are created from this template.
  final String nodeType;

  /// Do not use. Instead, use the node_type property.
  final NodeTemplateNodeTypeFlexibilityResponse nodeTypeFlexibility;

  /// The name of the region where the node template resides, such as us-central1.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  final ServerBindingResponse serverBinding;

  /// The status of the node template. One of the following values: CREATING, READY, and DELETING.
  final String status;

  /// An optional, human-readable explanation of the status.
  final String statusMessage;

  GetNodeTemplateResult({
    required this.accelerators,
    required this.cpuOvercommitType,
    required this.creationTimestamp,
    required this.description,
    required this.disks,
    required this.kind,
    required this.name,
    required this.nodeAffinityLabels,
    required this.nodeType,
    required this.nodeTypeFlexibility,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.serverBinding,
    required this.status,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerators'] = pulumi.Input.encodeList<AcceleratorConfigResponse,
        Map<String, dynamic>>(accelerators, (value) => value.toMap());
    map['cpuOvercommitType'] = cpuOvercommitType;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['disks'] =
        pulumi.Input.encodeList<LocalDiskResponse, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['kind'] = kind;
    map['name'] = name;
    map['nodeAffinityLabels'] = nodeAffinityLabels;
    map['nodeType'] = nodeType;
    map['nodeTypeFlexibility'] = nodeTypeFlexibility.toMap();
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['selfLinkWithId'] = selfLinkWithId;
    map['serverBinding'] = serverBinding.toMap();
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    return map;
  }

  factory GetNodeTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateResult(
      accelerators: pulumi.Input.decodeList<AcceleratorConfigResponse>(
          map['accelerators'],
          (value) => AcceleratorConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      cpuOvercommitType: map['cpuOvercommitType'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      disks: pulumi.Input.decodeList<LocalDiskResponse>(
          map['disks'],
          (value) => LocalDiskResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      name: map['name'] as String,
      nodeAffinityLabels:
          (map['nodeAffinityLabels'] as Map).cast<String, String>(),
      nodeType: map['nodeType'] as String,
      nodeTypeFlexibility: NodeTemplateNodeTypeFlexibilityResponse.fromMap(
          (map['nodeTypeFlexibility'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      serverBinding: ServerBindingResponse.fromMap(
          (map['serverBinding'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}
