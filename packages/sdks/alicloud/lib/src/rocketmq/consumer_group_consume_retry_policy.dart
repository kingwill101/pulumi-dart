// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConsumerGroupConsumeRetryPolicy {
  /// The dead-letter topic. If the consumer fails to consume a message in an abnormal situation and the message is still unsuccessful after retrying, the message will be delivered to the dead letter Topic for subsequent business recovery or backtracking.
  final pulumi.Input<String>? deadLetterTargetTopic;
  /// Maximum number of retries.
  final pulumi.Input<int>? maxRetryTimes;
  /// Consume retry policy.
  final pulumi.Input<String>? retryPolicy;

  /// Creates a new [ConsumerGroupConsumeRetryPolicy].
  /// [deadLetterTargetTopic] The dead-letter topic. If the consumer fails to consume a message in an abnormal situation and the message is still unsuccessful after retrying, the message will be delivered to the dead letter Topic for subsequent business recovery or backtracking.
  /// [maxRetryTimes] Maximum number of retries.
  /// [retryPolicy] Consume retry policy.
  const ConsumerGroupConsumeRetryPolicy({
    this.deadLetterTargetTopic,
    this.maxRetryTimes,
    this.retryPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterTargetTopic': ?deadLetterTargetTopic,
      'maxRetryTimes': ?maxRetryTimes,
      'retryPolicy': ?retryPolicy,
    };
  }

  factory ConsumerGroupConsumeRetryPolicy.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupConsumeRetryPolicy(
      deadLetterTargetTopic: (() { final guardedValue = map['deadLetterTargetTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxRetryTimes: (() { final guardedValue = map['maxRetryTimes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      retryPolicy: (() { final guardedValue = map['retryPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

