// ignore_for_file: unused_element, unnecessary_cast


/// Parameters used for restore operations
class MongoClusterRestoreParameters {
  /// UTC point in time to restore a mongo cluster
  final String? pointInTimeUTC;
  /// Resource ID to locate the source cluster to restore
  final String? sourceResourceId;

  /// Creates a new [MongoClusterRestoreParameters].
  /// [pointInTimeUTC] UTC point in time to restore a mongo cluster
  /// [sourceResourceId] Resource ID to locate the source cluster to restore
  MongoClusterRestoreParameters({
    this.pointInTimeUTC,
    this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pointInTimeUTC': ?pointInTimeUTC,
      'sourceResourceId': ?sourceResourceId,
    };
  }

  factory MongoClusterRestoreParameters.fromMap(Map<String, dynamic> map) {
    return MongoClusterRestoreParameters(
      pointInTimeUTC: map['pointInTimeUTC'] == null ? null : map['pointInTimeUTC'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
    );
  }
}

