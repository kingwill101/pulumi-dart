// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNodeGroup.
class GetNodeGroupComputeBetaArgs {
  final pulumi.Input<String> nodeGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetNodeGroupComputeBetaArgs({
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

  factory GetNodeGroupComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupComputeBetaArgs(
      nodeGroup: pulumi.Input.asInput<String>(map['nodeGroup']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
