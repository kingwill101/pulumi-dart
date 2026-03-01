// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_response.dart';

/// Describes a network interface.
class NetworkInterfaceResponse {
  /// The list of IP addresses in this interface.
  final List<IpAddressResponse>? ipAddresses;

  /// Creates a new [NetworkInterfaceResponse].
  /// [ipAddresses] The list of IP addresses in this interface.
  NetworkInterfaceResponse({
    this.ipAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ?ipAddresses == null ? null : pulumi.Input.encodeList<IpAddressResponse, Map<String, dynamic>>(ipAddresses!, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceResponse(
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Input.decodeList<IpAddressResponse>(map['ipAddresses'], (value) => IpAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

