// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StateMachineLoggingConfiguration {
  /// Determines whether execution data is included in your log. When set to `false`, data is excluded.
  final pulumi.Input<bool>? includeExecutionData;
  /// Defines which category of execution history events are logged. Valid values: `ALL`, `ERROR`, `FATAL`, `OFF`
  final pulumi.Input<String>? level;
  /// Amazon Resource Name (ARN) of a CloudWatch log group. Make sure the State Machine has the correct IAM policies for logging. The ARN must end with `:*`
  final pulumi.Input<String>? logDestination;

  /// Creates a new [StateMachineLoggingConfiguration].
  /// [includeExecutionData] Determines whether execution data is included in your log. When set to `false`, data is excluded.
  /// [level] Defines which category of execution history events are logged. Valid values: `ALL`, `ERROR`, `FATAL`, `OFF`
  /// [logDestination] Amazon Resource Name (ARN) of a CloudWatch log group. Make sure the State Machine has the correct IAM policies for logging. The ARN must end with `:*`
  StateMachineLoggingConfiguration({
    this.includeExecutionData,
    this.level,
    this.logDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeExecutionData': ?includeExecutionData,
      'level': ?level,
      'logDestination': ?logDestination,
    };
  }

  factory StateMachineLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return StateMachineLoggingConfiguration(
      includeExecutionData: map['includeExecutionData'] == null ? null : ((map['includeExecutionData'] as bool).input()).input(),
      level: map['level'] == null ? null : ((map['level'] as String).input()).input(),
      logDestination: map['logDestination'] == null ? null : ((map['logDestination'] as String).input()).input(),
    );
  }
}

