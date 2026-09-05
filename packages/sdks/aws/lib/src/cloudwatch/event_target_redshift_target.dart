// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetRedshiftTarget {
  /// The name of the database.
  final pulumi.Input<String> database;
  /// The database user name.
  final pulumi.Input<String?>? dbUser;
  /// The name or ARN of the secret that enables access to the database.
  final pulumi.Input<String?>? secretsManagerArn;
  /// The SQL statement text to run.
  final pulumi.Input<String?>? sql;
  /// The name of the SQL statement.
  final pulumi.Input<String?>? statementName;
  /// Indicates whether to send an event back to EventBridge after the SQL statement runs.
  final pulumi.Input<bool?>? withEvent;

  /// Creates a new [EventTargetRedshiftTarget].
  /// [database] The name of the database.
  /// [dbUser] The database user name.
  /// [secretsManagerArn] The name or ARN of the secret that enables access to the database.
  /// [sql] The SQL statement text to run.
  /// [statementName] The name of the SQL statement.
  /// [withEvent] Indicates whether to send an event back to EventBridge after the SQL statement runs.
  const EventTargetRedshiftTarget({
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
      database: pulumi.Input.fromValue(map['database'] as String),
      dbUser: (() { final guardedValue = map['dbUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsManagerArn: (() { final guardedValue = map['secretsManagerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sql: (() { final guardedValue = map['sql']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statementName: (() { final guardedValue = map['statementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withEvent: (() { final guardedValue = map['withEvent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
