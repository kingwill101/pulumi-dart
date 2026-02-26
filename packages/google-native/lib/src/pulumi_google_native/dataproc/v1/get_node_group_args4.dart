// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNodeGroup.
class GetNodeGroupArgs4 {
  final Input<String> clusterId;
  final Input<String> nodeGroupId;
  final Input<String>? project;
  final Input<String> regionId;

  GetNodeGroupArgs4({
    required this.clusterId,
    required this.nodeGroupId,
    this.project,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['nodeGroupId'] = nodeGroupId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['regionId'] = regionId;
    return map;
  }

  factory GetNodeGroupArgs4.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs4(
      clusterId: Input.asInput<String>(map['clusterId']),
      nodeGroupId: Input.asInput<String>(map['nodeGroupId']),
      project: Input.asOptionalInput<String>(map['project']),
      regionId: Input.asInput<String>(map['regionId']),
    );
  }
}
