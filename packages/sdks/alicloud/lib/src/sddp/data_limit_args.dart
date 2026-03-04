// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_data_limit_data_limit_args_doc}
/// The set of arguments for DataLimit.
/// {@endtemplate}
/// {@macro pulumi_sddp_data_limit_data_limit_args_doc}
class DataLimitArgs {
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
  final pulumi.Input<String> resourceType;

  /// The region ID of the data asset.
  final pulumi.Input<String>? serviceRegionId;

  /// The name of the service to which the data asset belongs.
  final pulumi.Input<String>? userName;

  /// Creates a new [DataLimitArgs].
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
  DataLimitArgs({
    this.auditStatus,
    this.engineType,
    this.lang,
    this.logStoreDay,
    this.parentId,
    this.password,
    this.port,
    required this.resourceType,
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
      'resourceType': resourceType,
      'serviceRegionId': ?serviceRegionId,
      'userName': ?userName,
    };
  }

  factory DataLimitArgs.fromMap(Map<String, dynamic> map) {
    return DataLimitArgs(
      auditStatus: (() {
        final guardedValue = map['auditStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      engineType: (() {
        final guardedValue = map['engineType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logStoreDay: (() {
        final guardedValue = map['logStoreDay'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      parentId: (() {
        final guardedValue = map['parentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      serviceRegionId: (() {
        final guardedValue = map['serviceRegionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userName: (() {
        final guardedValue = map['userName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
