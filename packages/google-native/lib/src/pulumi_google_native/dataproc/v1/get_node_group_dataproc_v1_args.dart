// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNodeGroup.
class GetNodeGroupDataprocV1Args {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> nodeGroupId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> regionId;

  GetNodeGroupDataprocV1Args({
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

  factory GetNodeGroupDataprocV1Args.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupDataprocV1Args(
      clusterId: pulumi.Input.asInput<String>(map['clusterId']),
      nodeGroupId: pulumi.Input.asInput<String>(map['nodeGroupId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regionId: pulumi.Input.asInput<String>(map['regionId']),
    );
  }
}
