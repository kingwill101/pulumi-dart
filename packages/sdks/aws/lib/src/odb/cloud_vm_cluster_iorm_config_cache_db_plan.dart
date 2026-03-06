// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterIormConfigCacheDbPlan {
  final pulumi.Input<String> dbName;
  final pulumi.Input<String> flashCacheLimit;
  final pulumi.Input<int> share;

  /// Creates a new [CloudVmClusterIormConfigCacheDbPlan].
  /// [dbName] Required.
  /// [flashCacheLimit] Required.
  /// [share] Required.
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
      share: pulumi.Input.fromValue(map['share'] as int),
    );
  }
}

