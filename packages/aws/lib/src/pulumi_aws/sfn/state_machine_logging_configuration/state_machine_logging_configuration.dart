// ignore_for_file: unused_element, unnecessary_cast

class StateMachineLoggingConfiguration {
  /// Determines whether execution data is included in your log. When set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, data is excluded.
  final bool? includeExecutionData;

  /// Defines which category of execution history events are logged. Valid values: `ALL`, `ERROR`, `FATAL`, `OFF`
  final String? level;

  /// Amazon Resource Name (ARN) of a CloudWatch log group. Make sure the State Machine has the correct IAM policies for logging. The ARN must end with `:*`
  final String? logDestination;

  StateMachineLoggingConfiguration({
    this.includeExecutionData,
    this.level,
    this.logDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includeExecutionDataValue = includeExecutionData;
    if (includeExecutionDataValue != null) {
      map['includeExecutionData'] = includeExecutionDataValue;
    }
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue;
    }
    final logDestinationValue = logDestination;
    if (logDestinationValue != null) {
      map['logDestination'] = logDestinationValue;
    }
    return map;
  }

  factory StateMachineLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return StateMachineLoggingConfiguration(
      includeExecutionData: map['includeExecutionData'] == null
          ? null
          : map['includeExecutionData'] as bool,
      level: map['level'] == null ? null : map['level'] as String,
      logDestination: map['logDestination'] == null
          ? null
          : map['logDestination'] as String,
    );
  }
}
