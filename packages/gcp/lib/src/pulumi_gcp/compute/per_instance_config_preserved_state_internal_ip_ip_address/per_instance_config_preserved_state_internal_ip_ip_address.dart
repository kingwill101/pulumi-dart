// ignore_for_file: unused_element, unnecessary_cast

class PerInstanceConfigPreservedStateInternalIpIpAddress {
  /// The URL of the reservation for this IP address.
  final String? address;

  PerInstanceConfigPreservedStateInternalIpIpAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    return map;
  }

  factory PerInstanceConfigPreservedStateInternalIpIpAddress.fromMap(
      Map<String, dynamic> map) {
    return PerInstanceConfigPreservedStateInternalIpIpAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}
