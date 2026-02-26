// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../statement_parameter/statement_parameter.dart';

/// The set of arguments for Statement.
class StatementArgs {
  /// The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials.
  final Input<String>? clusterIdentifier;

  /// The name of the database.
  final Input<String> database;

  /// The database user name.
  final Input<String>? dbUser;
  final Input<List<StatementParameter>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name or ARN of the secret that enables access to the database.
  final Input<String>? secretArn;

  /// The SQL statement text to run.
  ///
  /// The following arguments are optional:
  final Input<String> sql;

  /// The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  final Input<String>? statementName;

  /// A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs.
  final Input<bool>? withEvent;

  /// The serverless workgroup name. This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.
  final Input<String>? workgroupName;

  StatementArgs({
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
    final map = <String, dynamic>{};
    final clusterIdentifierValue = clusterIdentifier;
    if (clusterIdentifierValue != null) {
      map['clusterIdentifier'] = clusterIdentifierValue;
    }
    map['database'] = database;
    final dbUserValue = dbUser;
    if (dbUserValue != null) {
      map['dbUser'] = dbUserValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.mapOptionalInputValue<List<StatementParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<StatementParameter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    map['sql'] = sql;
    final statementNameValue = statementName;
    if (statementNameValue != null) {
      map['statementName'] = statementNameValue;
    }
    final withEventValue = withEvent;
    if (withEventValue != null) {
      map['withEvent'] = withEventValue;
    }
    final workgroupNameValue = workgroupName;
    if (workgroupNameValue != null) {
      map['workgroupName'] = workgroupNameValue;
    }
    return map;
  }

  factory StatementArgs.fromMap(Map<String, dynamic> map) {
    return StatementArgs(
      clusterIdentifier:
          Input.asOptionalInput<String>(map['clusterIdentifier']),
      database: Input.asInput<String>(map['database']),
      dbUser: Input.asOptionalInput<String>(map['dbUser']),
      parameters:
          Input.asOptionalInput<List<StatementParameter>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      secretArn: Input.asOptionalInput<String>(map['secretArn']),
      sql: Input.asInput<String>(map['sql']),
      statementName: Input.asOptionalInput<String>(map['statementName']),
      withEvent: Input.asOptionalInput<bool>(map['withEvent']),
      workgroupName: Input.asOptionalInput<String>(map['workgroupName']),
    );
  }
}
