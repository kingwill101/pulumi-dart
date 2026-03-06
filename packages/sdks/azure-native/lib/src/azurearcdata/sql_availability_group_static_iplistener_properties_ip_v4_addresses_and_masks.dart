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
  const SqlAvailabilityGroupStaticIPListenerPropertiesIpV4AddressesAndMasks({
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
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mask: (() { final guardedValue = map['mask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

