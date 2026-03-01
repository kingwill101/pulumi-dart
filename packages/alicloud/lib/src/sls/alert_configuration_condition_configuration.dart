// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationConditionConfiguration {
  /// Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt> 10.
  final String? condition;
  /// The number of pieces of data to determine the number of pieces of data to indicate how many pieces of data meet the conditions. If data exists, it is satisfied. Set it to an empty string. In other cases, it needs to be set as an expression, such as__count__> 3.
  final String? countCondition;

  /// Creates a new [AlertConfigurationConditionConfiguration].
  /// [condition] Data matching expression. When the data content does not need to be determined, set it to an empty string. In other cases, it needs to be set as an expression, for example, errCnt> 10.
  /// [countCondition] The number of pieces of data to determine the number of pieces of data to indicate how many pieces of data meet the conditions. If data exists, it is satisfied. Set it to an empty string. In other cases, it needs to be set as an expression, such as__count__> 3.
  AlertConfigurationConditionConfiguration({
    this.condition,
    this.countCondition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'countCondition': ?countCondition,
    };
  }

  factory AlertConfigurationConditionConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationConditionConfiguration(
      condition: map['condition'] == null ? null : map['condition'] as String,
      countCondition: map['countCondition'] == null ? null : map['countCondition'] as String,
    );
  }
}

