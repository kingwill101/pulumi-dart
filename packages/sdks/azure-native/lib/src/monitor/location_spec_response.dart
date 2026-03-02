// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LocationSpecResponse {
  /// Name of location.
  final pulumi.Input<String>? location;
  /// The resource provisioning state in this location.
  final pulumi.Input<String>? provisioningStatus;

  /// Creates a new [LocationSpecResponse].
  /// [location] Name of location.
  /// [provisioningStatus] The resource provisioning state in this location.
  LocationSpecResponse({
    this.location,
    this.provisioningStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'provisioningStatus': ?provisioningStatus,
    };
  }

  factory LocationSpecResponse.fromMap(Map<String, dynamic> map) {
    return LocationSpecResponse(
      location: map['location'] == null ? null : (map['location']! as String).input(),
      provisioningStatus: map['provisioningStatus'] == null ? null : (map['provisioningStatus']! as String).input(),
    );
  }
}

