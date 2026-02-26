// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceLoggingConfiguration {
  /// The ARN of the CloudWatch log group to which the vended log data will be published. This log group must exist. The ARN must end with `:*`
  final String logGroupArn;

  WorkspaceLoggingConfiguration({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupArn'] = logGroupArn;
    return map;
  }

  factory WorkspaceLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkspaceLoggingConfiguration(
      logGroupArn: map['logGroupArn'] as String,
    );
  }
}
