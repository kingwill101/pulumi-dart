// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTopic.
class GetTopicArgs {
  final Input<String>? project;
  final Input<String> topicId;

  GetTopicArgs({
    this.project,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['topicId'] = topicId;
    return map;
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      project: Input.asOptionalInput<String>(map['project']),
      topicId: Input.asInput<String>(map['topicId']),
    );
  }
}
