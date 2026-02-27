// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTopic.
class GetTopicPubsubV1beta2Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  GetTopicPubsubV1beta2Args({
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

  factory GetTopicPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubV1beta2Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
