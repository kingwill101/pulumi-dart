// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A region in which the Azure Cosmos DB database account is deployed.
class Location {
  /// The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  final pulumi.Input<int>? failoverPriority;

  /// Flag to indicate whether or not this region is an AvailabilityZone region
  final pulumi.Input<bool>? isZoneRedundant;

  /// The name of the region.
  final pulumi.Input<String>? locationName;

  /// Creates a new [Location].
  /// [failoverPriority] The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists.
  /// [isZoneRedundant] Flag to indicate whether or not this region is an AvailabilityZone region
  /// [locationName] The name of the region.
  Location({this.failoverPriority, this.isZoneRedundant, this.locationName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failoverPriority': ?failoverPriority,
      'isZoneRedundant': ?isZoneRedundant,
      'locationName': ?locationName,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      failoverPriority: (() {
        final guardedValue = map['failoverPriority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      isZoneRedundant: (() {
        final guardedValue = map['isZoneRedundant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      locationName: (() {
        final guardedValue = map['locationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
