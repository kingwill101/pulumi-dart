// ignore_for_file: unused_element, unnecessary_cast


/// Table properties
class DatabaseTableResponse {
  /// Indicates whether table is empty or not
  final bool hasRows;
  /// Schema-qualified name of the table
  final String name;

  /// Creates a new [DatabaseTableResponse].
  /// [hasRows] Indicates whether table is empty or not
  /// [name] Schema-qualified name of the table
  DatabaseTableResponse({
    required this.hasRows,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasRows': hasRows,
      'name': name,
    };
  }

  factory DatabaseTableResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseTableResponse(
      hasRows: map['hasRows'] as bool,
      name: map['name'] as String,
    );
  }
}

