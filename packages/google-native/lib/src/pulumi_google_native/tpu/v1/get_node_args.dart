// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNode.
class GetNodeArgs {
  final Input<String> location;
  final Input<String> nodeId;
  final Input<String>? project;

  GetNodeArgs({
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

  factory GetNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeArgs(
      location: Input.asInput<String>(map['location']),
      nodeId: Input.asInput<String>(map['nodeId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
