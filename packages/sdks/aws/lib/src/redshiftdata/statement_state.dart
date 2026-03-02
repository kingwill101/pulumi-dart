// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'statement_parameter.dart';

/// Input properties used for looking up and filtering Statement resources.
class StatementState {
  /// The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials.
  final pulumi.Input<String>? clusterIdentifier;
  /// The name of the database.
  final pulumi.Input<String>? database;
  /// The database user name.
  final pulumi.Input<String>? dbUser;
  final pulumi.Input<List<StatementParameter>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name or ARN of the secret that enables access to the database.
  final pulumi.Input<String>? secretArn;
  /// The SQL statement text to run.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? sql;
  /// The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  final pulumi.Input<String>? statementName;
  /// A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs.
  final pulumi.Input<bool>? withEvent;
  /// The serverless workgroup name. This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.
  final pulumi.Input<String>? workgroupName;

  /// Creates a new [StatementState].
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
  StatementState({
    this.clusterIdentifier,
    this.database,
    this.dbUser,
    this.parameters,
    this.region,
    this.secretArn,
    this.sql,
    this.statementName,
    this.withEvent,
    this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterIdentifier': ?clusterIdentifier,
      'database': ?database,
      'dbUser': ?dbUser,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<StatementParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<StatementParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'secretArn': ?secretArn,
      'sql': ?sql,
      'statementName': ?statementName,
      'withEvent': ?withEvent,
      'workgroupName': ?workgroupName,
    };
  }

  factory StatementState.fromMap(Map<String, dynamic> map) {
    return StatementState(
      clusterIdentifier: map['clusterIdentifier'] == null ? null : (map['clusterIdentifier'] as String).input(),
      database: map['database'] == null ? null : (map['database'] as String).input(),
      dbUser: map['dbUser'] == null ? null : (map['dbUser'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<StatementParameter>(map['parameters'], (value) => StatementParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretArn: map['secretArn'] == null ? null : (map['secretArn'] as String).input(),
      sql: map['sql'] == null ? null : (map['sql'] as String).input(),
      statementName: map['statementName'] == null ? null : (map['statementName'] as String).input(),
      withEvent: map['withEvent'] == null ? null : (map['withEvent'] as bool).input(),
      workgroupName: map['workgroupName'] == null ? null : (map['workgroupName'] as String).input(),
    );
  }
}

