// ignore_for_file: unused_element, unnecessary_cast


class ApplicationSettingsTransactionTracerSql {
  /// The level of SQL recording. Valid values ar `OBFUSCATED`,`OFF`,`RAW` (Mandatory attribute when `sql` block is provided).
  final String recordSql;

  /// Creates a new [ApplicationSettingsTransactionTracerSql].
  /// [recordSql] The level of SQL recording. Valid values ar `OBFUSCATED`,`OFF`,`RAW` (Mandatory attribute when `sql` block is provided).
  ApplicationSettingsTransactionTracerSql({
    required this.recordSql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recordSql': recordSql,
    };
  }

  factory ApplicationSettingsTransactionTracerSql.fromMap(Map<String, dynamic> map) {
    return ApplicationSettingsTransactionTracerSql(
      recordSql: map['recordSql'] as String,
    );
  }
}

