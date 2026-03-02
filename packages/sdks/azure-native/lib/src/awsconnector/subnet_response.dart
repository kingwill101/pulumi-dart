// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'availability_zone_response.dart';

/// Definition of Subnet
class SubnetResponse {
  /// <p>The Availability Zone of the subnet.</p>
  final pulumi.Input<AvailabilityZoneResponse>? subnetAvailabilityZone;
  /// <p>The subnet identifier.</p>
  final pulumi.Input<String>? subnetIdentifier;
  /// <p>The status of the subnet.</p>
  final pulumi.Input<String>? subnetStatus;

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
      'subnetAvailabilityZone': ?pulumi.Input.mapOptionalInputValue<AvailabilityZoneResponse, Map<String, dynamic>>(subnetAvailabilityZone, (value) => value.toMap()),
      'subnetIdentifier': ?subnetIdentifier,
      'subnetStatus': ?subnetStatus,
    };
  }

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      subnetAvailabilityZone: map['subnetAvailabilityZone'] == null ? null : (AvailabilityZoneResponse.fromMap((map['subnetAvailabilityZone'] as Map).cast<String, dynamic>())).input(),
      subnetIdentifier: map['subnetIdentifier'] == null ? null : (map['subnetIdentifier'] as String).input(),
      subnetStatus: map['subnetStatus'] == null ? null : (map['subnetStatus'] as String).input(),
    );
  }
}

