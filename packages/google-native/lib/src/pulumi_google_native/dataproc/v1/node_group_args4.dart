// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'instance_group_config.dart';
import 'node_group_roles_item.dart';

/// The set of arguments for NodeGroup.
class NodeGroupArgs4 {
  final Input<String> clusterId;

  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  final Input<Map<String, String>>? labels;

  /// The Node group resource name (https://aip.dev/122).
  final Input<String>? name;

  /// Optional. The node group instance group configuration.
  final Input<InstanceGroupConfig>? nodeGroupConfig;

  /// Optional. An optional node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final Input<String>? nodeGroupId;

  /// Optional. operation id of the parent operation sending the create request
  final Input<String>? parentOperationId;
  final Input<String>? project;
  final Input<String> regionId;

  /// Optional. A unique ID used to identify the request. If the server receives two CreateNodeGroupRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateNodeGroupRequests) with the same ID, the second request is ignored and the first google.longrunning.Operation created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  final Input<String>? requestId;

  /// Node group roles.
  final Input<List<NodeGroupRolesItem>> roles;

  NodeGroupArgs4({
    required this.clusterId,
    this.labels,
    this.name,
    this.nodeGroupConfig,
    this.nodeGroupId,
    this.parentOperationId,
    this.project,
    required this.regionId,
    this.requestId,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeGroupConfigValue = nodeGroupConfig;
    if (nodeGroupConfigValue != null) {
      map['nodeGroupConfig'] = Input.mapOptionalInputValue<InstanceGroupConfig,
          Map<String, dynamic>>(nodeGroupConfigValue, (value) => value.toMap());
    }
    final nodeGroupIdValue = nodeGroupId;
    if (nodeGroupIdValue != null) {
      map['nodeGroupId'] = nodeGroupIdValue;
    }
    final parentOperationIdValue = parentOperationId;
    if (parentOperationIdValue != null) {
      map['parentOperationId'] = parentOperationIdValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['roles'] = Input.mapInputValue<List<NodeGroupRolesItem>, List<String>>(
        roles,
        (value) => Input.encodeList<NodeGroupRolesItem, String>(
            value, (value) => value.value));
    return map;
  }

  factory NodeGroupArgs4.fromMap(Map<String, dynamic> map) {
    return NodeGroupArgs4(
      clusterId: Input.asInput<String>(map['clusterId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeGroupConfig:
          Input.asOptionalInput<InstanceGroupConfig>(map['nodeGroupConfig']),
      nodeGroupId: Input.asOptionalInput<String>(map['nodeGroupId']),
      parentOperationId:
          Input.asOptionalInput<String>(map['parentOperationId']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      roles: Input.asInput<List<NodeGroupRolesItem>>(map['roles']),
    );
  }
}
