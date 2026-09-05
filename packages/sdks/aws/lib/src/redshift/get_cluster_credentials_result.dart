// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getClusterCredentials.
class GetClusterCredentialsResult {
  final bool? autoCreate;
  final String? clusterIdentifier;
  final List<String>? dbGroups;
  final String? dbName;
  /// Temporary password that authorizes the user name returned by `dbUser` to log on to the database `dbName`.
  final String? dbPassword;
  final String? dbUser;
  final int? durationSeconds;
  /// Date and time the password in `dbPassword` expires.
  final String? expiration;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetClusterCredentialsResult].
  /// [autoCreate] Optional.
  /// [clusterIdentifier] Optional.
  /// [dbGroups] Optional.
  /// [dbName] Optional.
  /// [dbPassword] Temporary password that authorizes the user name returned by `dbUser` to log on to the database `dbName`.
  /// [dbUser] Optional.
  /// [durationSeconds] Optional.
  /// [expiration] Date and time the password in `dbPassword` expires.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetClusterCredentialsResult({
    this.autoCreate,
    this.clusterIdentifier,
    this.dbGroups,
    this.dbName,
    this.dbPassword,
    this.dbUser,
    this.durationSeconds,
    this.expiration,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': ?autoCreate,
      'clusterIdentifier': ?clusterIdentifier,
      'dbGroups': ?dbGroups,
      'dbName': ?dbName,
      'dbPassword': ?dbPassword,
      'dbUser': ?dbUser,
      'durationSeconds': ?durationSeconds,
      'expiration': ?expiration,
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetClusterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialsResult(
      autoCreate: (() { final guardedValue = map['autoCreate']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbGroups: (() { final guardedValue = map['dbGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbPassword: (() { final guardedValue = map['dbPassword']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbUser: (() { final guardedValue = map['dbUser']; if (guardedValue == null) return null; return guardedValue as String; })(),
      durationSeconds: (() { final guardedValue = map['durationSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
