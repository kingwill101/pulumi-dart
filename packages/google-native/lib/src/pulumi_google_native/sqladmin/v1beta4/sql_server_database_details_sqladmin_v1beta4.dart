// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetailsSqladminV1beta4 {
  /// The version of SQL Server with which the database is to be made compatible
  final int? compatibilityLevel;

  /// The recovery model of a SQL Server database
  final String? recoveryModel;

  SqlServerDatabaseDetailsSqladminV1beta4({
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

  factory SqlServerDatabaseDetailsSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return SqlServerDatabaseDetailsSqladminV1beta4(
      compatibilityLevel: map['compatibilityLevel'] == null
          ? null
          : map['compatibilityLevel'] as int,
      recoveryModel:
          map['recoveryModel'] == null ? null : map['recoveryModel'] as String,
    );
  }
}
