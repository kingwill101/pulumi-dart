// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcIpamPoolCidrAllocation.
class VpcIpamPoolCidrAllocationArgs {
  /// The CIDR you want to assign to the pool.
  final pulumi.Input<String>? cidr;

  /// The description for the allocation.
  final pulumi.Input<String>? description;

  /// Exclude a particular CIDR range from being returned by the pool.
  final pulumi.Input<List<String>>? disallowedCidrs;

  /// The ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String> ipamPoolId;

  /// The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  final pulumi.Input<int>? netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  VpcIpamPoolCidrAllocationArgs({
    this.cidr,
    this.description,
    this.disallowedCidrs,
    required this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrValue = cidr;
    if (cidrValue != null) {
      map['cidr'] = cidrValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disallowedCidrsValue = disallowedCidrs;
    if (disallowedCidrsValue != null) {
      map['disallowedCidrs'] = disallowedCidrsValue;
    }
    map['ipamPoolId'] = ipamPoolId;
    final netmaskLengthValue = netmaskLength;
    if (netmaskLengthValue != null) {
      map['netmaskLength'] = netmaskLengthValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory VpcIpamPoolCidrAllocationArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamPoolCidrAllocationArgs(
      cidr: pulumi.Input.asOptionalInput<String>(map['cidr']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disallowedCidrs:
          pulumi.Input.asOptionalInput<List<String>>(map['disallowedCidrs']),
      ipamPoolId: pulumi.Input.asInput<String>(map['ipamPoolId']),
      netmaskLength: pulumi.Input.asOptionalInput<int>(map['netmaskLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
