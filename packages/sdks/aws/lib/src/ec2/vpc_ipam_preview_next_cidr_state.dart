// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcIpamPreviewNextCidr resources.
class VpcIpamPreviewNextCidrState {
  /// The previewed CIDR from the pool.
  final pulumi.Input<String>? cidr;
  /// Exclude a particular CIDR range from being returned by the pool.
  final pulumi.Input<List<String>>? disallowedCidrs;
  /// The ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String>? ipamPoolId;
  /// The netmask length of the CIDR you would like to preview from the IPAM pool.
  final pulumi.Input<int>? netmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [VpcIpamPreviewNextCidrState].
  /// [cidr] The previewed CIDR from the pool.
  /// [disallowedCidrs] Exclude a particular CIDR range from being returned by the pool.
  /// [ipamPoolId] The ID of the pool to which you want to assign a CIDR.
  /// [netmaskLength] The netmask length of the CIDR you would like to preview from the IPAM pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  VpcIpamPreviewNextCidrState({
    this.cidr,
    this.disallowedCidrs,
    this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'disallowedCidrs': ?disallowedCidrs,
      'ipamPoolId': ?ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
    };
  }

  factory VpcIpamPreviewNextCidrState.fromMap(Map<String, dynamic> map) {
    return VpcIpamPreviewNextCidrState(
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      disallowedCidrs: map['disallowedCidrs'] == null ? null : ((map['disallowedCidrs'] as List).cast<String>()).input(),
      ipamPoolId: map['ipamPoolId'] == null ? null : (map['ipamPoolId'] as String).input(),
      netmaskLength: map['netmaskLength'] == null ? null : (map['netmaskLength'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

