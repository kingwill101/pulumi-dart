// ignore_for_file: unused_element, unnecessary_cast


/// Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.
class Action {
  /// This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  final int? compatibilityLevel;
  /// Value that indicates whether the rule action requires preprocessing.
  final bool? requiresPreprocessing;
  /// SQL expression. e.g. MyProperty='ABC'
  final String? sqlExpression;

  /// Creates a new [Action].
  /// [compatibilityLevel] This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20.
  /// [requiresPreprocessing] Value that indicates whether the rule action requires preprocessing.
  /// [sqlExpression] SQL expression. e.g. MyProperty='ABC'
  Action({
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

  factory Action.fromMap(Map<String, dynamic> map) {
    return Action(
      compatibilityLevel: map['compatibilityLevel'] == null ? null : map['compatibilityLevel'] as int,
      requiresPreprocessing: map['requiresPreprocessing'] == null ? null : map['requiresPreprocessing'] as bool,
      sqlExpression: map['sqlExpression'] == null ? null : map['sqlExpression'] as String,
    );
  }
}

