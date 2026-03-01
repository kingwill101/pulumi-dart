// ignore_for_file: unused_element, unnecessary_cast


/// Class representing the servers solution summary.
class ServersSolutionSummaryResponse {
  /// Gets or sets the count of servers assessed.
  final int? assessedCount;
  /// Gets or sets the count of servers discovered.
  final int? discoveredCount;
  /// Gets the Instance type.
  /// Expected value is 'Servers'.
  final String instanceType;
  /// Gets or sets the count of servers migrated.
  final int? migratedCount;
  /// Gets or sets the count of servers being replicated.
  final int? replicatingCount;
  /// Gets or sets the count of servers test migrated.
  final int? testMigratedCount;

  /// Creates a new [ServersSolutionSummaryResponse].
  /// [assessedCount] Gets or sets the count of servers assessed.
  /// [discoveredCount] Gets or sets the count of servers discovered.
  /// [instanceType] Gets the Instance type.
  /// [migratedCount] Gets or sets the count of servers migrated.
  /// [replicatingCount] Gets or sets the count of servers being replicated.
  /// [testMigratedCount] Gets or sets the count of servers test migrated.
  ServersSolutionSummaryResponse({
    this.assessedCount,
    this.discoveredCount,
    required this.instanceType,
    this.migratedCount,
    this.replicatingCount,
    this.testMigratedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessedCount': ?assessedCount,
      'discoveredCount': ?discoveredCount,
      'instanceType': instanceType,
      'migratedCount': ?migratedCount,
      'replicatingCount': ?replicatingCount,
      'testMigratedCount': ?testMigratedCount,
    };
  }

  factory ServersSolutionSummaryResponse.fromMap(Map<String, dynamic> map) {
    return ServersSolutionSummaryResponse(
      assessedCount: map['assessedCount'] == null ? null : map['assessedCount'] as int,
      discoveredCount: map['discoveredCount'] == null ? null : map['discoveredCount'] as int,
      instanceType: map['instanceType'] as String,
      migratedCount: map['migratedCount'] == null ? null : map['migratedCount'] as int,
      replicatingCount: map['replicatingCount'] == null ? null : map['replicatingCount'] as int,
      testMigratedCount: map['testMigratedCount'] == null ? null : map['testMigratedCount'] as int,
    );
  }
}

