// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'statement_parameter.dart';

/// {@template pulumi_redshiftdata_statement_statement_args_doc}
/// The set of arguments for Statement.
/// {@endtemplate}
/// {@macro pulumi_redshiftdata_statement_statement_args_doc}
class StatementArgs {
  /// The cluster identifier. This parameter is required when connecting to a cluster and authenticating using either Secrets Manager or temporary credentials.
  final pulumi.Input<String>? clusterIdentifier;

  /// The name of the database.
  final pulumi.Input<String> database;

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
  final pulumi.Input<String> sql;

  /// The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  final pulumi.Input<String>? statementName;

  /// A value that indicates whether to send an event to the Amazon EventBridge event bus after the SQL statement runs.
  final pulumi.Input<bool>? withEvent;

  /// The serverless workgroup name. This parameter is required when connecting to a serverless workgroup and authenticating using either Secrets Manager or temporary credentials.
  final pulumi.Input<String>? workgroupName;

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
  StatementArgs({
    String? clusterIdentifier,
    required String database,
    String? dbUser,
    List<StatementParameter>? parameters,
    String? region,
    String? secretArn,
    required String sql,
    String? statementName,
    bool? withEvent,
    String? workgroupName,
  })  : clusterIdentifier =
            pulumi.Input.asOptionalInput<String>(clusterIdentifier),
        database = pulumi.Input.asInput<String>(database),
        dbUser = pulumi.Input.asOptionalInput<String>(dbUser),
        parameters =
            pulumi.Input.asOptionalInput<List<StatementParameter>>(parameters),
        region = pulumi.Input.asOptionalInput<String>(region),
        secretArn = pulumi.Input.asOptionalInput<String>(secretArn),
        sql = pulumi.Input.asInput<String>(sql),
        statementName = pulumi.Input.asOptionalInput<String>(statementName),
        withEvent = pulumi.Input.asOptionalInput<bool>(withEvent),
        workgroupName = pulumi.Input.asOptionalInput<String>(workgroupName);

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
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<StatementParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) =>
              pulumi.Input.encodeList<StatementParameter, Map<String, dynamic>>(
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
      clusterIdentifier: map['clusterIdentifier'] == null
          ? null
          : map['clusterIdentifier'] as String,
      database: map['database'] as String,
      dbUser: map['dbUser'] == null ? null : map['dbUser'] as String,
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<StatementParameter>(
              map['parameters'],
              (value) => StatementParameter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
      sql: map['sql'] as String,
      statementName:
          map['statementName'] == null ? null : map['statementName'] as String,
      withEvent: map['withEvent'] == null ? null : map['withEvent'] as bool,
      workgroupName:
          map['workgroupName'] == null ? null : map['workgroupName'] as String,
    );
  }
}
