// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_ipam_ipam_pool_cidrs_get_ipam_ipam_pool_cidrs_args_doc}
/// Arguments for getIpamIpamPoolCidrs.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_ipam_ipam_pool_cidrs_get_ipam_ipam_pool_cidrs_args_doc}
class GetIpamIpamPoolCidrsArgs {
  /// The CIDR address segment to be preset.> currently, only IPv4 address segments are supported.
  final pulumi.Input<String>? cidr;
  /// The ID of the IPAM pool instance.
  final pulumi.Input<String> ipamPoolId;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetIpamIpamPoolCidrsArgs].
  /// [cidr] The CIDR address segment to be preset.> currently, only IPv4 address segments are supported.
  /// [ipamPoolId] The ID of the IPAM pool instance.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetIpamIpamPoolCidrsArgs({
    pulumi.Output<String>? cidr,
    required pulumi.Output<String> ipamPoolId,
    pulumi.Output<String>? outputFile,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      ipamPoolId = pulumi.Input.asInput<String>(ipamPoolId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'ipamPoolId': ipamPoolId,
      'outputFile': ?outputFile,
    };
  }

  factory GetIpamIpamPoolCidrsArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamPoolCidrsArgs(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      ipamPoolId: pulumi.Output.create<String>(map['ipamPoolId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

