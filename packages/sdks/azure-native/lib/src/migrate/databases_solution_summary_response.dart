// ignore_for_file: unused_element, unnecessary_cast


/// Class representing the databases solution summary.
class DatabasesSolutionSummaryResponse {
  /// Gets or sets the count of database instances assessed.
  final int? databaseInstancesAssessedCount;
  /// Gets or sets the count of databases assessed.
  final int? databasesAssessedCount;
  /// Gets the Instance type.
  /// Expected value is 'Databases'.
  final String instanceType;
  /// Gets or sets the count of databases ready for migration.
  final int? migrationReadyCount;

  /// Creates a new [DatabasesSolutionSummaryResponse].
  /// [databaseInstancesAssessedCount] Gets or sets the count of database instances assessed.
  /// [databasesAssessedCount] Gets or sets the count of databases assessed.
  /// [instanceType] Gets the Instance type.
  /// [migrationReadyCount] Gets or sets the count of databases ready for migration.
  DatabasesSolutionSummaryResponse({
    this.databaseInstancesAssessedCount,
    this.databasesAssessedCount,
    required this.instanceType,
    this.migrationReadyCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseInstancesAssessedCount': ?databaseInstancesAssessedCount,
      'databasesAssessedCount': ?databasesAssessedCount,
      'instanceType': instanceType,
      'migrationReadyCount': ?migrationReadyCount,
    };
  }

  factory DatabasesSolutionSummaryResponse.fromMap(Map<String, dynamic> map) {
    return DatabasesSolutionSummaryResponse(
      databaseInstancesAssessedCount: map['databaseInstancesAssessedCount'] == null ? null : map['databaseInstancesAssessedCount'] as int,
      databasesAssessedCount: map['databasesAssessedCount'] == null ? null : map['databasesAssessedCount'] as int,
      instanceType: map['instanceType'] as String,
      migrationReadyCount: map['migrationReadyCount'] == null ? null : map['migrationReadyCount'] as int,
    );
  }
}

