// ignore_for_file: unused_element, unnecessary_cast

class PerInstanceConfigPreservedStateInternalIpIpAddress {
  /// The URL of the reservation for this IP address.
  final String? address;

  /// Creates a new [PerInstanceConfigPreservedStateInternalIpIpAddress].
  /// [address] The URL of the reservation for this IP address.
  PerInstanceConfigPreservedStateInternalIpIpAddress({this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address};
  }

  factory PerInstanceConfigPreservedStateInternalIpIpAddress.fromMap(
    Map<String, dynamic> map,
  ) {
    return PerInstanceConfigPreservedStateInternalIpIpAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}
