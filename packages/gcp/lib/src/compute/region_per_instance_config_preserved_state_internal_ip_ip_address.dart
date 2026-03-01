// ignore_for_file: unused_element, unnecessary_cast

class RegionPerInstanceConfigPreservedStateInternalIpIpAddress {
  /// The URL of the reservation for this IP address.
  final String? address;

  /// Creates a new [RegionPerInstanceConfigPreservedStateInternalIpIpAddress].
  /// [address] The URL of the reservation for this IP address.
  RegionPerInstanceConfigPreservedStateInternalIpIpAddress({this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address};
  }

  factory RegionPerInstanceConfigPreservedStateInternalIpIpAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionPerInstanceConfigPreservedStateInternalIpIpAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}
