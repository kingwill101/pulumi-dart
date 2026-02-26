// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getClusterCredentials.
class GetClusterCredentialsArgs {
  /// Create a database user with the name specified for the user named in <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> if one does not exist.
  final Input<bool>? autoCreate;

  /// Unique identifier of the cluster that contains the database for which your are requesting credentials.
  final Input<String> clusterIdentifier;

  /// List of the names of existing database groups that the user named in <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to `PUBLIC`.
  final Input<List<String>>? dbGroups;

  /// Name of a database that DbUser is authorized to log on to. If <span pulumi-lang-nodejs="`dbName`" pulumi-lang-dotnet="`DbName`" pulumi-lang-go="`dbName`" pulumi-lang-python="`db_name`" pulumi-lang-yaml="`dbName`" pulumi-lang-java="`dbName`">`db_name`</span> is not specified, <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> can log on to any existing database.
  final Input<String>? dbName;

  /// Name of a database user. If a user name matching <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> exists in the database, the temporary user credentials have the same permissions as the  existing user. If <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> doesn't exist in the database and <span pulumi-lang-nodejs="`autoCreate`" pulumi-lang-dotnet="`AutoCreate`" pulumi-lang-go="`autoCreate`" pulumi-lang-python="`auto_create`" pulumi-lang-yaml="`autoCreate`" pulumi-lang-java="`autoCreate`">`auto_create`</span> is `True`, a new user is created using the value for <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> with `PUBLIC` permissions.  If a database user matching the value for <span pulumi-lang-nodejs="`dbUser`" pulumi-lang-dotnet="`DbUser`" pulumi-lang-go="`dbUser`" pulumi-lang-python="`db_user`" pulumi-lang-yaml="`dbUser`" pulumi-lang-java="`dbUser`">`db_user`</span> doesn't exist and <span pulumi-lang-nodejs="`not`" pulumi-lang-dotnet="`Not`" pulumi-lang-go="`not`" pulumi-lang-python="`not`" pulumi-lang-yaml="`not`" pulumi-lang-java="`not`">`not`</span> is `False`, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.
  final Input<String> dbUser;

  /// The number of seconds until the returned temporary password expires. Valid values are between <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span> and <span pulumi-lang-nodejs="`3600`" pulumi-lang-dotnet="`3600`" pulumi-lang-go="`3600`" pulumi-lang-python="`3600`" pulumi-lang-yaml="`3600`" pulumi-lang-java="`3600`">`3600`</span>. Default value is <span pulumi-lang-nodejs="`900`" pulumi-lang-dotnet="`900`" pulumi-lang-go="`900`" pulumi-lang-python="`900`" pulumi-lang-yaml="`900`" pulumi-lang-java="`900`">`900`</span>.
  final Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetClusterCredentialsArgs({
    this.autoCreate,
    required this.clusterIdentifier,
    this.dbGroups,
    this.dbName,
    required this.dbUser,
    this.durationSeconds,
    this.region,
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
    map['dbUser'] = dbUser;
    final durationSecondsValue = durationSeconds;
    if (durationSecondsValue != null) {
      map['durationSeconds'] = durationSecondsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetClusterCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialsArgs(
      autoCreate: Input.asOptionalInput<bool>(map['autoCreate']),
      clusterIdentifier: Input.asInput<String>(map['clusterIdentifier']),
      dbGroups: Input.asOptionalInput<List<String>>(map['dbGroups']),
      dbName: Input.asOptionalInput<String>(map['dbName']),
      dbUser: Input.asInput<String>(map['dbUser']),
      durationSeconds: Input.asOptionalInput<int>(map['durationSeconds']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
