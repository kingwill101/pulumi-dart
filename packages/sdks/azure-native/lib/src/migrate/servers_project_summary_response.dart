// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing the servers project summary.
class ServersProjectSummaryResponse {
  /// Gets or sets the count of entities assessed.
  final pulumi.Input<int?>? assessedCount;
  /// Gets or sets the count of entities discovered.
  final pulumi.Input<int?>? discoveredCount;
  /// Gets or sets the extended summary.
  final pulumi.Input<Map<String, String>?>? extendedSummary;
  /// Gets the Instance type.
  /// Expected value is 'Servers'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the time when summary was last refreshed.
  final pulumi.Input<String?>? lastSummaryRefreshedTime;
  /// Gets or sets the count of entities migrated.
  final pulumi.Input<int?>? migratedCount;
  /// Gets or sets the state of refresh summary.
  final pulumi.Input<String?>? refreshSummaryState;
  /// Gets or sets the count of entities being replicated.
  final pulumi.Input<int?>? replicatingCount;
  /// Gets or sets the count of entities test migrated.
  final pulumi.Input<int?>? testMigratedCount;

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
  const ServersProjectSummaryResponse({
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
      assessedCount: (() { final guardedValue = map['assessedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      discoveredCount: (() { final guardedValue = map['discoveredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      extendedSummary: (() { final guardedValue = map['extendedSummary']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastSummaryRefreshedTime: (() { final guardedValue = map['lastSummaryRefreshedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migratedCount: (() { final guardedValue = map['migratedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      refreshSummaryState: (() { final guardedValue = map['refreshSummaryState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicatingCount: (() { final guardedValue = map['replicatingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      testMigratedCount: (() { final guardedValue = map['testMigratedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
