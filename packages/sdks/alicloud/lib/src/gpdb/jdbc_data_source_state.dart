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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dataSourceDescription,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<String>? dataSourceName,
    pulumi.Output<String>? dataSourceType,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<String>? jdbcConnectionString,
    pulumi.Output<String>? jdbcPassword,
    pulumi.Output<String>? jdbcUserName,
    pulumi.Output<String>? status,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dataSourceDescription = pulumi.Input.asOptionalInput<String>(dataSourceDescription),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      dataSourceType = pulumi.Input.asOptionalInput<String>(dataSourceType),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      jdbcConnectionString = pulumi.Input.asOptionalInput<String>(jdbcConnectionString),
      jdbcPassword = pulumi.Input.asOptionalInput<String>(jdbcPassword),
      jdbcUserName = pulumi.Input.asOptionalInput<String>(jdbcUserName),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dataSourceDescription: map['dataSourceDescription'] == null ? null : pulumi.Output.create<String>(map['dataSourceDescription'] as String),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      dataSourceType: map['dataSourceType'] == null ? null : pulumi.Output.create<String>(map['dataSourceType'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      jdbcConnectionString: map['jdbcConnectionString'] == null ? null : pulumi.Output.create<String>(map['jdbcConnectionString'] as String),
      jdbcPassword: map['jdbcPassword'] == null ? null : pulumi.Output.create<String>(map['jdbcPassword'] as String),
      jdbcUserName: map['jdbcUserName'] == null ? null : pulumi.Output.create<String>(map['jdbcUserName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

