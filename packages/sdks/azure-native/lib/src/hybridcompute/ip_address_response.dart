// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// Describes properties of the IP address.
class IpAddressResponse {
  /// Represents the IP Address.
  final String? address;
  /// Represents the Ip Address Version.
  final String? ipAddressVersion;
  /// The subnet to which this IP address belongs.
  final SubnetResponse subnet;

  /// Creates a new [IpAddressResponse].
  /// [address] Represents the IP Address.
  /// [ipAddressVersion] Represents the Ip Address Version.
  /// [subnet] The subnet to which this IP address belongs.
  IpAddressResponse({
    this.address,
    this.ipAddressVersion,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'ipAddressVersion': ?ipAddressVersion,
      'subnet': subnet.toMap(),
    };
  }

  factory IpAddressResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressResponse(
      address: map['address'] == null ? null : map['address'] as String,
      ipAddressVersion: map['ipAddressVersion'] == null ? null : map['ipAddressVersion'] as String,
      subnet: SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

