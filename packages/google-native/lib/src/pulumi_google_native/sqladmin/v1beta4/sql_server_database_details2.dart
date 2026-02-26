// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetails2 {
  /// The version of SQL Server with which the database is to be made compatible
  final int? compatibilityLevel;

  /// The recovery model of a SQL Server database
  final String? recoveryModel;

  SqlServerDatabaseDetails2({
    this.compatibilityLevel,
    this.recoveryModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final compatibilityLevelValue = compatibilityLevel;
    if (compatibilityLevelValue != null) {
      map['compatibilityLevel'] = compatibilityLevelValue;
    }
    final recoveryModelValue = recoveryModel;
    if (recoveryModelValue != null) {
      map['recoveryModel'] = recoveryModelValue;
    }
    return map;
  }

  factory SqlServerDatabaseDetails2.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseDetails2(
      compatibilityLevel: map['compatibilityLevel'] == null
          ? null
          : map['compatibilityLevel'] as int,
      recoveryModel:
          map['recoveryModel'] == null ? null : map['recoveryModel'] as String,
    );
  }
}
