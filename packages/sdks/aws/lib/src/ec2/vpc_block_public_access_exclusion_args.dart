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
    required pulumi.Output<String> internetGatewayExclusionMode,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<VpcBlockPublicAccessExclusionTimeouts>? timeouts,
    pulumi.Output<String>? vpcId,
  }) :
      internetGatewayExclusionMode = pulumi.Input.asInput<String>(internetGatewayExclusionMode),
      region = pulumi.Input.asOptionalInput<String>(region),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<VpcBlockPublicAccessExclusionTimeouts>(timeouts),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      internetGatewayExclusionMode: pulumi.Output.create<String>(map['internetGatewayExclusionMode'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<VpcBlockPublicAccessExclusionTimeouts>(VpcBlockPublicAccessExclusionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

