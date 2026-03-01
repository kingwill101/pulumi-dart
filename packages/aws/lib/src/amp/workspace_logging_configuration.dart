// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceLoggingConfiguration {
  /// The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist. The ARN must end with `:*`
  final String logGroupArn;

  /// Creates a new [WorkspaceLoggingConfiguration].
  /// [logGroupArn] The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist. The ARN must end with `:*`
  WorkspaceLoggingConfiguration({required this.logGroupArn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logGroupArn': logGroupArn};
  }

  factory WorkspaceLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkspaceLoggingConfiguration(
      logGroupArn: map['logGroupArn'] as String,
    );
  }
}
