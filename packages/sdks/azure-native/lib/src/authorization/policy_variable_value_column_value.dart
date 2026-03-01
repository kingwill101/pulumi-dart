// ignore_for_file: unused_element, unnecessary_cast


/// The name value tuple for this variable value column.
class PolicyVariableValueColumnValue {
  /// Column name for the variable value
  final String columnName;
  /// Column value for the variable value; this can be an integer, double, boolean, null or a string.
  final dynamic columnValue;

  /// Creates a new [PolicyVariableValueColumnValue].
  /// [columnName] Column name for the variable value
  /// [columnValue] Column value for the variable value; this can be an integer, double, boolean, null or a string.
  PolicyVariableValueColumnValue({
    required this.columnName,
    required this.columnValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
      'columnValue': columnValue,
    };
  }

  factory PolicyVariableValueColumnValue.fromMap(Map<String, dynamic> map) {
    return PolicyVariableValueColumnValue(
      columnName: map['columnName'] as String,
      columnValue: map['columnValue'],
    );
  }
}

