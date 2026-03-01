// ignore_for_file: unused_element, unnecessary_cast


class JobQueryScriptOptions {
  /// Determines which statement in the script represents the "key result",
  /// used to populate the schema and query results of the script job.
  /// Possible values are: `LAST`, `FIRST_SELECT`.
  final String? keyResultStatement;
  /// Limit on the number of bytes billed per statement. Exceeding this budget results in an error.
  final String? statementByteBudget;
  /// Timeout period for each statement in a script.
  final String? statementTimeoutMs;

  /// Creates a new [JobQueryScriptOptions].
  /// [keyResultStatement] Determines which statement in the script represents the "key result",
  /// [statementByteBudget] Limit on the number of bytes billed per statement. Exceeding this budget results in an error.
  /// [statementTimeoutMs] Timeout period for each statement in a script.
  JobQueryScriptOptions({
    this.keyResultStatement,
    this.statementByteBudget,
    this.statementTimeoutMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyResultStatement': ?keyResultStatement,
      'statementByteBudget': ?statementByteBudget,
      'statementTimeoutMs': ?statementTimeoutMs,
    };
  }

  factory JobQueryScriptOptions.fromMap(Map<String, dynamic> map) {
    return JobQueryScriptOptions(
      keyResultStatement: map['keyResultStatement'] == null ? null : map['keyResultStatement'] as String,
      statementByteBudget: map['statementByteBudget'] == null ? null : map['statementByteBudget'] as String,
      statementTimeoutMs: map['statementTimeoutMs'] == null ? null : map['statementTimeoutMs'] as String,
    );
  }
}

