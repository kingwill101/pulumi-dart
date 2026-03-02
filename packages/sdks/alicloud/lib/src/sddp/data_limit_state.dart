// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataLimit resources.
class DataLimitState {
  /// Whether to enable the log auditing feature. Valid values: `0`, `1`.
  final pulumi.Input<int>? auditStatus;
  /// The type of the database. Valid values: `MySQL`, `SQLServer`.
  final pulumi.Input<String>? engineType;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// The retention period of raw logs after you enable the log auditing feature. Unit: day. Valid values: `180`, `30`, `365`, `90`. **NOTE:** The`log_store_day` is valid when the `audit_status` is `1`.
  final pulumi.Input<int>? logStoreDay;
  /// The ID of the data asset.
  final pulumi.Input<String>? parentId;
  /// The password that is used to connect to the database.
  final pulumi.Input<String>? password;
  /// The port that is used to connect to the database.
  final pulumi.Input<int>? port;
  /// The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  final pulumi.Input<String>? resourceType;
  /// The region ID of the data asset.
  final pulumi.Input<String>? serviceRegionId;
  /// The name of the service to which the data asset belongs.
  final pulumi.Input<String>? userName;

  /// Creates a new [DataLimitState].
  /// [auditStatus] Whether to enable the log auditing feature. Valid values: `0`, `1`.
  /// [engineType] The type of the database. Valid values: `MySQL`, `SQLServer`.
  /// [lang] The lang.
  /// [logStoreDay] The retention period of raw logs after you enable the log auditing feature. Unit: day. Valid values: `180`, `30`, `365`, `90`. **NOTE:** The`log_store_day` is valid when the `audit_status` is `1`.
  /// [parentId] The ID of the data asset.
  /// [password] The password that is used to connect to the database.
  /// [port] The port that is used to connect to the database.
  /// [resourceType] The type of the service to which the data asset belongs. Valid values: `MaxCompute`, `OSS`, `RDS`.
  /// [serviceRegionId] The region ID of the data asset.
  /// [userName] The name of the service to which the data asset belongs.
  DataLimitState({
    this.auditStatus,
    this.engineType,
    this.lang,
    this.logStoreDay,
    this.parentId,
    this.password,
    this.port,
    this.resourceType,
    this.serviceRegionId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditStatus': ?auditStatus,
      'engineType': ?engineType,
      'lang': ?lang,
      'logStoreDay': ?logStoreDay,
      'parentId': ?parentId,
      'password': ?password,
      'port': ?port,
      'resourceType': ?resourceType,
      'serviceRegionId': ?serviceRegionId,
      'userName': ?userName,
    };
  }

  factory DataLimitState.fromMap(Map<String, dynamic> map) {
    return DataLimitState(
      auditStatus: map['auditStatus'] == null ? null : (map['auditStatus']! as int).input(),
      engineType: map['engineType'] == null ? null : (map['engineType']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      logStoreDay: map['logStoreDay'] == null ? null : (map['logStoreDay']! as int).input(),
      parentId: map['parentId'] == null ? null : (map['parentId']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType']! as String).input(),
      serviceRegionId: map['serviceRegionId'] == null ? null : (map['serviceRegionId']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

