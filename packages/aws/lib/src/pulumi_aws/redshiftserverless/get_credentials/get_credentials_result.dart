// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCredentials.
class GetCredentialsResult {
  final String? dbName;

  /// Temporary password that authorizes the user name returned by `db_user` to log on to the database `db_name`.
  final String dbPassword;

  /// A database user name that is authorized to log on to the database `db_name` using the password `db_password` . If the specified `db_user` exists in the database, the new user name has the same database privileges as the user named in `db_user` . By default, the user is added to PUBLIC. the user doesn't exist in the database.
  final String dbUser;
  final int? durationSeconds;

  /// Date and time the password in `db_password` expires.
  final String expiration;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String workgroupName;

  GetCredentialsResult({
    this.dbName,
    required this.dbPassword,
    required this.dbUser,
    this.durationSeconds,
    required this.expiration,
    required this.id,
    required this.region,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbNameValue = dbName;
    if (dbNameValue != null) {
      map['dbName'] = dbNameValue;
    }
    map['dbPassword'] = dbPassword;
    map['dbUser'] = dbUser;
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    map['expiration'] = expiration;
    map['id'] = id;
    map['region'] = region;
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory GetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialsResult(
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      dbPassword: map['dbPassword'] as String,
      dbUser: map['dbUser'] as String,
      durationSeconds:
          map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      workgroupName: map['workgroupName'] as String,
    );
  }
}
