// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataLimitsLimit {
  /// Whether to enable the log auditing feature.
  final pulumi.Input<int> auditStatus;
  /// The status of the connectivity test between the data asset and SDDP.
  final pulumi.Input<int> checkStatus;
  /// The first ID of the resource.
  final pulumi.Input<String> dataLimitId;
  /// The type of the database.
  final pulumi.Input<String> engineType;
  /// The ID of the Data Limit.
  final pulumi.Input<String> id;
  /// The name of the service to which the data asset belongs.
  final pulumi.Input<String> localName;
  /// The retention period of raw logs after you enable the log auditing feature.
  final pulumi.Input<int> logStoreDay;
  /// The parent asset ID of the data asset.
  final pulumi.Input<String> parentId;
  /// The port that is used to connect to the database.
  final pulumi.Input<int> port;
  /// The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  final pulumi.Input<String> resourceType;
  /// The name of the user who owns the data asset.
  final pulumi.Input<String> userName;

  /// Creates a new [GetDataLimitsLimit].
  /// [auditStatus] Whether to enable the log auditing feature.
  /// [checkStatus] The status of the connectivity test between the data asset and SDDP.
  /// [dataLimitId] The first ID of the resource.
  /// [engineType] The type of the database.
  /// [id] The ID of the Data Limit.
  /// [localName] The name of the service to which the data asset belongs.
  /// [logStoreDay] The retention period of raw logs after you enable the log auditing feature.
  /// [parentId] The parent asset ID of the data asset.
  /// [port] The port that is used to connect to the database.
  /// [resourceType] The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  /// [userName] The name of the user who owns the data asset.
  GetDataLimitsLimit({
    required this.auditStatus,
    required this.checkStatus,
    required this.dataLimitId,
    required this.engineType,
    required this.id,
    required this.localName,
    required this.logStoreDay,
    required this.parentId,
    required this.port,
    required this.resourceType,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditStatus': auditStatus,
      'checkStatus': checkStatus,
      'dataLimitId': dataLimitId,
      'engineType': engineType,
      'id': id,
      'localName': localName,
      'logStoreDay': logStoreDay,
      'parentId': parentId,
      'port': port,
      'resourceType': resourceType,
      'userName': userName,
    };
  }

  factory GetDataLimitsLimit.fromMap(Map<String, dynamic> map) {
    return GetDataLimitsLimit(
      auditStatus: (map['auditStatus'] as int).input(),
      checkStatus: (map['checkStatus'] as int).input(),
      dataLimitId: (map['dataLimitId'] as String).input(),
      engineType: (map['engineType'] as String).input(),
      id: (map['id'] as String).input(),
      localName: (map['localName'] as String).input(),
      logStoreDay: (map['logStoreDay'] as int).input(),
      parentId: (map['parentId'] as String).input(),
      port: (map['port'] as int).input(),
      resourceType: (map['resourceType'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

