// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventBusDeadLetterConfig {
  /// The ARN of the SQS queue specified as the target for the dead-letter queue.
  final pulumi.Input<String?>? arn;

  /// Creates a new [EventBusDeadLetterConfig].
  /// [arn] The ARN of the SQS queue specified as the target for the dead-letter queue.
  const EventBusDeadLetterConfig({
    this.arn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
    };
  }

  factory EventBusDeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return EventBusDeadLetterConfig(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
