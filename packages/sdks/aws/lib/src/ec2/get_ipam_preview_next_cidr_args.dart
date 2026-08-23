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
  const GetIpamPreviewNextCidrArgs({
    this.disallowedCidrs,
    required this.ipamPoolId,
    this.netmaskLength,
    this.region,
  });

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
      disallowedCidrs: (() { final guardedValue = map['disallowedCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipamPoolId: pulumi.Input.fromValue(map['ipamPoolId'] as String),
      netmaskLength: (() { final guardedValue = map['netmaskLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
