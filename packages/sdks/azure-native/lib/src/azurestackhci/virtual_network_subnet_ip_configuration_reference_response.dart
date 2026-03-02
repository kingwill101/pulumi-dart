// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Azure Resource ID for a resource consuming IP on a subnet
class VirtualNetworkSubnetIpConfigurationReferenceResponse {
  /// The Azure Resource ID for a Network Interface.
  final pulumi.Input<String>? id;

  /// Creates a new [VirtualNetworkSubnetIpConfigurationReferenceResponse].
  /// [id] The Azure Resource ID for a Network Interface.
  VirtualNetworkSubnetIpConfigurationReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory VirtualNetworkSubnetIpConfigurationReferenceResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkSubnetIpConfigurationReferenceResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

