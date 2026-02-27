// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTopic.
class GetTopicPubsubV1beta1aArgs {
  final pulumi.Input<String> topicId;

  GetTopicPubsubV1beta1aArgs({
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topicId'] = topicId;
    return map;
  }

  factory GetTopicPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubV1beta1aArgs(
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
