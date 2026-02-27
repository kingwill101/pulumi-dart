// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatabaseInstances.
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

  GetDatabaseInstancesArgs({
    this.databaseVersion,
    this.project,
    this.region,
    this.state,
    this.tier,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseVersionValue = databaseVersion;
    if (databaseVersionValue != null) {
      map['databaseVersion'] = databaseVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetDatabaseInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesArgs(
      databaseVersion:
          pulumi.Input.asOptionalInput<String>(map['databaseVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tier: pulumi.Input.asOptionalInput<String>(map['tier']),
      zone: pulumi.Input.asOptionalInput<String>(map['zone']),
    );
  }
}
