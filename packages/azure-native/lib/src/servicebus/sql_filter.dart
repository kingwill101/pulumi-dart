// ignore_for_file: unused_element, unnecessary_cast


/// Represents a filter which is a composition of an expression and an action that is executed in the pub/sub pipeline.
class SqlFilter {
  /// This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  final int? compatibilityLevel;
  /// Value that indicates whether the rule action requires preprocessing.
  final bool? requiresPreprocessing;
  /// The SQL expression. e.g. MyProperty='ABC'
  final String? sqlExpression;

  /// Creates a new [SqlFilter].
  /// [compatibilityLevel] This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  /// [requiresPreprocessing] Value that indicates whether the rule action requires preprocessing.
  /// [sqlExpression] The SQL expression. e.g. MyProperty='ABC'
  SqlFilter({
    this.compatibilityLevel,
    this.requiresPreprocessing,
    this.sqlExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'requiresPreprocessing': ?requiresPreprocessing,
      'sqlExpression': ?sqlExpression,
    };
  }

  factory SqlFilter.fromMap(Map<String, dynamic> map) {
    return SqlFilter(
      compatibilityLevel: map['compatibilityLevel'] == null ? null : map['compatibilityLevel'] as int,
      requiresPreprocessing: map['requiresPreprocessing'] == null ? null : map['requiresPreprocessing'] as bool,
      sqlExpression: map['sqlExpression'] == null ? null : map['sqlExpression'] as String,
    );
  }
}

