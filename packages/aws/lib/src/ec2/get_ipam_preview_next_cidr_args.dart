// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_ipam_preview_next_cidr_get_ipam_preview_next_cidr_args_doc}
/// Arguments for getIpamPreviewNextCidr.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_ipam_preview_next_cidr_get_ipam_preview_next_cidr_args_doc}
class GetIpamPreviewNextCidrArgs {
  /// Exclude a particular CIDR range from being returned by the pool.
  final pulumi.Input<List<String>>? disallowedCidrs;
  /// ID of the pool to which you want to assign a CIDR.
  final pulumi.Input<String> ipamPoolId;
  /// Netmask length of the CIDR you would like to preview from the IPAM pool.
  final pulumi.Input<int>? netmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetIpamPreviewNextCidrArgs].
  /// [disallowedCidrs] Exclude a particular CIDR range from being returned by the pool.
  /// [ipamPoolId] ID of the pool to which you want to assign a CIDR.
  /// [netmaskLength] Netmask length of the CIDR you would like to preview from the IPAM pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetIpamPreviewNextCidrArgs({
    List<String>? disallowedCidrs,
    required String ipamPoolId,
    int? netmaskLength,
    String? region,
  }) :
      disallowedCidrs = pulumi.Input.asOptionalInput<List<String>>(disallowedCidrs),
      ipamPoolId = pulumi.Input.asInput<String>(ipamPoolId),
      netmaskLength = pulumi.Input.asOptionalInput<int>(netmaskLength),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disallowedCidrs': ?disallowedCidrs,
      'ipamPoolId': ipamPoolId,
      'netmaskLength': ?netmaskLength,
      'region': ?region,
    };
  }

  factory GetIpamPreviewNextCidrArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamPreviewNextCidrArgs(
      disallowedCidrs: map['disallowedCidrs'] == null ? null : (map['disallowedCidrs'] as List).cast<String>(),
      ipamPoolId: map['ipamPoolId'] as String,
      netmaskLength: map['netmaskLength'] == null ? null : map['netmaskLength'] as int,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

