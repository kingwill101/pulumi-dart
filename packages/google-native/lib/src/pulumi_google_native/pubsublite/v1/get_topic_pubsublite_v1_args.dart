// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTopic.
class GetTopicPubsubliteV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  GetTopicPubsubliteV1Args({
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

  factory GetTopicPubsubliteV1Args.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubliteV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
