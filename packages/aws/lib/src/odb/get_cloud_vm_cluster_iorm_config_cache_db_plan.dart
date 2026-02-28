// ignore_for_file: unused_element, unnecessary_cast

class GetCloudVmClusterIormConfigCacheDbPlan {
  final String dbName;
  final String flashCacheLimit;
  final int share;

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
    final map = <String, dynamic>{};
    map['dbName'] = dbName;
    map['flashCacheLimit'] = flashCacheLimit;
    map['share'] = share;
    return map;
  }

  factory GetCloudVmClusterIormConfigCacheDbPlan.fromMap(
      Map<String, dynamic> map) {
    return GetCloudVmClusterIormConfigCacheDbPlan(
      dbName: map['dbName'] as String,
      flashCacheLimit: map['flashCacheLimit'] as String,
      share: map['share'] as int,
    );
  }
}
