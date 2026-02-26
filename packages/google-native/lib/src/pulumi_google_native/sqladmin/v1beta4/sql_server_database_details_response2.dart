// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetailsResponse2 {
  /// The version of SQL Server with which the database is to be made compatible
  final int compatibilityLevel;

  /// The recovery model of a SQL Server database
  final String recoveryModel;

  SqlServerDatabaseDetailsResponse2({
    required this.compatibilityLevel,
    required this.recoveryModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['compatibilityLevel'] = compatibilityLevel;
    map['recoveryModel'] = recoveryModel;
    return map;
  }

  factory SqlServerDatabaseDetailsResponse2.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseDetailsResponse2(
      compatibilityLevel: map['compatibilityLevel'] as int,
      recoveryModel: map['recoveryModel'] as String,
    );
  }
}
