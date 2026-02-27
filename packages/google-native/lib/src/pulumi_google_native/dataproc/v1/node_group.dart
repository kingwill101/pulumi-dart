// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'instance_group_config.dart';
import 'node_group_roles_item.dart';

/// Dataproc Node Group. The Dataproc NodeGroup resource is not related to the Dataproc NodeGroupAffinity resource.
class NodeGroup {
  /// Optional. Node group labels. Label keys must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values can be empty. If specified, they must consist of from 1 to 63 characters and conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). The node group must have no more than 32 labelsn.
  final Map<String, String>? labels;

  /// The Node group resource name (https://aip.dev/122).
  final String? name;

  /// Optional. The node group instance group configuration.
  final InstanceGroupConfig? nodeGroupConfig;

  /// Node group roles.
  final List<NodeGroupRolesItem> roles;

  NodeGroup({
    this.labels,
    this.name,
    this.nodeGroupConfig,
    required this.roles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
      map['nodeGroupConfig'] = nodeGroupConfigValue.toMap();
    }
    map['roles'] = Input.encodeList<NodeGroupRolesItem, String>(
        roles, (value) => value.value);
    return map;
  }

  factory NodeGroup.fromMap(Map<String, dynamic> map) {
    return NodeGroup(
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      nodeGroupConfig: map['nodeGroupConfig'] == null
          ? null
          : InstanceGroupConfig.fromMap(
              (map['nodeGroupConfig'] as Map).cast<String, dynamic>()),
      roles: Input.decodeList<NodeGroupRolesItem>(map['roles'],
          (value) => NodeGroupRolesItem.fromValue(value as String)),
    );
  }
}
