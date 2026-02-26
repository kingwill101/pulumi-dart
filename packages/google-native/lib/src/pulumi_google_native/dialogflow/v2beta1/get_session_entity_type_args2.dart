// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSessionEntityType.
class GetSessionEntityTypeArgs2 {
  final Input<String> entityTypeId;
  final Input<String> environmentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sessionId;
  final Input<String> userId;

  GetSessionEntityTypeArgs2({
    required this.entityTypeId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityTypeId'] = entityTypeId;
    map['environmentId'] = environmentId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    map['userId'] = userId;
    return map;
  }

  factory GetSessionEntityTypeArgs2.fromMap(Map<String, dynamic> map) {
    return GetSessionEntityTypeArgs2(
      entityTypeId: Input.asInput<String>(map['entityTypeId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
