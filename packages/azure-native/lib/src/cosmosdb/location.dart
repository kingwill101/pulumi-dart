// ignore_for_file: unused_element, unnecessary_cast


/// A region in which the Azure Cosmos DB database account is deployed.
class Location {
  /// The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  final int? failoverPriority;
  /// Flag to indicate whether or not this region is an AvailabilityZone region
  final bool? isZoneRedundant;
  /// The name of the region.
  final String? locationName;

  /// Creates a new [Location].
  /// [failoverPriority] The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  /// [isZoneRedundant] Flag to indicate whether or not this region is an AvailabilityZone region
  /// [locationName] The name of the region.
  Location({
    this.failoverPriority,
    this.isZoneRedundant,
    this.locationName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPriority': ?failoverPriority,
      'isZoneRedundant': ?isZoneRedundant,
      'locationName': ?locationName,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      failoverPriority: map['failoverPriority'] == null ? null : map['failoverPriority'] as int,
      isZoneRedundant: map['isZoneRedundant'] == null ? null : map['isZoneRedundant'] as bool,
      locationName: map['locationName'] == null ? null : map['locationName'] as String,
    );
  }
}

