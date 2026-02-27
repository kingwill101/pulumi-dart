// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getIpamPreviewNextCidr.
class GetIpamPreviewNextCidrArgs {
  /// Exclude a particular CIDR range from being returned by the pool.
  final pulumi.Input<List<String>>? disallowedCidrs;

  /// ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String> ipamPoolId;

  /// Netmask length of the CIDR you would like to preview from the IPAM pool.
  final pulumi.Input<int>? netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetIpamPreviewNextCidrArgs({
    this.disallowedCidrs,
    required this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetIpamPreviewNextCidrArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamPreviewNextCidrArgs(
      disallowedCidrs:
          pulumi.Input.asOptionalInput<List<String>>(map['disallowedCidrs']),
      ipamPoolId: pulumi.Input.asInput<String>(map['ipamPoolId']),
      netmaskLength: pulumi.Input.asOptionalInput<int>(map['netmaskLength']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
