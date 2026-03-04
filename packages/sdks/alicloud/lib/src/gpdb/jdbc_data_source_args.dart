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
    this.dataSourceDescription,
    this.dataSourceName,
    this.dataSourceType,
    required this.dbInstanceId,
    this.jdbcConnectionString,
    this.jdbcPassword,
    required this.jdbcUserName,
  });

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
      dataSourceDescription: (() {
        final guardedValue = map['dataSourceDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceName: (() {
        final guardedValue = map['dataSourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataSourceType: (() {
        final guardedValue = map['dataSourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      jdbcConnectionString: (() {
        final guardedValue = map['jdbcConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jdbcPassword: (() {
        final guardedValue = map['jdbcPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jdbcUserName: pulumi.Input.fromValue(map['jdbcUserName'] as String),
    );
  }
}
