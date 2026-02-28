// ignore_for_file: unused_element, unnecessary_cast

class AnalyticsApplicationInputsProcessingConfigurationLambda {
  /// The ARN of the Lambda function.
  final String resourceArn;

  /// The ARN of the IAM Role used to access the Lambda function.
  final String roleArn;

  /// Creates a new [AnalyticsApplicationInputsProcessingConfigurationLambda].
  /// [resourceArn] The ARN of the Lambda function.
  /// [roleArn] The ARN of the IAM Role used to access the Lambda function.
  AnalyticsApplicationInputsProcessingConfigurationLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    map['roleArn'] = roleArn;
    return map;
  }

  factory AnalyticsApplicationInputsProcessingConfigurationLambda.fromMap(
      Map<String, dynamic> map) {
    return AnalyticsApplicationInputsProcessingConfigurationLambda(
      resourceArn: map['resourceArn'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
