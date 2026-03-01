// ignore_for_file: unused_element, unnecessary_cast


/// A Fleet tier properties.
class FleetTierPropertiesResponse {
  /// Capacity of provisioned resources in the tier, in units matching the specified service tier, for example vCore for GeneralPurpose.
  final int? capacity;
  /// Maximum allocated capacity per database, in units matching the specified service tier.
  final double? databaseCapacityMax;
  /// Minimum allocated capacity per database, in units matching the specified service tier.
  final double? databaseCapacityMin;
  /// Maximum database size in Gb.
  final int? databaseSizeGbMax;
  /// If true, tier is disabled.
  final bool disabled;
  /// Family of provisioned resources, for example Gen5.
  final String? family;
  /// Number of high availability replicas for databases in this tier.
  final int? highAvailabilityReplicaCount;
  /// Maximum number of databases per pool.
  final int? poolNumOfDatabasesMax;
  /// If true, databases are pooled.
  final bool? pooled;
  /// Provisioning state.
  final String provisioningState;
  /// If true, serverless resources are provisioned in the tier.
  final bool? serverless;
  /// Service tier of provisioned resources. Supported values: GeneralPurpose, Hyperscale.
  final String? serviceTier;
  /// Enable zone redundancy for all databases in this tier.
  final String? zoneRedundancy;

  /// Creates a new [FleetTierPropertiesResponse].
  /// [capacity] Capacity of provisioned resources in the tier, in units matching the specified service tier, for example vCore for GeneralPurpose.
  /// [databaseCapacityMax] Maximum allocated capacity per database, in units matching the specified service tier.
  /// [databaseCapacityMin] Minimum allocated capacity per database, in units matching the specified service tier.
  /// [databaseSizeGbMax] Maximum database size in Gb.
  /// [disabled] If true, tier is disabled.
  /// [family] Family of provisioned resources, for example Gen5.
  /// [highAvailabilityReplicaCount] Number of high availability replicas for databases in this tier.
  /// [poolNumOfDatabasesMax] Maximum number of databases per pool.
  /// [pooled] If true, databases are pooled.
  /// [provisioningState] Provisioning state.
  /// [serverless] If true, serverless resources are provisioned in the tier.
  /// [serviceTier] Service tier of provisioned resources. Supported values: GeneralPurpose, Hyperscale.
  /// [zoneRedundancy] Enable zone redundancy for all databases in this tier.
  FleetTierPropertiesResponse({
    this.capacity,
    this.databaseCapacityMax,
    this.databaseCapacityMin,
    this.databaseSizeGbMax,
    required this.disabled,
    this.family,
    this.highAvailabilityReplicaCount,
    this.poolNumOfDatabasesMax,
    this.pooled,
    required this.provisioningState,
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
      'disabled': disabled,
      'family': ?family,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'poolNumOfDatabasesMax': ?poolNumOfDatabasesMax,
      'pooled': ?pooled,
      'provisioningState': provisioningState,
      'serverless': ?serverless,
      'serviceTier': ?serviceTier,
      'zoneRedundancy': ?zoneRedundancy,
    };
  }

  factory FleetTierPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetTierPropertiesResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      databaseCapacityMax: map['databaseCapacityMax'] == null ? null : map['databaseCapacityMax'] as double,
      databaseCapacityMin: map['databaseCapacityMin'] == null ? null : map['databaseCapacityMin'] as double,
      databaseSizeGbMax: map['databaseSizeGbMax'] == null ? null : map['databaseSizeGbMax'] as int,
      disabled: map['disabled'] as bool,
      family: map['family'] == null ? null : map['family'] as String,
      highAvailabilityReplicaCount: map['highAvailabilityReplicaCount'] == null ? null : map['highAvailabilityReplicaCount'] as int,
      poolNumOfDatabasesMax: map['poolNumOfDatabasesMax'] == null ? null : map['poolNumOfDatabasesMax'] as int,
      pooled: map['pooled'] == null ? null : map['pooled'] as bool,
      provisioningState: map['provisioningState'] as String,
      serverless: map['serverless'] == null ? null : map['serverless'] as bool,
      serviceTier: map['serviceTier'] == null ? null : map['serviceTier'] as String,
      zoneRedundancy: map['zoneRedundancy'] == null ? null : map['zoneRedundancy'] as String,
    );
  }
}

