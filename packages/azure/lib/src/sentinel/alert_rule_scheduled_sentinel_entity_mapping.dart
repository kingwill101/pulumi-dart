// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleScheduledSentinelEntityMapping {
  /// The column name to be mapped to the identifier.
  final String columnName;

  /// Creates a new [AlertRuleScheduledSentinelEntityMapping].
  /// [columnName] The column name to be mapped to the identifier.
  AlertRuleScheduledSentinelEntityMapping({
    required this.columnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
    };
  }

  factory AlertRuleScheduledSentinelEntityMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleScheduledSentinelEntityMapping(
      columnName: map['columnName'] as String,
    );
  }
}

