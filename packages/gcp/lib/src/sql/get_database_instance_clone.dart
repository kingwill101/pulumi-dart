// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseInstanceClone {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String allocatedIpRange;
  /// (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty.
  final List<String> databaseNames;
  /// The timestamp of the point in time that should be restored.
  final String pointInTime;
  /// (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance.
  final String preferredZone;
  /// The timestamp of when the source instance was deleted for a clone from a deleted instance.
  final String sourceInstanceDeletionTime;
  /// The name of the instance from which the point in time should be restored.
  final String sourceInstanceName;

  /// Creates a new [GetDatabaseInstanceClone].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [databaseNames] (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty.
  /// [pointInTime] The timestamp of the point in time that should be restored.
  /// [preferredZone] (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance.
  /// [sourceInstanceDeletionTime] The timestamp of when the source instance was deleted for a clone from a deleted instance.
  /// [sourceInstanceName] The name of the instance from which the point in time should be restored.
  GetDatabaseInstanceClone({
    required this.allocatedIpRange,
    required this.databaseNames,
    required this.pointInTime,
    required this.preferredZone,
    required this.sourceInstanceDeletionTime,
    required this.sourceInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'databaseNames': databaseNames,
      'pointInTime': pointInTime,
      'preferredZone': preferredZone,
      'sourceInstanceDeletionTime': sourceInstanceDeletionTime,
      'sourceInstanceName': sourceInstanceName,
    };
  }

  factory GetDatabaseInstanceClone.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceClone(
      allocatedIpRange: map['allocatedIpRange'] as String,
      databaseNames: (map['databaseNames'] as List).cast<String>(),
      pointInTime: map['pointInTime'] as String,
      preferredZone: map['preferredZone'] as String,
      sourceInstanceDeletionTime: map['sourceInstanceDeletionTime'] as String,
      sourceInstanceName: map['sourceInstanceName'] as String,
    );
  }
}

