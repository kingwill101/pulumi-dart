// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetRedshiftTarget {
  /// The name of the database.
  final pulumi.Input<String> database;
  /// The database user name.
  final pulumi.Input<String>? dbUser;
  /// The name or ARN of the secret that enables access to the database.
  final pulumi.Input<String>? secretsManagerArn;
  /// The SQL statement text to run.
  final pulumi.Input<String>? sql;
  /// The name of the SQL statement.
  final pulumi.Input<String>? statementName;
  /// Indicates whether to send an event back to EventBridge after the SQL statement runs.
  final pulumi.Input<bool>? withEvent;

  /// Creates a new [EventTargetRedshiftTarget].
  /// [database] The name of the database.
  /// [dbUser] The database user name.
  /// [secretsManagerArn] The name or ARN of the secret that enables access to the database.
  /// [sql] The SQL statement text to run.
  /// [statementName] The name of the SQL statement.
  /// [withEvent] Indicates whether to send an event back to EventBridge after the SQL statement runs.
  EventTargetRedshiftTarget({
    required this.database,
    this.dbUser,
    this.secretsManagerArn,
    this.sql,
    this.statementName,
    this.withEvent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'dbUser': ?dbUser,
      'secretsManagerArn': ?secretsManagerArn,
      'sql': ?sql,
      'statementName': ?statementName,
      'withEvent': ?withEvent,
    };
  }

  factory EventTargetRedshiftTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetRedshiftTarget(
      database: (map['database'] as String).input(),
      dbUser: map['dbUser'] == null ? null : (map['dbUser'] as String).input(),
      secretsManagerArn: map['secretsManagerArn'] == null ? null : (map['secretsManagerArn'] as String).input(),
      sql: map['sql'] == null ? null : (map['sql'] as String).input(),
      statementName: map['statementName'] == null ? null : (map['statementName'] as String).input(),
      withEvent: map['withEvent'] == null ? null : (map['withEvent'] as bool).input(),
    );
  }
}

