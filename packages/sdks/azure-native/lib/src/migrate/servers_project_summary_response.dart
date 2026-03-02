// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing the servers project summary.
class ServersProjectSummaryResponse {
  /// Gets or sets the count of entities assessed.
  final pulumi.Input<int>? assessedCount;
  /// Gets or sets the count of entities discovered.
  final pulumi.Input<int>? discoveredCount;
  /// Gets or sets the extended summary.
  final pulumi.Input<Map<String, String>>? extendedSummary;
  /// Gets the Instance type.
  /// Expected value is 'Servers'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the time when summary was last refreshed.
  final pulumi.Input<String>? lastSummaryRefreshedTime;
  /// Gets or sets the count of entities migrated.
  final pulumi.Input<int>? migratedCount;
  /// Gets or sets the state of refresh summary.
  final pulumi.Input<String>? refreshSummaryState;
  /// Gets or sets the count of entities being replicated.
  final pulumi.Input<int>? replicatingCount;
  /// Gets or sets the count of entities test migrated.
  final pulumi.Input<int>? testMigratedCount;

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
      assessedCount: map['assessedCount'] == null ? null : (map['assessedCount'] as int).input(),
      discoveredCount: map['discoveredCount'] == null ? null : (map['discoveredCount'] as int).input(),
      extendedSummary: map['extendedSummary'] == null ? null : ((map['extendedSummary'] as Map).cast<String, String>()).input(),
      instanceType: (map['instanceType'] as String).input(),
      lastSummaryRefreshedTime: map['lastSummaryRefreshedTime'] == null ? null : (map['lastSummaryRefreshedTime'] as String).input(),
      migratedCount: map['migratedCount'] == null ? null : (map['migratedCount'] as int).input(),
      refreshSummaryState: map['refreshSummaryState'] == null ? null : (map['refreshSummaryState'] as String).input(),
      replicatingCount: map['replicatingCount'] == null ? null : (map['replicatingCount'] as int).input(),
      testMigratedCount: map['testMigratedCount'] == null ? null : (map['testMigratedCount'] as int).input(),
    );
  }
}

