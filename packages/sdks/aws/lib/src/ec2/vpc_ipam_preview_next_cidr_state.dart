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
    pulumi.Output<String>? cidr,
    pulumi.Output<List<String>>? disallowedCidrs,
    pulumi.Output<String>? ipamPoolId,
    pulumi.Output<int>? netmaskLength,
    pulumi.Output<String>? region,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      disallowedCidrs = pulumi.Input.asOptionalInput<List<String>>(disallowedCidrs),
      ipamPoolId = pulumi.Input.asOptionalInput<String>(ipamPoolId),
      netmaskLength = pulumi.Input.asOptionalInput<int>(netmaskLength),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      disallowedCidrs: map['disallowedCidrs'] == null ? null : pulumi.Output.create<List<String>>((map['disallowedCidrs'] as List).cast<String>()),
      ipamPoolId: map['ipamPoolId'] == null ? null : pulumi.Output.create<String>(map['ipamPoolId'] as String),
      netmaskLength: map['netmaskLength'] == null ? null : pulumi.Output.create<int>(map['netmaskLength'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

