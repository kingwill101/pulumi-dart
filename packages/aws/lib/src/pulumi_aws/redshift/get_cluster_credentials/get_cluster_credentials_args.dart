// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClusterCredentials.
class GetClusterCredentialsArgs {
  /// Create a database user with the name specified for the user named in `db_user` if one does not exist.
  final pulumi.Input<bool>? autoCreate;

  /// Unique identifier of the cluster that contains the database for which your are requesting credentials.
  final pulumi.Input<String> clusterIdentifier;

  /// List of the names of existing database groups that the user named in `db_user` will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to `PUBLIC`.
  final pulumi.Input<List<String>>? dbGroups;

  /// Name of a database that DbUser is authorized to log on to. If `db_name` is not specified, `db_user` can log on to any existing database.
  final pulumi.Input<String>? dbName;

  /// Name of a database user. If a user name matching `db_user` exists in the database, the temporary user credentials have the same permissions as the  existing user. If `db_user` doesn't exist in the database and `auto_create` is `True`, a new user is created using the value for `db_user` with `PUBLIC` permissions.  If a database user matching the value for `db_user` doesn't exist and `not` is `False`, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.
  final pulumi.Input<String> dbUser;

  /// The number of seconds until the returned temporary password expires. Valid values are between `900` and `3600`. Default value is `900`.
  final pulumi.Input<int>? durationSeconds;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
      autoCreate: pulumi.Input.asOptionalInput<bool>(map['autoCreate']),
      clusterIdentifier: pulumi.Input.asInput<String>(map['clusterIdentifier']),
      dbGroups: pulumi.Input.asOptionalInput<List<String>>(map['dbGroups']),
      dbName: pulumi.Input.asOptionalInput<String>(map['dbName']),
      dbUser: pulumi.Input.asInput<String>(map['dbUser']),
      durationSeconds:
          pulumi.Input.asOptionalInput<int>(map['durationSeconds']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
