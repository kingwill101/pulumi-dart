// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNodeGroup.
class GetNodeGroupArgs3 {
  final Input<String> nodeGroup;
  final Input<String>? project;
  final Input<String> zone;

  GetNodeGroupArgs3({
    required this.nodeGroup,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nodeGroup'] = nodeGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetNodeGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupArgs3(
      nodeGroup: Input.asInput<String>(map['nodeGroup']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
