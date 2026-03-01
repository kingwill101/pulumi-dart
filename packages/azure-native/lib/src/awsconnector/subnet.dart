// ignore_for_file: unused_element, unnecessary_cast

import 'availability_zone.dart';

/// Definition of Subnet
class Subnet {
  /// <p>The Availability Zone of the subnet.</p>
  final AvailabilityZone? subnetAvailabilityZone;
  /// <p>The subnet identifier.</p>
  final String? subnetIdentifier;
  /// <p>The status of the subnet.</p>
  final String? subnetStatus;

  /// Creates a new [Subnet].
  /// [subnetAvailabilityZone] <p>The Availability Zone of the subnet.</p>
  /// [subnetIdentifier] <p>The subnet identifier.</p>
  /// [subnetStatus] <p>The status of the subnet.</p>
  Subnet({
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

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      subnetAvailabilityZone: map['subnetAvailabilityZone'] == null ? null : AvailabilityZone.fromMap((map['subnetAvailabilityZone'] as Map).cast<String, dynamic>()),
      subnetIdentifier: map['subnetIdentifier'] == null ? null : map['subnetIdentifier'] as String,
      subnetStatus: map['subnetStatus'] == null ? null : map['subnetStatus'] as String,
    );
  }
}

