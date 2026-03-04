// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing the databases solution summary.
class DatabasesSolutionSummaryResponse {
  /// Gets or sets the count of database instances assessed.
  final pulumi.Input<int>? databaseInstancesAssessedCount;

  /// Gets or sets the count of databases assessed.
  final pulumi.Input<int>? databasesAssessedCount;

  /// Gets the Instance type.
  /// Expected value is 'Databases'.
  final pulumi.Input<String> instanceType;

  /// Gets or sets the count of databases ready for migration.
  final pulumi.Input<int>? migrationReadyCount;

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
      databaseInstancesAssessedCount: (() {
        final guardedValue = map['databaseInstancesAssessedCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      databasesAssessedCount: (() {
        final guardedValue = map['databasesAssessedCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      migrationReadyCount: (() {
        final guardedValue = map['migrationReadyCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
