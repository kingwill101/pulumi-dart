// ignore_for_file: unused_element, unnecessary_cast


class LocationSpecResponse {
  /// Name of location.
  final String? location;
  /// The resource provisioning state in this location.
  final String? provisioningStatus;

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
      location: map['location'] == null ? null : map['location'] as String,
      provisioningStatus: map['provisioningStatus'] == null ? null : map['provisioningStatus'] as String,
    );
  }
}

