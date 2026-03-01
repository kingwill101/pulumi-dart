// ignore_for_file: unused_element, unnecessary_cast

import 'availability_zone_response.dart';

/// Definition of Subnet
class SubnetResponse {
  /// <p>The Availability Zone of the subnet.</p>
  final AvailabilityZoneResponse? subnetAvailabilityZone;
  /// <p>The subnet identifier.</p>
  final String? subnetIdentifier;
  /// <p>The status of the subnet.</p>
  final String? subnetStatus;

  /// Creates a new [SubnetResponse].
  /// [subnetAvailabilityZone] <p>The Availability Zone of the subnet.</p>
  /// [subnetIdentifier] <p>The subnet identifier.</p>
  /// [subnetStatus] <p>The status of the subnet.</p>
  SubnetResponse({
    this.subnetAvailabilityZone,
    this.subnetIdentifier,
    this.subnetStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetAvailabilityZone': ?subnetAvailabilityZone == null ? null : subnetAvailabilityZone!.toMap(),
      'subnetIdentifier': ?subnetIdentifier,
      'subnetStatus': ?subnetStatus,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      subnetAvailabilityZone: map['subnetAvailabilityZone'] == null ? null : AvailabilityZoneResponse.fromMap((map['subnetAvailabilityZone'] as Map).cast<String, dynamic>()),
      subnetIdentifier: map['subnetIdentifier'] == null ? null : map['subnetIdentifier'] as String,
      subnetStatus: map['subnetStatus'] == null ? null : map['subnetStatus'] as String,
    );
  }
}

