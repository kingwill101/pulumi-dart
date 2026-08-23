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
  const ServersSolutionSummaryResponse({
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
      assessedCount: (() { final guardedValue = map['assessedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      discoveredCount: (() { final guardedValue = map['discoveredCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      migratedCount: (() { final guardedValue = map['migratedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      replicatingCount: (() { final guardedValue = map['replicatingCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      testMigratedCount: (() { final guardedValue = map['testMigratedCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
