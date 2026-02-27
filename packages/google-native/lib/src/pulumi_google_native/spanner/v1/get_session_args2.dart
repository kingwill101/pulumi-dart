// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSession.
class GetSessionArgs2 {
  final Input<String> databaseId;
  final Input<String> instanceId;
  final Input<String>? project;
  final Input<String> sessionId;

  GetSessionArgs2({
    required this.databaseId,
    required this.instanceId,
    this.project,
    required this.sessionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseId'] = databaseId;
    map['instanceId'] = instanceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sessionId'] = sessionId;
    return map;
  }

  factory GetSessionArgs2.fromMap(Map<String, dynamic> map) {
    return GetSessionArgs2(
      databaseId: Input.asInput<String>(map['databaseId']),
      instanceId: Input.asInput<String>(map['instanceId']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
    );
  }
}
