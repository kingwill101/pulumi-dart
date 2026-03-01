// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeadLetterConfig
class DeadLetterConfig {
  /// The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  final String? targetArn;

  /// Creates a new [DeadLetterConfig].
  /// [targetArn] The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  DeadLetterConfig({
    this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetArn': ?targetArn,
    };
  }

  factory DeadLetterConfig.fromMap(Map<String, dynamic> map) {
    return DeadLetterConfig(
      targetArn: map['targetArn'] == null ? null : map['targetArn'] as String,
    );
  }
}

