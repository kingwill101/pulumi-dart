// ignore_for_file: unused_element, unnecessary_cast


class AlertRuleNrtSentinelEntityMapping {
  /// The column name to be mapped to the identifier.
  final String columnName;

  /// Creates a new [AlertRuleNrtSentinelEntityMapping].
  /// [columnName] The column name to be mapped to the identifier.
  AlertRuleNrtSentinelEntityMapping({
    required this.columnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
    };
  }

  factory AlertRuleNrtSentinelEntityMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtSentinelEntityMapping(
      columnName: map['columnName'] as String,
    );
  }
}

