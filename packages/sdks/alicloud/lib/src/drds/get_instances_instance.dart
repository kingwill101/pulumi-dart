// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// (Available in 1.196.0+) The connection string of the DRDS instance.
  final pulumi.Input<String> connectionString;
  /// Creation time of the instance.
  final pulumi.Input<int> createTime;
  /// The DRDS instance description.
  final pulumi.Input<String> description;
  /// The ID of the DRDS instance.
  final pulumi.Input<String> id;
  /// `Classic` for public classic network or `VPC` for private network.
  final pulumi.Input<String> networkType;
  /// (Available in 1.196.0+) The connection port of the DRDS instance.
  final pulumi.Input<String> port;
  /// Status of the instance.
  final pulumi.Input<String> status;
  /// The DRDS Instance type.
  final pulumi.Input<String> type;
  /// The DRDS Instance version.
  final pulumi.Input<int> version;
  /// Zone ID the instance belongs to.
  final pulumi.Input<String> zoneId;

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
      connectionString: (map['connectionString'] as String).input(),
      createTime: (map['createTime'] as int).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      port: (map['port'] as String).input(),
      status: (map['status'] as String).input(),
      type: (map['type'] as String).input(),
      version: (map['version'] as int).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

