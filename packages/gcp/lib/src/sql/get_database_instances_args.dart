// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_instances_get_database_instances_args_doc}
/// Arguments for getDatabaseInstances.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_instances_get_database_instances_args_doc}
class GetDatabaseInstancesArgs {
  /// To filter out the Cloud SQL instances which are of the specified database version.
  final pulumi.Input<String>? databaseVersion;
  /// The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// To filter out the Cloud SQL instances which are located in the specified region.
  final pulumi.Input<String>? region;
  /// To filter out the Cloud SQL instances based on the current serving state of the database instance. Supported values include `SQL_INSTANCE_STATE_UNSPECIFIED`, `RUNNABLE`, `SUSPENDED`, `PENDING_DELETE`, `PENDING_CREATE`, `MAINTENANCE`, `FAILED`.
  final pulumi.Input<String>? state;
  /// To filter out the Cloud SQL instances based on the tier(or machine type) of the database instances.
  final pulumi.Input<String>? tier;
  /// To filter out the Cloud SQL instances which are located in the specified zone. This zone refers to the Compute Engine zone that the instance is currently serving from.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetDatabaseInstancesArgs].
  /// [databaseVersion] To filter out the Cloud SQL instances which are of the specified database version.
  /// [project] The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  /// [region] To filter out the Cloud SQL instances which are located in the specified region.
  /// [state] To filter out the Cloud SQL instances based on the current serving state of the database instance. Supported values include `SQL_INSTANCE_STATE_UNSPECIFIED`, `RUNNABLE`, `SUSPENDED`, `PENDING_DELETE`, `PENDING_CREATE`, `MAINTENANCE`, `FAILED`.
  /// [tier] To filter out the Cloud SQL instances based on the tier(or machine type) of the database instances.
  /// [zone] To filter out the Cloud SQL instances which are located in the specified zone. This zone refers to the Compute Engine zone that the instance is currently serving from.
  GetDatabaseInstancesArgs({
    String? databaseVersion,
    String? project,
    String? region,
    String? state,
    String? tier,
    String? zone,
  }) :
      databaseVersion = pulumi.Input.asOptionalInput<String>(databaseVersion),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseVersion': ?databaseVersion,
      'project': ?project,
      'region': ?region,
      'state': ?state,
      'tier': ?tier,
      'zone': ?zone,
    };
  }

  factory GetDatabaseInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesArgs(
      databaseVersion: map['databaseVersion'] == null ? null : map['databaseVersion'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

