// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClusterIormConfigCacheDbPlan {
  final pulumi.Input<String> dbName;
  final pulumi.Input<String> flashCacheLimit;
  final pulumi.Input<int> share;

  /// Creates a new [GetCloudVmClusterIormConfigCacheDbPlan].
  /// [dbName] Required.
  /// [flashCacheLimit] Required.
  /// [share] Required.
  GetCloudVmClusterIormConfigCacheDbPlan({
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

  factory GetCloudVmClusterIormConfigCacheDbPlan.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterIormConfigCacheDbPlan(
      dbName: (map['dbName'] as String).input(),
      flashCacheLimit: (map['flashCacheLimit'] as String).input(),
      share: (map['share'] as int).input(),
    );
  }
}

