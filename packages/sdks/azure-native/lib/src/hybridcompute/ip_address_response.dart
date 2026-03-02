// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_response.dart';

/// Describes properties of the IP address.
class IpAddressResponse {
  /// Represents the IP Address.
  final pulumi.Input<String>? address;
  /// Represents the Ip Address Version.
  final pulumi.Input<String>? ipAddressVersion;
  /// The subnet to which this IP address belongs.
  final pulumi.Input<SubnetResponse> subnet;

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
      'subnet': pulumi.Input.mapInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IpAddressResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressResponse(
      address: map['address'] == null ? null : (map['address']! as String).input(),
      ipAddressVersion: map['ipAddressVersion'] == null ? null : (map['ipAddressVersion']! as String).input(),
      subnet: (SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

