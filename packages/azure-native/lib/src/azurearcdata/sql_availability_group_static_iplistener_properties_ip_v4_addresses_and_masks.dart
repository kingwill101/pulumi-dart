// ignore_for_file: unused_element, unnecessary_cast


class SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks {
  /// IPV4 address
  final String? ipAddress;
  /// IPV4 netmask
  final String? mask;

  /// Creates a new [SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks].
  /// [ipAddress] IPV4 address
  /// [mask] IPV4 netmask
  SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks({
    this.ipAddress,
    this.mask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'mask': ?mask,
    };
  }

  factory SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      mask: map['mask'] == null ? null : map['mask'] as String,
    );
  }
}

