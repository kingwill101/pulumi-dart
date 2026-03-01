// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_get_cluster_credentials_get_cluster_credentials_args_doc}
/// Arguments for getClusterCredentials.
/// {@endtemplate}
/// {@macro pulumi_redshift_get_cluster_credentials_get_cluster_credentials_args_doc}
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

  /// Creates a new [GetClusterCredentialsArgs].
  /// [autoCreate] Create a database user with the name specified for the user named in `db_user` if one does not exist.
  /// [clusterIdentifier] Unique identifier of the cluster that contains the database for which your are requesting credentials.
  /// [dbGroups] List of the names of existing database groups that the user named in `db_user` will join for the current session, in addition to any group memberships for an existing user. If not specified, a new user is added only to `PUBLIC`.
  /// [dbName] Name of a database that DbUser is authorized to log on to. If `db_name` is not specified, `db_user` can log on to any existing database.
  /// [dbUser] Name of a database user. If a user name matching `db_user` exists in the database, the temporary user credentials have the same permissions as the  existing user. If `db_user` doesn't exist in the database and `auto_create` is `True`, a new user is created using the value for `db_user` with `PUBLIC` permissions.  If a database user matching the value for `db_user` doesn't exist and `not` is `False`, then the command succeeds but the connection attempt will fail because the user doesn't exist in the database.
  /// [durationSeconds] The number of seconds until the returned temporary password expires. Valid values are between `900` and `3600`. Default value is `900`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetClusterCredentialsArgs({
    pulumi.Output<bool>? autoCreate,
    required pulumi.Output<String> clusterIdentifier,
    pulumi.Output<List<String>>? dbGroups,
    pulumi.Output<String>? dbName,
    required pulumi.Output<String> dbUser,
    pulumi.Output<int>? durationSeconds,
    pulumi.Output<String>? region,
  }) :
      autoCreate = pulumi.Input.asOptionalInput<bool>(autoCreate),
      clusterIdentifier = pulumi.Input.asInput<String>(clusterIdentifier),
      dbGroups = pulumi.Input.asOptionalInput<List<String>>(dbGroups),
      dbName = pulumi.Input.asOptionalInput<String>(dbName),
      dbUser = pulumi.Input.asInput<String>(dbUser),
      durationSeconds = pulumi.Input.asOptionalInput<int>(durationSeconds),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': ?autoCreate,
      'clusterIdentifier': clusterIdentifier,
      'dbGroups': ?dbGroups,
      'dbName': ?dbName,
      'dbUser': dbUser,
      'durationSeconds': ?durationSeconds,
      'region': ?region,
    };
  }

  factory GetClusterCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterCredentialsArgs(
      autoCreate: map['autoCreate'] == null ? null : pulumi.Output.create<bool>(map['autoCreate'] as bool),
      clusterIdentifier: pulumi.Output.create<String>(map['clusterIdentifier'] as String),
      dbGroups: map['dbGroups'] == null ? null : pulumi.Output.create<List<String>>((map['dbGroups'] as List).cast<String>()),
      dbName: map['dbName'] == null ? null : pulumi.Output.create<String>(map['dbName'] as String),
      dbUser: pulumi.Output.create<String>(map['dbUser'] as String),
      durationSeconds: map['durationSeconds'] == null ? null : pulumi.Output.create<int>(map['durationSeconds'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

