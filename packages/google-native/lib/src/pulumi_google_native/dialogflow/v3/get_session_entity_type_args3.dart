// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSessionEntityType.
class GetSessionEntityTypeArgs3 {
  final Input<String> agentId;
  final Input<String> entityTypeId;
  final Input<String> environmentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sessionId;

  GetSessionEntityTypeArgs3({
    required this.agentId,
    required this.entityTypeId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['entityTypeId'] = entityTypeId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory GetSessionEntityTypeArgs3.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeArgs3(
      agentId: Input.asInput<String>(map['agentId']),
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
    );
  }
}
