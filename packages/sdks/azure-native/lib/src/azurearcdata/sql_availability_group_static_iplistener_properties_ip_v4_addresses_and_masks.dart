// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks {
  /// IPV4 address
  final pulumi.Input<String>? ipAddress;
  /// IPV4 netmask
  final pulumi.Input<String>? mask;

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
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      mask: map['mask'] == null ? null : (map['mask'] as String).input(),
    );
  }
}

