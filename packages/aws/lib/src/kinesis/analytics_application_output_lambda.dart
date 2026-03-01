// ignore_for_file: unused_element, unnecessary_cast


class AnalyticsApplicationOutputLambda {
  /// The ARN of the Lambda function.
  final String resourceArn;
  /// The ARN of the IAM Role used to access the Lambda function.
  final String roleArn;

  /// Creates a new [AnalyticsApplicationOutputLambda].
  /// [resourceArn] The ARN of the Lambda function.
  /// [roleArn] The ARN of the IAM Role used to access the Lambda function.
  AnalyticsApplicationOutputLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationOutputLambda.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationOutputLambda(
      resourceArn: map['resourceArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

