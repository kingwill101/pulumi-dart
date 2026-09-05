// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'statement_parameter.dart';

/// {@template pulumi_redshiftdata_statement_statement_args_doc}
/// The set of arguments for Statement.
/// {@endtemplate}
/// {@macro pulumi_redshiftdata_statement_statement_args_doc}
class StatementArgs {
  /// The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials.
  final pulumi.Input<String?>? clusterIdentifier;
  /// The name of the database.
  final pulumi.Input<String> database;
  /// The database user name.
  final pulumi.Input<String?>? dbUser;
  final pulumi.Input<List<StatementParameter>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The name or ARN of the secret that enables access to the database.
  final pulumi.Input<String?>? secretArn;
  /// The SQL statement text to run.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> sql;
  /// The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  final pulumi.Input<String?>? statementName;
  /// A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs.
  final pulumi.Input<bool?>? withEvent;
  /// The serverless workgroup name. This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.
  final pulumi.Input<String?>? workgroupName;

  /// Creates a new [StatementArgs].
  /// [clusterIdentifier] The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials.
  /// [database] The name of the database.
  /// [dbUser] The database user name.
  /// [parameters] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] The name or ARN of the secret that enables access to the database.
  /// [sql] The SQL statement text to run.
  /// [statementName] The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  /// [withEvent] A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs.
  /// [workgroupName] The serverless workgroup name. This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.
  const StatementArgs({
    this.clusterIdentifier,
    required this.database,
    this.dbUser,
    this.parameters,
    this.region,
    this.secretArn,
    required this.sql,
    this.statementName,
    this.withEvent,
    this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': ?clusterIdentifier,
      'database': database,
      'dbUser': ?dbUser,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<StatementParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<StatementParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'secretArn': ?secretArn,
      'sql': sql,
      'statementName': ?statementName,
      'withEvent': ?withEvent,
      'workgroupName': ?workgroupName,
    };
  }

  factory StatementArgs.fromMap(Map<String, dynamic> map) {
    return StatementArgs(
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      database: pulumi.Input.fromValue(map['database'] as String),
      dbUser: (() { final guardedValue = map['dbUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatementParameter>(guardedValue, (value) => StatementParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sql: pulumi.Input.fromValue(map['sql'] as String),
      statementName: (() { final guardedValue = map['statementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withEvent: (() { final guardedValue = map['withEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workgroupName: (() { final guardedValue = map['workgroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
