// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVersion.
class GetVersionArgs6 {
  final Input<String> agentId;
  final Input<String> flowId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> versionId;

  GetVersionArgs6({
    required this.agentId,
    required this.flowId,
    required this.location,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['flowId'] = flowId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionArgs6.fromMap(Map<String, dynamic> map) {
    return GetVersionArgs6(
      agentId: Input.asInput<String>(map['agentId']),
      flowId: Input.asInput<String>(map['flowId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      versionId: Input.asInput<String>(map['versionId']),
    );
  }
}
