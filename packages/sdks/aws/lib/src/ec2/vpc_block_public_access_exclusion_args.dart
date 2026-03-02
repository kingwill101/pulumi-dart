// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_block_public_access_exclusion_timeouts.dart';

/// {@template pulumi_ec2_vpc_block_public_access_exclusion_vpc_block_public_access_exclusion_args_doc}
/// The set of arguments for VpcBlockPublicAccessExclusion.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_block_public_access_exclusion_vpc_block_public_access_exclusion_args_doc}
class VpcBlockPublicAccessExclusionArgs {
  /// Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> internetGatewayExclusionMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<VpcBlockPublicAccessExclusionTimeouts>? timeouts;
  /// Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcBlockPublicAccessExclusionArgs].
  /// [internetGatewayExclusionMode] Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subnetId] Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  /// [tags] A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcId] Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  VpcBlockPublicAccessExclusionArgs({
    required this.internetGatewayExclusionMode,
    this.region,
    this.subnetId,
    this.tags,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayExclusionMode': internetGatewayExclusionMode,
      'region': ?region,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcBlockPublicAccessExclusionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory VpcBlockPublicAccessExclusionArgs.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessExclusionArgs(
      internetGatewayExclusionMode: (map['internetGatewayExclusionMode'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((VpcBlockPublicAccessExclusionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

