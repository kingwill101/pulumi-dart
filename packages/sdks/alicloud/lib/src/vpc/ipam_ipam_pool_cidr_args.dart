// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_ipam_ipam_pool_cidr_ipam_ipam_pool_cidr_args_doc}
/// The set of arguments for IpamIpamPoolCidr.
/// {@endtemplate}
/// {@macro pulumi_vpc_ipam_ipam_pool_cidr_ipam_ipam_pool_cidr_args_doc}
class IpamIpamPoolCidrArgs {
  /// The CIDR address segment to be preset.
  ///
  /// > **NOTE:**  currently, only IPv4 address segments are supported.
  final pulumi.Input<String> cidr;
  /// The ID of the IPAM pool instance.
  final pulumi.Input<String> ipamPoolId;

  /// Creates a new [IpamIpamPoolCidrArgs].
  /// [cidr] The CIDR address segment to be preset.
  /// [ipamPoolId] The ID of the IPAM pool instance.
  IpamIpamPoolCidrArgs({
    required this.cidr,
    required this.ipamPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'ipamPoolId': ipamPoolId,
    };
  }

  factory IpamIpamPoolCidrArgs.fromMap(Map<String, dynamic> map) {
    return IpamIpamPoolCidrArgs(
      cidr: (map['cidr'] as String).input(),
      ipamPoolId: (map['ipamPoolId'] as String).input(),
    );
  }
}

