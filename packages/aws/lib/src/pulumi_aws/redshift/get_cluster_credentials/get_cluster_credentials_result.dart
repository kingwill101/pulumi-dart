// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusterCredentials.
class GetClusterCredentialsResult {
  final bool? autoCreate;
  final String clusterIdentifier;
  final List<String>? dbGroups;
  final String? dbName;

  /// Temporary password that authorizes the user name returned by <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> to log on to the database <span pulumi-lang-nodejs="`dbName`" pulumi-lang-dotnet="`DbName`" pulumi-lang-go="`dbName`" pulumi-lang-python="`db_name`" pulumi-lang-yaml="`dbName`" pulumi-lang-java="`dbName`">`db_name`</span>.
  final String dbPassword;
  final String dbUser;
  final int? durationSeconds;

  /// Date and time the password in <span pulumi-lang-nodejs="`dbPassword`" pulumi-lang-dotnet="`DbPassword`" pulumi-lang-go="`dbPassword`" pulumi-lang-python="`db_password`" pulumi-lang-yaml="`dbPassword`" pulumi-lang-java="`dbPassword`">`db_password`</span> expires.
  final String expiration;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

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
    final map = <String, dynamic>{};
    final autoCreateValue = autoCreate;
    if (autoCreateValue != null) {
      map['autoCreate'] = autoCreateValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    final dbGroupsValue = dbGroups;
    if (dbGroupsValue != null) {
      map['dbGroups'] = dbGroupsValue;
    }
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
    return map;
  }

  factory GetClusterCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialsResult(
      autoCreate: map['autoCreate'] == null ? null : map['autoCreate'] as bool,
      clusterIdentifier: map['clusterIdentifier'] as String,
      dbGroups: map['dbGroups'] == null
          ? null
          : (map['dbGroups'] as List).cast<String>(),
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      dbPassword: map['dbPassword'] as String,
      dbUser: map['dbUser'] as String,
      durationSeconds:
          map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      expiration: map['expiration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
