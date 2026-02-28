// ignore_for_file: unused_element, unnecessary_cast

/// Options to configure rule type SourceSqlChange. The rule is used to alter the sql code for database entities. The rule filter field can refer to one entity. The rule scope can be: StoredProcedure, Function, Trigger, View
class SourceSqlChangeResponse {
  /// Sql code for source (stored procedure, function, trigger or view)
  final String sqlCode;

  /// Creates a new [SourceSqlChangeResponse].
  /// [sqlCode] Sql code for source (stored procedure, function, trigger or view)
  SourceSqlChangeResponse({
    required this.sqlCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sqlCode'] = sqlCode;
    return map;
  }

  factory SourceSqlChangeResponse.fromMap(Map<String, dynamic> map) {
    return SourceSqlChangeResponse(
      sqlCode: map['sqlCode'] as String,
    );
  }
}
