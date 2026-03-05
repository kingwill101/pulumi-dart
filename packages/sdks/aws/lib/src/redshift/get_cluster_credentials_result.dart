// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterCredentials.
class GetClusterCredentialsResult {
  final bool? autoCreate;
  final String clusterIdentifier;
  final List<String>? dbGroups;
  final String? dbName;
  /// Temporary password that authorizes the user name returned by `db_user` to log on to the database `db_name`.
  final String dbPassword;
  final String dbUser;
  final int? durationSeconds;
  /// Date and time the password in `db_password` expires.
  final String expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetClusterCredentialsResult].
  /// [autoCreate] Optional.
  /// [clusterIdentifier] Required.
  /// [dbGroups] Optional.
  /// [dbName] Optional.
  /// [dbPassword] Temporary password that authorizes the user name returned by `db_user` to log on to the database `db_name`.
  /// [dbUser] Required.
  /// [durationSeconds] Optional.
  /// [expiration] Date and time the password in `db_password` expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetClusterCredentialsResult({
    this.autoCreate,
    required this.clusterIdentifier,
    this.dbGroups,
    this.dbName,
    required this.dbPassword,
    required this.dbUser,
    this.durationSeconds,
    required this.expiration,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': ?autoCreate,
      'clusterIdentifier': clusterIdentifier,
      'dbGroups': ?dbGroups,
      'dbName': ?dbName,
      'dbPassword': dbPassword,
      'dbUser': dbUser,
      'durationSeconds': ?durationSeconds,
      'expiration': expiration,
      'id': id,
      'region': region,
    };
  }

  factory GetClusterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialsResult(
      autoCreate: (() { final guardedValue = map['autoCreate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterIdentifier: map['clusterIdentifier'] as String,
      dbGroups: (() { final guardedValue = map['dbGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbPassword: map['dbPassword'] as String,
      dbUser: map['dbUser'] as String,
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return guardedValue as int; })(),
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

