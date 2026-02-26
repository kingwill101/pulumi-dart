// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigPubsubDestination {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  final String? topic;

  JobTemplateConfigPubsubDestination({
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory JobTemplateConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigPubsubDestination(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
