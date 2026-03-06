// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalyticsApplicationInputsProcessingConfigurationLambda {
  /// The ARN of the Lambda function.
  final pulumi.Input<String> resourceArn;
  /// The ARN of the IAM Role used to access the Lambda function.
  final pulumi.Input<String> roleArn;

  /// Creates a new [AnalyticsApplicationInputsProcessingConfigurationLambda].
  /// [resourceArn] The ARN of the Lambda function.
  /// [roleArn] The ARN of the IAM Role used to access the Lambda function.
  const AnalyticsApplicationInputsProcessingConfigurationLambda({
    required this.resourceArn,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'roleArn': roleArn,
    };
  }

  factory AnalyticsApplicationInputsProcessingConfigurationLambda.fromMap(Map<String, dynamic> map) {
    return AnalyticsApplicationInputsProcessingConfigurationLambda(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
    );
  }
}

