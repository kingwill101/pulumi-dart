// ignore_for_file: unused_element, unnecessary_cast

import 'node_group_response.dart';

/// Node group identification and configuration information.
class AuxiliaryNodeGroupResponse {
  /// Node group configuration.
  final NodeGroupResponse nodeGroup;

  /// Optional. A node group ID. Generated if not specified.The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of from 3 to 33 characters.
  final String nodeGroupId;

  AuxiliaryNodeGroupResponse({
    required this.nodeGroup,
    required this.nodeGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeGroup'] = nodeGroup.toMap();
    map['nodeGroupId'] = nodeGroupId;
    return map;
  }

  factory AuxiliaryNodeGroupResponse.fromMap(Map<String, dynamic> map) {
    return AuxiliaryNodeGroupResponse(
      nodeGroup: NodeGroupResponse.fromMap(
          (map['nodeGroup'] as Map).cast<String, dynamic>()),
      nodeGroupId: map['nodeGroupId'] as String,
    );
  }
}
