// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Fleet tier properties.
class FleetTierProperties {
  /// Capacity of provisioned resources in the tier, in units matching the specified service tier, for example vCore for GeneralPurpose.
  final pulumi.Input<int>? capacity;
  /// Maximum allocated capacity per database, in units matching the specified service tier.
  final pulumi.Input<double>? databaseCapacityMax;
  /// Minimum allocated capacity per database, in units matching the specified service tier.
  final pulumi.Input<double>? databaseCapacityMin;
  /// Maximum database size in Gb.
  final pulumi.Input<int>? databaseSizeGbMax;
  /// Family of provisioned resources, for example Gen5.
  final pulumi.Input<String>? family;
  /// Number of high availability replicas for databases in this tier.
  final pulumi.Input<int>? highAvailabilityReplicaCount;
  /// Maximum number of databases per pool.
  final pulumi.Input<int>? poolNumOfDatabasesMax;
  /// If true, databases are pooled.
  final pulumi.Input<bool>? pooled;
  /// If true, serverless resources are provisioned in the tier.
  final pulumi.Input<bool>? serverless;
  /// Service tier of provisioned resources. Supported values: GeneralPurpose, Hyperscale.
  final pulumi.Input<String>? serviceTier;
  /// Enable zone redundancy for all databases in this tier.
  final pulumi.Input<String>? zoneRedundancy;

  /// Creates a new [FleetTierProperties].
  /// [capacity] Capacity of provisioned resources in the tier, in units matching the specified service tier, for example vCore for GeneralPurpose.
  /// [databaseCapacityMax] Maximum allocated capacity per database, in units matching the specified service tier.
  /// [databaseCapacityMin] Minimum allocated capacity per database, in units matching the specified service tier.
  /// [databaseSizeGbMax] Maximum database size in Gb.
  /// [family] Family of provisioned resources, for example Gen5.
  /// [highAvailabilityReplicaCount] Number of high availability replicas for databases in this tier.
  /// [poolNumOfDatabasesMax] Maximum number of databases per pool.
  /// [pooled] If true, databases are pooled.
  /// [serverless] If true, serverless resources are provisioned in the tier.
  /// [serviceTier] Service tier of provisioned resources. Supported values: GeneralPurpose, Hyperscale.
  /// [zoneRedundancy] Enable zone redundancy for all databases in this tier.
  FleetTierProperties({
    this.capacity,
    this.databaseCapacityMax,
    this.databaseCapacityMin,
    this.databaseSizeGbMax,
    this.family,
    this.highAvailabilityReplicaCount,
    this.poolNumOfDatabasesMax,
    this.pooled,
    this.serverless,
    this.serviceTier,
    this.zoneRedundancy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'databaseCapacityMax': ?databaseCapacityMax,
      'databaseCapacityMin': ?databaseCapacityMin,
      'databaseSizeGbMax': ?databaseSizeGbMax,
      'family': ?family,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'poolNumOfDatabasesMax': ?poolNumOfDatabasesMax,
      'pooled': ?pooled,
      'serverless': ?serverless,
      'serviceTier': ?serviceTier,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory FleetTierProperties.fromMap(Map<String, dynamic> map) {
    return FleetTierProperties(
      capacity: map['capacity'] == null ? null : (map['capacity']! as int).input(),
      databaseCapacityMax: map['databaseCapacityMax'] == null ? null : (map['databaseCapacityMax']! as double).input(),
      databaseCapacityMin: map['databaseCapacityMin'] == null ? null : (map['databaseCapacityMin']! as double).input(),
      databaseSizeGbMax: map['databaseSizeGbMax'] == null ? null : (map['databaseSizeGbMax']! as int).input(),
      family: map['family'] == null ? null : (map['family']! as String).input(),
      highAvailabilityReplicaCount: map['highAvailabilityReplicaCount'] == null ? null : (map['highAvailabilityReplicaCount']! as int).input(),
      poolNumOfDatabasesMax: map['poolNumOfDatabasesMax'] == null ? null : (map['poolNumOfDatabasesMax']! as int).input(),
      pooled: map['pooled'] == null ? null : (map['pooled']! as bool).input(),
      serverless: map['serverless'] == null ? null : (map['serverless']! as bool).input(),
      serviceTier: map['serviceTier'] == null ? null : (map['serviceTier']! as String).input(),
      zoneRedundancy: map['zoneRedundancy'] == null ? null : (map['zoneRedundancy']! as String).input(),
    );
  }
}

