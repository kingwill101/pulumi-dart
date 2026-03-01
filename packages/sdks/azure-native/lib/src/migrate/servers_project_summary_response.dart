// ignore_for_file: unused_element, unnecessary_cast


/// Class representing the servers project summary.
class ServersProjectSummaryResponse {
  /// Gets or sets the count of entities assessed.
  final int? assessedCount;
  /// Gets or sets the count of entities discovered.
  final int? discoveredCount;
  /// Gets or sets the extended summary.
  final Map<String, String>? extendedSummary;
  /// Gets the Instance type.
  /// Expected value is 'Servers'.
  final String instanceType;
  /// Gets or sets the time when summary was last refreshed.
  final String? lastSummaryRefreshedTime;
  /// Gets or sets the count of entities migrated.
  final int? migratedCount;
  /// Gets or sets the state of refresh summary.
  final String? refreshSummaryState;
  /// Gets or sets the count of entities being replicated.
  final int? replicatingCount;
  /// Gets or sets the count of entities test migrated.
  final int? testMigratedCount;

  /// Creates a new [ServersProjectSummaryResponse].
  /// [assessedCount] Gets or sets the count of entities assessed.
  /// [discoveredCount] Gets or sets the count of entities discovered.
  /// [extendedSummary] Gets or sets the extended summary.
  /// [instanceType] Gets the Instance type.
  /// [lastSummaryRefreshedTime] Gets or sets the time when summary was last refreshed.
  /// [migratedCount] Gets or sets the count of entities migrated.
  /// [refreshSummaryState] Gets or sets the state of refresh summary.
  /// [replicatingCount] Gets or sets the count of entities being replicated.
  /// [testMigratedCount] Gets or sets the count of entities test migrated.
  ServersProjectSummaryResponse({
    this.assessedCount,
    this.discoveredCount,
    this.extendedSummary,
    required this.instanceType,
    this.lastSummaryRefreshedTime,
    this.migratedCount,
    this.refreshSummaryState,
    this.replicatingCount,
    this.testMigratedCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessedCount': ?assessedCount,
      'discoveredCount': ?discoveredCount,
      'extendedSummary': ?extendedSummary,
      'instanceType': instanceType,
      'lastSummaryRefreshedTime': ?lastSummaryRefreshedTime,
      'migratedCount': ?migratedCount,
      'refreshSummaryState': ?refreshSummaryState,
      'replicatingCount': ?replicatingCount,
      'testMigratedCount': ?testMigratedCount,
    };
  }

  factory ServersProjectSummaryResponse.fromMap(Map<String, dynamic> map) {
    return ServersProjectSummaryResponse(
      assessedCount: map['assessedCount'] == null ? null : map['assessedCount'] as int,
      discoveredCount: map['discoveredCount'] == null ? null : map['discoveredCount'] as int,
      extendedSummary: map['extendedSummary'] == null ? null : (map['extendedSummary'] as Map).cast<String, String>(),
      instanceType: map['instanceType'] as String,
      lastSummaryRefreshedTime: map['lastSummaryRefreshedTime'] == null ? null : map['lastSummaryRefreshedTime'] as String,
      migratedCount: map['migratedCount'] == null ? null : map['migratedCount'] as int,
      refreshSummaryState: map['refreshSummaryState'] == null ? null : map['refreshSummaryState'] as String,
      replicatingCount: map['replicatingCount'] == null ? null : map['replicatingCount'] as int,
      testMigratedCount: map['testMigratedCount'] == null ? null : map['testMigratedCount'] as int,
    );
  }
}

