// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterIormConfigCacheDbPlan {
  /// Database name to which the IORM plan applies.
  final pulumi.Input<String> dbName;
  /// Flash cache limit for the database plan.
  final pulumi.Input<String> flashCacheLimit;
  /// Relative priority of the database in the IORM plan.
  final pulumi.Input<int> share;

  /// Creates a new [CloudVmClusterIormConfigCacheDbPlan].
  /// [dbName] Database name to which the IORM plan applies.
  /// [flashCacheLimit] Flash cache limit for the database plan.
  /// [share] Relative priority of the database in the IORM plan.
  const CloudVmClusterIormConfigCacheDbPlan({
    required this.dbName,
    required this.flashCacheLimit,
    required this.share,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': dbName,
      'flashCacheLimit': flashCacheLimit,
      'share': share,
    };
  }

  factory CloudVmClusterIormConfigCacheDbPlan.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterIormConfigCacheDbPlan(
      dbName: pulumi.Input.fromValue(map['dbName'] as String),
      flashCacheLimit: pulumi.Input.fromValue(map['flashCacheLimit'] as String),
      share: pulumi.Input.fromValue((map['share'] as num).toInt()),
    );
  }
}
