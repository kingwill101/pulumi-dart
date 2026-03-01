// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_jdbc_data_source_jdbc_data_source_args_doc}
/// The set of arguments for JdbcDataSource.
/// {@endtemplate}
/// {@macro pulumi_gpdb_jdbc_data_source_jdbc_data_source_args_doc}
class JdbcDataSourceArgs {
  /// Data Source Description
  final pulumi.Input<String>? dataSourceDescription;
  /// Data Source Name
  final pulumi.Input<String>? dataSourceName;
  /// Data Source Type
  final pulumi.Input<String>? dataSourceType;
  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;
  /// The JDBC connection string.
  final pulumi.Input<String>? jdbcConnectionString;
  /// The password of the database account.
  final pulumi.Input<String>? jdbcPassword;
  /// The name of the database account.
  final pulumi.Input<String> jdbcUserName;

  /// Creates a new [JdbcDataSourceArgs].
  /// [dataSourceDescription] Data Source Description
  /// [dataSourceName] Data Source Name
  /// [dataSourceType] Data Source Type
  /// [dbInstanceId] The instance ID.
  /// [jdbcConnectionString] The JDBC connection string.
  /// [jdbcPassword] The password of the database account.
  /// [jdbcUserName] The name of the database account.
  JdbcDataSourceArgs({
    pulumi.Output<String>? dataSourceDescription,
    pulumi.Output<String>? dataSourceName,
    pulumi.Output<String>? dataSourceType,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? jdbcConnectionString,
    pulumi.Output<String>? jdbcPassword,
    required pulumi.Output<String> jdbcUserName,
  }) :
      dataSourceDescription = pulumi.Input.asOptionalInput<String>(dataSourceDescription),
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      dataSourceType = pulumi.Input.asOptionalInput<String>(dataSourceType),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      jdbcConnectionString = pulumi.Input.asOptionalInput<String>(jdbcConnectionString),
      jdbcPassword = pulumi.Input.asOptionalInput<String>(jdbcPassword),
      jdbcUserName = pulumi.Input.asInput<String>(jdbcUserName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceDescription': ?dataSourceDescription,
      'dataSourceName': ?dataSourceName,
      'dataSourceType': ?dataSourceType,
      'dbInstanceId': dbInstanceId,
      'jdbcConnectionString': ?jdbcConnectionString,
      'jdbcPassword': ?jdbcPassword,
      'jdbcUserName': jdbcUserName,
    };
  }

  factory JdbcDataSourceArgs.fromMap(Map<String, dynamic> map) {
    return JdbcDataSourceArgs(
      dataSourceDescription: map['dataSourceDescription'] == null ? null : pulumi.Output.create<String>(map['dataSourceDescription'] as String),
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      dataSourceType: map['dataSourceType'] == null ? null : pulumi.Output.create<String>(map['dataSourceType'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      jdbcConnectionString: map['jdbcConnectionString'] == null ? null : pulumi.Output.create<String>(map['jdbcConnectionString'] as String),
      jdbcPassword: map['jdbcPassword'] == null ? null : pulumi.Output.create<String>(map['jdbcPassword'] as String),
      jdbcUserName: pulumi.Output.create<String>(map['jdbcUserName'] as String),
    );
  }
}

