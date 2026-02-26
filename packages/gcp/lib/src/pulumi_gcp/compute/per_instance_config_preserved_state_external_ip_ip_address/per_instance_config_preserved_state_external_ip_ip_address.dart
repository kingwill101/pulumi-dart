// ignore_for_file: unused_element, unnecessary_cast

class PerInstanceConfigPreservedStateExternalIpIpAddress {
  /// The URL of the reservation for this IP address.
  final String? address;

  PerInstanceConfigPreservedStateExternalIpIpAddress({
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

  factory PerInstanceConfigPreservedStateExternalIpIpAddress.fromMap(
      Map<String, dynamic> map) {
    return PerInstanceConfigPreservedStateExternalIpIpAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}
