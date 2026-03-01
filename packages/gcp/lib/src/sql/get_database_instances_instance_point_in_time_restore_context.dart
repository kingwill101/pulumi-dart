// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstancesInstancePointInTimeRestoreContext {
  /// The name of the allocated IP range for the internal IP Cloud SQL instance. For example: "google-managed-services-default". If you set this, then Cloud SQL creates the IP address for the cloned instance in the allocated range. This range must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035) standards. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String allocatedIpRange;
  /// The Google Cloud Backup and Disaster Recovery Datasource URI. For example: "projects/my-project/locations/us-central1/datasources/my-datasource".
  final String datasource;
  /// The date and time to which you want to restore the instance.
  final String pointInTime;
  /// Point-in-time recovery of an instance to the specified zone. If no zone is specified, then clone to the same primary zone as the source instance.
  final String preferredZone;
  /// The name of the target instance to restore to.
  final String targetInstance;

  /// Creates a new [GetDatabaseInstancesInstancePointInTimeRestoreContext].
  /// [allocatedIpRange] The name of the allocated IP range for the internal IP Cloud SQL instance. For example: "google-managed-services-default". If you set this, then Cloud SQL creates the IP address for the cloned instance in the allocated range. This range must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035) standards. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [datasource] The Google Cloud Backup and Disaster Recovery Datasource URI. For example: "projects/my-project/locations/us-central1/datasources/my-datasource".
  /// [pointInTime] The date and time to which you want to restore the instance.
  /// [preferredZone] Point-in-time recovery of an instance to the specified zone. If no zone is specified, then clone to the same primary zone as the source instance.
  /// [targetInstance] The name of the target instance to restore to.
  GetDatabaseInstancesInstancePointInTimeRestoreContext({
    required this.allocatedIpRange,
    required this.datasource,
    required this.pointInTime,
    required this.preferredZone,
    required this.targetInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'datasource': datasource,
      'pointInTime': pointInTime,
      'preferredZone': preferredZone,
      'targetInstance': targetInstance,
    };
  }

  factory GetDatabaseInstancesInstancePointInTimeRestoreContext.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstancePointInTimeRestoreContext(
      allocatedIpRange: map['allocatedIpRange'] as String,
      datasource: map['datasource'] as String,
      pointInTime: map['pointInTime'] as String,
      preferredZone: map['preferredZone'] as String,
      targetInstance: map['targetInstance'] as String,
    );
  }
}

