// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNode.
class GetNodeTpuV2alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> nodeId;
  final pulumi.Input<String>? project;

  GetNodeTpuV2alpha1Args({
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

  factory GetNodeTpuV2alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetNodeTpuV2alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      nodeId: pulumi.Input.asInput<String>(map['nodeId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
