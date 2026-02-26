// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobActionPubSub {
  /// Cloud Pub/Sub topic to send notifications to.
  final String topic;

  PreventionJobTriggerInspectJobActionPubSub({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory PreventionJobTriggerInspectJobActionPubSub.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionPubSub(
      topic: map['topic'] as String,
    );
  }
}
