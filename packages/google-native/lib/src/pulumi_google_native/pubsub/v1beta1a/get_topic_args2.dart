// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTopic.
class GetTopicArgs2 {
  final Input<String> topicId;

  GetTopicArgs2({
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topicId'] = topicId;
    return map;
  }

  factory GetTopicArgs2.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs2(
      topicId: Input.asInput<String>(map['topicId']),
    );
  }
}
