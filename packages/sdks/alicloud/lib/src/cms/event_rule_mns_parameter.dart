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
  const EventRuleMnsParameter({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mnsParametersId: (() { final guardedValue = map['mnsParametersId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

