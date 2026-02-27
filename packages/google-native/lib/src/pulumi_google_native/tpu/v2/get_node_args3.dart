// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getNode.
class GetNodeArgs3 {
  final Input<String> location;
  final Input<String> nodeId;
  final Input<String>? project;

  GetNodeArgs3({
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

  factory GetNodeArgs3.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs3(
      location: Input.asInput<String>(map['location']),
      nodeId: Input.asInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
