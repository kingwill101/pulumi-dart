// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipeTargetParametersRedshiftDataParameters {
  /// Name of the database. Required when authenticating using temporary credentials.
  final pulumi.Input<String> database;
  /// Database user name. Required when authenticating using temporary credentials.
  final pulumi.Input<String?>? dbUser;
  /// Name or ARN of the secret that enables access to the database. Required when authenticating using Secrets Manager.
  final pulumi.Input<String?>? secretManagerArn;
  /// List of SQL statements text to run, each of maximum length of 100,000.
  final pulumi.Input<List<String>> sqls;
  /// Name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  final pulumi.Input<String?>? statementName;
  /// Whether to send an event back to EventBridge after the SQL statement runs.
  final pulumi.Input<bool?>? withEvent;

  /// Creates a new [PipeTargetParametersRedshiftDataParameters].
  /// [database] Name of the database. Required when authenticating using temporary credentials.
  /// [dbUser] Database user name. Required when authenticating using temporary credentials.
  /// [secretManagerArn] Name or ARN of the secret that enables access to the database. Required when authenticating using Secrets Manager.
  /// [sqls] List of SQL statements text to run, each of maximum length of 100,000.
  /// [statementName] Name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  /// [withEvent] Whether to send an event back to EventBridge after the SQL statement runs.
  const PipeTargetParametersRedshiftDataParameters({
    required this.database,
    this.dbUser,
    this.secretManagerArn,
    required this.sqls,
    this.statementName,
    this.withEvent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'dbUser': ?dbUser,
      'secretManagerArn': ?secretManagerArn,
      'sqls': sqls,
      'statementName': ?statementName,
      'withEvent': ?withEvent,
    };
  }

  factory PipeTargetParametersRedshiftDataParameters.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersRedshiftDataParameters(
      database: pulumi.Input.fromValue(map['database'] as String),
      dbUser: (() { final guardedValue = map['dbUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretManagerArn: (() { final guardedValue = map['secretManagerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqls: pulumi.Input.fromValue((map['sqls'] as List).cast<String>()),
      statementName: (() { final guardedValue = map['statementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withEvent: (() { final guardedValue = map['withEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
