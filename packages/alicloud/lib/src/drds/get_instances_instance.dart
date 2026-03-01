// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// (Available in 1.196.0+) The connection string of the DRDS instance.
  final String connectionString;
  /// Creation time of the instance.
  final int createTime;
  /// The DRDS instance description.
  final String description;
  /// The ID of the DRDS instance.
  final String id;
  /// `Classic` for public classic network or `VPC` for private network.
  final String networkType;
  /// (Available in 1.196.0+) The connection port of the DRDS instance.
  final String port;
  /// Status of the instance.
  final String status;
  /// The DRDS Instance type.
  final String type;
  /// The DRDS Instance version.
  final int version;
  /// Zone ID the instance belongs to.
  final String zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [connectionString] (Available in 1.196.0+) The connection string of the DRDS instance.
  /// [createTime] Creation time of the instance.
  /// [description] The DRDS instance description.
  /// [id] The ID of the DRDS instance.
  /// [networkType] `Classic` for public classic network or `VPC` for private network.
  /// [port] (Available in 1.196.0+) The connection port of the DRDS instance.
  /// [status] Status of the instance.
  /// [type] The DRDS Instance type.
  /// [version] The DRDS Instance version.
  /// [zoneId] Zone ID the instance belongs to.
  GetInstancesInstance({
    required this.connectionString,
    required this.createTime,
    required this.description,
    required this.id,
    required this.networkType,
    required this.port,
    required this.status,
    required this.type,
    required this.version,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'createTime': createTime,
      'description': description,
      'id': id,
      'networkType': networkType,
      'port': port,
      'status': status,
      'type': type,
      'version': version,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      connectionString: map['connectionString'] as String,
      createTime: map['createTime'] as int,
      description: map['description'] as String,
      id: map['id'] as String,
      networkType: map['networkType'] as String,
      port: map['port'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      version: map['version'] as int,
      zoneId: map['zoneId'] as String,
    );
  }
}

