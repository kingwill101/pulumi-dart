// ignore_for_file: unused_element, unnecessary_cast


/// Definition of DeadLetterConfig
class DeadLetterConfigResponse {
  /// The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  final String? targetArn;

  /// Creates a new [DeadLetterConfigResponse].
  /// [targetArn] The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.
  DeadLetterConfigResponse({
    this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetArn': ?targetArn,
    };
  }

  factory DeadLetterConfigResponse.fromMap(Map<String, dynamic> map) {
    return DeadLetterConfigResponse(
      targetArn: map['targetArn'] == null ? null : map['targetArn'] as String,
    );
  }
}

