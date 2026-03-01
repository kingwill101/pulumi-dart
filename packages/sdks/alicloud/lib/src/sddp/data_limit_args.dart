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
    pulumi.Output<int>? auditStatus,
    pulumi.Output<String>? engineType,
    pulumi.Output<String>? lang,
    pulumi.Output<int>? logStoreDay,
    pulumi.Output<String>? parentId,
    pulumi.Output<String>? password,
    pulumi.Output<int>? port,
    required pulumi.Output<String> resourceType,
    pulumi.Output<String>? serviceRegionId,
    pulumi.Output<String>? userName,
  }) :
      auditStatus = pulumi.Input.asOptionalInput<int>(auditStatus),
      engineType = pulumi.Input.asOptionalInput<String>(engineType),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      logStoreDay = pulumi.Input.asOptionalInput<int>(logStoreDay),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      password = pulumi.Input.asOptionalInput<String>(password),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      serviceRegionId = pulumi.Input.asOptionalInput<String>(serviceRegionId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      auditStatus: map['auditStatus'] == null ? null : pulumi.Output.create<int>(map['auditStatus'] as int),
      engineType: map['engineType'] == null ? null : pulumi.Output.create<String>(map['engineType'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      logStoreDay: map['logStoreDay'] == null ? null : pulumi.Output.create<int>(map['logStoreDay'] as int),
      parentId: map['parentId'] == null ? null : pulumi.Output.create<String>(map['parentId'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      serviceRegionId: map['serviceRegionId'] == null ? null : pulumi.Output.create<String>(map['serviceRegionId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}

