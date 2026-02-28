// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput {
  /// The ARN of the destination Lambda function to write to.
  final String resourceArn;

  /// Creates a new [ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput].
  /// [resourceArn] The ARN of the destination Lambda function to write to.
  ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput({
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationSqlApplicationConfigurationOutputLambdaOutput(
      resourceArn: map['resourceArn'] as String,
    );
  }
}
