// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobActionPubSub {
  /// Cloud Pub/Sub topic to send notifications to.
  final String topic;

  /// Creates a new [PreventionJobTriggerInspectJobActionPubSub].
  /// [topic] Cloud Pub/Sub topic to send notifications to.
  PreventionJobTriggerInspectJobActionPubSub({required this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': topic};
  }

  factory PreventionJobTriggerInspectJobActionPubSub.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobActionPubSub(
      topic: map['topic'] as String,
    );
  }
}
