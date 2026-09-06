// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Fleet tier properties.
class FleetTierProperties {
  /// Capacity of provisioned resources in the tier, in units matching the specified service tier, for example vCore for GeneralPurpose.
  final pulumi.Input<int?>? capacity;
  /// Maximum allocated capacity per database, in units matching the specified service tier.
  final pulumi.Input<double?>? databaseCapacityMax;
  /// Minimum allocated capacity per database, in units matching the specified service tier.
  final pulumi.Input<double?>? databaseCapacityMin;
  /// Maximum database size in Gb.
  final pulumi.Input<int?>? databaseSizeGbMax;
  /// Family of provisioned resources, for example Gen5.
  final pulumi.Input<String?>? family;
  /// Number of high availability replicas for databases in this tier.
  final pulumi.Input<int?>? highAvailabilityReplicaCount;
  /// Maximum number of databases per pool.
  final pulumi.Input<int?>? poolNumOfDatabasesMax;
  /// If true, databases are pooled.
  final pulumi.Input<bool?>? pooled;
  /// If true, serverless resources are provisioned in the tier.
  final pulumi.Input<bool?>? serverless;
  /// Service tier of provisioned resources. Supported values: GeneralPurpose, Hyperscale.
  final pulumi.Input<String?>? serviceTier;
  /// Enable zone redundancy for all databases in this tier.
  final pulumi.Input<dynamic>? zoneRedundancy;

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
  const FleetTierProperties({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      databaseCapacityMax: (() { final guardedValue = map['databaseCapacityMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      databaseCapacityMin: (() { final guardedValue = map['databaseCapacityMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      databaseSizeGbMax: (() { final guardedValue = map['databaseSizeGbMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highAvailabilityReplicaCount: (() { final guardedValue = map['highAvailabilityReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      poolNumOfDatabasesMax: (() { final guardedValue = map['poolNumOfDatabasesMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pooled: (() { final guardedValue = map['pooled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverless: (() { final guardedValue = map['serverless']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceTier: (() { final guardedValue = map['serviceTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneRedundancy: (() { final guardedValue = map['zoneRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
