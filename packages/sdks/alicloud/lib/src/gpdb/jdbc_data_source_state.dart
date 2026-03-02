// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering JdbcDataSource resources.
class JdbcDataSourceState {
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Data Source Description
  final pulumi.Input<String>? dataSourceDescription;
  /// The data source ID.
  final pulumi.Input<String>? dataSourceId;
  /// Data Source Name
  final pulumi.Input<String>? dataSourceName;
  /// Data Source Type
  final pulumi.Input<String>? dataSourceType;
  /// The instance ID.
  final pulumi.Input<String>? dbInstanceId;
  /// The JDBC connection string.
  final pulumi.Input<String>? jdbcConnectionString;
  /// The password of the database account.
  final pulumi.Input<String>? jdbcPassword;
  /// The name of the database account.
  final pulumi.Input<String>? jdbcUserName;
  /// Data Source Status
  final pulumi.Input<String>? status;

  /// Creates a new [JdbcDataSourceState].
  /// [createTime] The creation time of the resource
  /// [dataSourceDescription] Data Source Description
  /// [dataSourceId] The data source ID.
  /// [dataSourceName] Data Source Name
  /// [dataSourceType] Data Source Type
  /// [dbInstanceId] The instance ID.
  /// [jdbcConnectionString] The JDBC connection string.
  /// [jdbcPassword] The password of the database account.
  /// [jdbcUserName] The name of the database account.
  /// [status] Data Source Status
  JdbcDataSourceState({
    this.createTime,
    this.dataSourceDescription,
    this.dataSourceId,
    this.dataSourceName,
    this.dataSourceType,
    this.dbInstanceId,
    this.jdbcConnectionString,
    this.jdbcPassword,
    this.jdbcUserName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataSourceDescription': ?dataSourceDescription,
      'dataSourceId': ?dataSourceId,
      'dataSourceName': ?dataSourceName,
      'dataSourceType': ?dataSourceType,
      'dbInstanceId': ?dbInstanceId,
      'jdbcConnectionString': ?jdbcConnectionString,
      'jdbcPassword': ?jdbcPassword,
      'jdbcUserName': ?jdbcUserName,
      'status': ?status,
    };
  }

  factory JdbcDataSourceState.fromMap(Map<String, dynamic> map) {
    return JdbcDataSourceState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : (map['dataSourceDescription'] as String).input(),
      dataSourceId: map['dataSourceId'] == null ? null : (map['dataSourceId'] as String).input(),
      dataSourceName: map['dataSourceName'] == null ? null : (map['dataSourceName'] as String).input(),
      dataSourceType: map['dataSourceType'] == null ? null : (map['dataSourceType'] as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      jdbcConnectionString: map['jdbcConnectionString'] == null ? null : (map['jdbcConnectionString'] as String).input(),
      jdbcPassword: map['jdbcPassword'] == null ? null : (map['jdbcPassword'] as String).input(),
      jdbcUserName: map['jdbcUserName'] == null ? null : (map['jdbcUserName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

