// ignore_for_file: unused_element, unnecessary_cast

class EventTargetRedshiftTarget {
  /// The name of the database.
  final String database;

  /// The database user name.
  final String? dbUser;

  /// The name or ARN of the secret that enables access to the database.
  final String? secretsManagerArn;

  /// The SQL statement text to run.
  final String? sql;

  /// The name of the SQL statement.
  final String? statementName;

  /// Indicates whether to send an event back to EventBridge after the SQL statement runs.
  final bool? withEvent;

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
      database: map['database'] as String,
      dbUser: map['dbUser'] == null ? null : map['dbUser'] as String,
      secretsManagerArn: map['secretsManagerArn'] == null
          ? null
          : map['secretsManagerArn'] as String,
      sql: map['sql'] == null ? null : map['sql'] as String,
      statementName: map['statementName'] == null
          ? null
          : map['statementName'] as String,
      withEvent: map['withEvent'] == null ? null : map['withEvent'] as bool,
    );
  }
}
