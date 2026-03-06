// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput {
  /// The ARN of the destination Lambda function to write to.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput].
  /// [resourceArn] The ARN of the destination Lambda function to write to.
  const ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
    };
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}

