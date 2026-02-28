// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyConditionConditionSqlBooleanTest {
  /// The name of the column containing the boolean value. If the value in a row is
  /// NULL, that row is ignored.
  final String column;

  /// Creates a new [AlertPolicyConditionConditionSqlBooleanTest].
  /// [column] The name of the column containing the boolean value. If the value in a row is
  AlertPolicyConditionConditionSqlBooleanTest({
    required this.column,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['column'] = column;
    return map;
  }

  factory AlertPolicyConditionConditionSqlBooleanTest.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionSqlBooleanTest(
      column: map['column'] as String,
    );
  }
}
