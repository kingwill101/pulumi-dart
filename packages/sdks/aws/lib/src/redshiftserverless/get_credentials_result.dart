// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCredentials.
class GetCredentialsResult {
  final String? dbName;
  /// Temporary password that authorizes the user name returned by `dbUser` to log on to the database `dbName`.
  final String dbPassword;
  /// A database user name that is authorized to log on to the database `dbName` using the password `dbPassword` . If the specified `dbUser` exists in the database, the new user name has the same database privileges as the user named in `dbUser` . By default, the user is added to PUBLIC. the user doesn't exist in the database.
  final String dbUser;
  final int? durationSeconds;
  /// Date and time the password in `dbPassword` expires.
  final String expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String workgroupName;

  /// Creates a new [GetCredentialsResult].
  /// [dbName] Optional.
  /// [dbPassword] Temporary password that authorizes the user name returned by `dbUser` to log on to the database `dbName`.
  /// [dbUser] A database user name that is authorized to log on to the database `dbName` using the password `dbPassword` . If the specified `dbUser` exists in the database, the new user name has the same database privileges as the user named in `dbUser` . By default, the user is added to PUBLIC. the user doesn't exist in the database.
  /// [durationSeconds] Optional.
  /// [expiration] Date and time the password in `dbPassword` expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [workgroupName] Required.
  const GetCredentialsResult({
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
    return <String, dynamic>{
      'dbName': ?dbName,
      'dbPassword': dbPassword,
      'dbUser': dbUser,
      'durationSeconds': ?durationSeconds,
      'expiration': expiration,
      'id': id,
      'region': region,
      'workgroupName': workgroupName,
    };
  }

  factory GetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialsResult(
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbPassword: map['dbPassword'] as String,
      dbUser: map['dbUser'] as String,
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      workgroupName: map['workgroupName'] as String,
    );
  }
}
