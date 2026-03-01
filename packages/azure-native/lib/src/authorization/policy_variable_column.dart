// ignore_for_file: unused_element, unnecessary_cast


/// The variable column.
class PolicyVariableColumn {
  /// The name of this policy variable column.
  final String columnName;

  /// Creates a new [PolicyVariableColumn].
  /// [columnName] The name of this policy variable column.
  PolicyVariableColumn({
    required this.columnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
    };
  }

  factory PolicyVariableColumn.fromMap(Map<String, dynamic> map) {
    return PolicyVariableColumn(
      columnName: map['columnName'] as String,
    );
  }
}

