// ignore_for_file: unused_element, unnecessary_cast

import 'interface_public_ipv4.dart';
import 'interface_public_ipv6.dart';

class InterfacePublic {
  /// IPv4 addresses for this interface.
  final InterfacePublicIpv4? ipv4;
  /// IPv6 addresses for this interface.
  final InterfacePublicIpv6? ipv6;

  /// Creates a new [InterfacePublic].
  /// [ipv4] IPv4 addresses for this interface.
  /// [ipv6] IPv6 addresses for this interface.
  InterfacePublic({
    this.ipv4,
    this.ipv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4 == null ? null : ipv4!.toMap(),
      'ipv6': ?ipv6 == null ? null : ipv6!.toMap(),
    };
  }

  factory InterfacePublic.fromMap(Map<String, dynamic> map) {
    return InterfacePublic(
      ipv4: map['ipv4'] == null ? null : InterfacePublicIpv4.fromMap((map['ipv4'] as Map).cast<String, dynamic>()),
      ipv6: map['ipv6'] == null ? null : InterfacePublicIpv6.fromMap((map['ipv6'] as Map).cast<String, dynamic>()),
    );
  }
}

