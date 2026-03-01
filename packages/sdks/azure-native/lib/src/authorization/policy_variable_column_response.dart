// ignore_for_file: unused_element, unnecessary_cast


/// The variable column.
class PolicyVariableColumnResponse {
  /// The name of this policy variable column.
  final String columnName;

  /// Creates a new [PolicyVariableColumnResponse].
  /// [columnName] The name of this policy variable column.
  PolicyVariableColumnResponse({
    required this.columnName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnName': columnName,
    };
  }

  factory PolicyVariableColumnResponse.fromMap(Map<String, dynamic> map) {
    return PolicyVariableColumnResponse(
      columnName: map['columnName'] as String,
    );
  }
}

