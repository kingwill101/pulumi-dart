// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getContext.
class GetContextArgs3 {
  final Input<String> contextId;
  final Input<String> environmentId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> sessionId;
  final Input<String> userId;

  GetContextArgs3({
    required this.contextId,
    required this.environmentId,
    required this.location,
    this.project,
    required this.sessionId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contextId'] = contextId;
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

  factory GetContextArgs3.fromMap(Map<String, dynamic> map) {
    return GetContextArgs3(
      contextId: Input.asInput<String>(map['contextId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      sessionId: Input.asInput<String>(map['sessionId']),
      userId: Input.asInput<String>(map['userId']),
    );
  }
}
