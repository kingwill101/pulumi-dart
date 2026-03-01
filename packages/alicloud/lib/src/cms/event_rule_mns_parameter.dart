// ignore_for_file: unused_element, unnecessary_cast


class EventRuleMnsParameter {
  /// (Available since v1.211.1) The ARN of the API operation.
  final String? arn;
  /// The ID of the recipient that receives alert notifications.
  final String? mnsParametersId;
  /// The name of the MNS queue.
  final String? queue;
  /// The region where Message Service (MNS) is deployed.
  final String? region;
  /// The MNS topic.
  final String? topic;

  /// Creates a new [EventRuleMnsParameter].
  /// [arn] (Available since v1.211.1) The ARN of the API operation.
  /// [mnsParametersId] The ID of the recipient that receives alert notifications.
  /// [queue] The name of the MNS queue.
  /// [region] The region where Message Service (MNS) is deployed.
  /// [topic] The MNS topic.
  EventRuleMnsParameter({
    this.arn,
    this.mnsParametersId,
    this.queue,
    this.region,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'mnsParametersId': ?mnsParametersId,
      'queue': ?queue,
      'region': ?region,
      'topic': ?topic,
    };
  }

  factory EventRuleMnsParameter.fromMap(Map<String, dynamic> map) {
    return EventRuleMnsParameter(
      arn: map['arn'] == null ? null : map['arn'] as String,
      mnsParametersId: map['mnsParametersId'] == null ? null : map['mnsParametersId'] as String,
      queue: map['queue'] == null ? null : map['queue'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

