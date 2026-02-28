// ignore_for_file: unused_element, unnecessary_cast


/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetailsSqladminV1beta4 {
  /// The version of SQL Server with which the database is to be made compatible
  final int? compatibilityLevel;
  /// The recovery model of a SQL Server database
  final String? recoveryModel;

  /// Creates a new [SqlServerDatabaseDetailsSqladminV1beta4].
  /// [compatibilityLevel] The version of SQL Server with which the database is to be made compatible
  /// [recoveryModel] The recovery model of a SQL Server database
  SqlServerDatabaseDetailsSqladminV1beta4({
    this.compatibilityLevel,
    this.recoveryModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilityLevel': ?compatibilityLevel,
      'recoveryModel': ?recoveryModel,
    };
  }

  factory SqlServerDatabaseDetailsSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SqlServerDatabaseDetailsSqladminV1beta4(
      compatibilityLevel: map['compatibilityLevel'] == null ? null : map['compatibilityLevel'] as int,
      recoveryModel: map['recoveryModel'] == null ? null : map['recoveryModel'] as String,
    );
  }
}

