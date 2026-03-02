// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventRuleMnsParameter {
  /// (Available since v1.211.1) The ARN of the API operation.
  final pulumi.Input<String>? arn;
  /// The ID of the recipient that receives alert notifications.
  final pulumi.Input<String>? mnsParametersId;
  /// The name of the MNS queue.
  final pulumi.Input<String>? queue;
  /// The region where Message Service (MNS) is deployed.
  final pulumi.Input<String>? region;
  /// The MNS topic.
  final pulumi.Input<String>? topic;

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      mnsParametersId: map['mnsParametersId'] == null ? null : (map['mnsParametersId'] as String).input(),
      queue: map['queue'] == null ? null : (map['queue'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      topic: map['topic'] == null ? null : (map['topic'] as String).input(),
    );
  }
}

