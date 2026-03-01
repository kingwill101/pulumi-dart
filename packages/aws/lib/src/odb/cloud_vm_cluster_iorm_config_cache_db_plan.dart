// ignore_for_file: unused_element, unnecessary_cast


class CloudVmClusterIormConfigCacheDbPlan {
  final String dbName;
  final String flashCacheLimit;
  final int share;

  /// Creates a new [CloudVmClusterIormConfigCacheDbPlan].
  /// [dbName] Required.
  /// [flashCacheLimit] Required.
  /// [share] Required.
  CloudVmClusterIormConfigCacheDbPlan({
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
      dbName: map['dbName'] as String,
      flashCacheLimit: map['flashCacheLimit'] as String,
      share: map['share'] as int,
    );
  }
}

