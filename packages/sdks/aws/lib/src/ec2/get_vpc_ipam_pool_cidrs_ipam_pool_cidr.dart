// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpcIpamPoolCidrsIpamPoolCidr {
  /// A network CIDR.
  final pulumi.Input<String> cidr;
  /// The provisioning state of that CIDR.
  final pulumi.Input<String> state;

  /// Creates a new [GetVpcIpamPoolCidrsIpamPoolCidr].
  /// [cidr] A network CIDR.
  /// [state] The provisioning state of that CIDR.
  GetVpcIpamPoolCidrsIpamPoolCidr({
    required this.cidr,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'state': state,
    };
  }

  factory GetVpcIpamPoolCidrsIpamPoolCidr.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsIpamPoolCidr(
      cidr: (map['cidr'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

