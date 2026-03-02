// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing the servers solution summary.
class ServersSolutionSummaryResponse {
  /// Gets or sets the count of servers assessed.
  final pulumi.Input<int>? assessedCount;
  /// Gets or sets the count of servers discovered.
  final pulumi.Input<int>? discoveredCount;
  /// Gets the Instance type.
  /// Expected value is 'Servers'.
  final pulumi.Input<String> instanceType;
  /// Gets or sets the count of servers migrated.
  final pulumi.Input<int>? migratedCount;
  /// Gets or sets the count of servers being replicated.
  final pulumi.Input<int>? replicatingCount;
  /// Gets or sets the count of servers test migrated.
  final pulumi.Input<int>? testMigratedCount;

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
      assessedCount: map['assessedCount'] == null ? null : (map['assessedCount']! as int).input(),
      discoveredCount: map['discoveredCount'] == null ? null : (map['discoveredCount']! as int).input(),
      instanceType: (map['instanceType'] as String).input(),
      migratedCount: map['migratedCount'] == null ? null : (map['migratedCount']! as int).input(),
      replicatingCount: map['replicatingCount'] == null ? null : (map['replicatingCount']! as int).input(),
      testMigratedCount: map['testMigratedCount'] == null ? null : (map['testMigratedCount']! as int).input(),
    );
  }
}

