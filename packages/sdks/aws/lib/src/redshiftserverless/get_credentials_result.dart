// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCredentials.
class GetCredentialsResult {
  final String? dbName;
  /// Temporary password that authorizes the user name returned by `dbUser` to log on to the database `dbName`.
  final String? dbPassword;
  /// A database user name that is authorized to log on to the database `dbName` using the password `dbPassword` . If the specified `dbUser` exists in the database, the new user name has the same database privileges as the user named in `dbUser` . By default, the user is added to PUBLIC. the user doesn't exist in the database.
  final String? dbUser;
  final int? durationSeconds;
  /// Date and time the password in `dbPassword` expires.
  final String? expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? workgroupName;

  /// Creates a new [GetCredentialsResult].
  /// [dbName] Optional.
  /// [dbPassword] Temporary password that authorizes the user name returned by `dbUser` to log on to the database `dbName`.
  /// [dbUser] A database user name that is authorized to log on to the database `dbName` using the password `dbPassword` . If the specified `dbUser` exists in the database, the new user name has the same database privileges as the user named in `dbUser` . By default, the user is added to PUBLIC. the user doesn't exist in the database.
  /// [durationSeconds] Optional.
  /// [expiration] Date and time the password in `dbPassword` expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [workgroupName] Optional.
  const GetCredentialsResult({
    this.dbName,
    this.dbPassword,
    this.dbUser,
    this.durationSeconds,
    this.expiration,
    this.id,
    this.region,
    this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbName': ?dbName,
      'dbPassword': ?dbPassword,
      'dbUser': ?dbUser,
      'durationSeconds': ?durationSeconds,
      'expiration': ?expiration,
      'id': ?id,
      'region': ?region,
      'workgroupName': ?workgroupName,
    };
  }

  factory GetCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetCredentialsResult(
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbPassword: (() { final guardedValue = map['dbPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbUser: (() { final guardedValue = map['dbUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workgroupName: (() { final guardedValue = map['workgroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
