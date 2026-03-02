// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationSeverityConfigurationEvalCondition {
  /// Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt> 10.
  final pulumi.Input<String>? condition;
  /// The number of pieces of data to determine the number of pieces of data to indicate how many pieces of data meet the conditions. If data exists, it is satisfied. Set it to an empty string. In other cases, it needs to be set as an expression, such as__count__> 3.
  final pulumi.Input<String>? countCondition;

  /// Creates a new [AlertConfigurationSeverityConfigurationEvalCondition].
  /// [condition] Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt> 10.
  /// [countCondition] The number of pieces of data to determine the number of pieces of data to indicate how many pieces of data meet the conditions. If data exists, it is satisfied. Set it to an empty string. In other cases, it needs to be set as an expression, such as__count__> 3.
  AlertConfigurationSeverityConfigurationEvalCondition({
    this.condition,
    this.countCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'countCondition': ?countCondition,
    };
  }

  factory AlertConfigurationSeverityConfigurationEvalCondition.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSeverityConfigurationEvalCondition(
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
      countCondition: map['countCondition'] == null ? null : (map['countCondition']! as String).input(),
    );
  }
}

