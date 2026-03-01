// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstancePointInTimeRestoreContext {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String? allocatedIpRange;

  /// The Google Cloud Backup and Disaster Recovery Datasource URI.
  final String datasource;

  /// The timestamp of the point in time that should be restored.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? pointInTime;

  /// Point-in-time recovery of an instance to the specified zone. If no zone is specified, then clone to the same primary zone as the source instance.
  final String? preferredZone;

  /// The name of the target instance.
  final String? targetInstance;

  /// Creates a new [DatabaseInstancePointInTimeRestoreContext].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [datasource] The Google Cloud Backup and Disaster Recovery Datasource URI.
  /// [pointInTime] The timestamp of the point in time that should be restored.
  /// [preferredZone] Point-in-time recovery of an instance to the specified zone. If no zone is specified, then clone to the same primary zone as the source instance.
  /// [targetInstance] The name of the target instance.
  DatabaseInstancePointInTimeRestoreContext({
    this.allocatedIpRange,
    required this.datasource,
    this.pointInTime,
    this.preferredZone,
    this.targetInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'datasource': datasource,
      'pointInTime': ?pointInTime,
      'preferredZone': ?preferredZone,
      'targetInstance': ?targetInstance,
    };
  }

  factory DatabaseInstancePointInTimeRestoreContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstancePointInTimeRestoreContext(
      allocatedIpRange: map['allocatedIpRange'] == null
          ? null
          : map['allocatedIpRange'] as String,
      datasource: map['datasource'] as String,
      pointInTime: map['pointInTime'] == null
          ? null
          : map['pointInTime'] as String,
      preferredZone: map['preferredZone'] == null
          ? null
          : map['preferredZone'] as String,
      targetInstance: map['targetInstance'] == null
          ? null
          : map['targetInstance'] as String,
    );
  }
}
