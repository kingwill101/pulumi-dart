// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesGraphicSpiceListenerAddress {
  /// Sets the actual network address where the Spice listener will accept connections.
  final String? address;

  /// Creates a new [DomainDevicesGraphicSpiceListenerAddress].
  /// [address] Sets the actual network address where the Spice listener will accept connections.
  DomainDevicesGraphicSpiceListenerAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory DomainDevicesGraphicSpiceListenerAddress.fromMap(Map<String, dynamic> map) {
    return DomainDevicesGraphicSpiceListenerAddress(
      address: map['address'] == null ? null : map['address'] as String,
    );
  }
}

