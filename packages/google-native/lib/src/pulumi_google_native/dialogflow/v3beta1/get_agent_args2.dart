// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAgent.
class GetAgentArgs2 {
  final Input<String> agentId;
  final Input<String> location;
  final Input<String>? project;

  GetAgentArgs2({
    required this.agentId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAgentArgs2.fromMap(Map<String, dynamic> map) {
    return GetAgentArgs2(
      agentId: Input.asInput<String>(map['agentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
