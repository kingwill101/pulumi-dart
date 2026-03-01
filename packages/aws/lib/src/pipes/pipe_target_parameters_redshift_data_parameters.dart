// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersRedshiftDataParameters {
  /// The name of the database. Required when authenticating using temporary credentials.
  final String database;

  /// The database user name. Required when authenticating using temporary credentials.
  final String? dbUser;

  /// The name or ARN of the secret that enables access to the database. Required when authenticating using Secrets Manager.
  final String? secretManagerArn;

  /// List of SQL statements text to run, each of maximum length of 100,000.
  final List<String> sqls;

  /// The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  final String? statementName;

  /// Indicates whether to send an event back to EventBridge after the SQL statement runs.
  final bool? withEvent;

  /// Creates a new [PipeTargetParametersRedshiftDataParameters].
  /// [database] The name of the database. Required when authenticating using temporary credentials.
  /// [dbUser] The database user name. Required when authenticating using temporary credentials.
  /// [secretManagerArn] The name or ARN of the secret that enables access to the database. Required when authenticating using Secrets Manager.
  /// [sqls] List of SQL statements text to run, each of maximum length of 100,000.
  /// [statementName] The name of the SQL statement. You can name the SQL statement when you create it to identify the query.
  /// [withEvent] Indicates whether to send an event back to EventBridge after the SQL statement runs.
  PipeTargetParametersRedshiftDataParameters({
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

  factory PipeTargetParametersRedshiftDataParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersRedshiftDataParameters(
      database: map['database'] as String,
      dbUser: map['dbUser'] == null ? null : map['dbUser'] as String,
      secretManagerArn: map['secretManagerArn'] == null
          ? null
          : map['secretManagerArn'] as String,
      sqls: (map['sqls'] as List).cast<String>(),
      statementName: map['statementName'] == null
          ? null
          : map['statementName'] as String,
      withEvent: map['withEvent'] == null ? null : map['withEvent'] as bool,
    );
  }
}
