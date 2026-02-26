// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNode.
class GetNodeArgs2 {
  final Input<String> location;
  final Input<String> nodeId;
  final Input<String>? project;

  GetNodeArgs2({
    required this.location,
    required this.nodeId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['nodeId'] = nodeId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNodeArgs2.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs2(
      location: Input.asInput<String>(map['location']),
      nodeId: Input.asInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
