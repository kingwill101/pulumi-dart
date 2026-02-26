// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTopic.
class GetTopicArgs4 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> topicId;

  GetTopicArgs4({
    required this.location,
    this.project,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['topicId'] = topicId;
    return map;
  }

  factory GetTopicArgs4.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs4(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      topicId: Input.asInput<String>(map['topicId']),
    );
  }
}
