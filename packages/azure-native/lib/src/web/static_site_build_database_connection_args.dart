// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_static_site_build_database_connection_args_doc}
/// The set of arguments for StaticSiteBuildDatabaseConnection.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_build_database_connection_args_doc}
class StaticSiteBuildDatabaseConnectionArgs {
  /// If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  final pulumi.Input<String>? connectionIdentity;
  /// The connection string to use to connect to the database.
  final pulumi.Input<String>? connectionString;
  /// Name of the database connection.
  final pulumi.Input<String>? databaseConnectionName;
  /// The stage site identifier.
  final pulumi.Input<String> environmentName;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the static site
  final pulumi.Input<String> name;
  /// The region of the database resource.
  final pulumi.Input<String> region;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The resource id of the database.
  final pulumi.Input<String> resourceId;

  /// Creates a new [StaticSiteBuildDatabaseConnectionArgs].
  /// [connectionIdentity] If present, the identity is used in conjunction with connection string to connect to the database. Use of the system-assigned managed identity is indicated with the string 'SystemAssigned', while use of a user-assigned managed identity is indicated with the resource id of the managed identity resource.
  /// [connectionString] The connection string to use to connect to the database.
  /// [databaseConnectionName] Name of the database connection.
  /// [environmentName] The stage site identifier.
  /// [kind] Kind of resource.
  /// [name] Name of the static site
  /// [region] The region of the database resource.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [resourceId] The resource id of the database.
  StaticSiteBuildDatabaseConnectionArgs({
    String? connectionIdentity,
    String? connectionString,
    String? databaseConnectionName,
    required String environmentName,
    String? kind,
    required String name,
    required String region,
    required String resourceGroupName,
    required String resourceId,
  }) :
      connectionIdentity = pulumi.Input.asOptionalInput<String>(connectionIdentity),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      databaseConnectionName = pulumi.Input.asOptionalInput<String>(databaseConnectionName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asInput<String>(region),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionIdentity': ?connectionIdentity,
      'connectionString': ?connectionString,
      'databaseConnectionName': ?databaseConnectionName,
      'environmentName': environmentName,
      'kind': ?kind,
      'name': name,
      'region': region,
      'resourceGroupName': resourceGroupName,
      'resourceId': resourceId,
    };
  }

  factory StaticSiteBuildDatabaseConnectionArgs.fromMap(Map<String, dynamic> map) {
    return StaticSiteBuildDatabaseConnectionArgs(
      connectionIdentity: map['connectionIdentity'] == null ? null : map['connectionIdentity'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      databaseConnectionName: map['databaseConnectionName'] == null ? null : map['databaseConnectionName'] as String,
      environmentName: map['environmentName'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

