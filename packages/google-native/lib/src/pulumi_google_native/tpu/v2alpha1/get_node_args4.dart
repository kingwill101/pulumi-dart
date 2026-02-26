// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNode.
class GetNodeArgs4 {
  final Input<String> location;
  final Input<String> nodeId;
  final Input<String>? project;

  GetNodeArgs4({
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

  factory GetNodeArgs4.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs4(
      location: Input.asInput<String>(map['location']),
      nodeId: Input.asInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
