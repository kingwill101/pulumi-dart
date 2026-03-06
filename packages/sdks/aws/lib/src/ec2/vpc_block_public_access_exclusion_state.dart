// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_block_public_access_exclusion_timeouts.dart';

/// Input properties used for looking up and filtering VpcBlockPublicAccessExclusion resources.
class VpcBlockPublicAccessExclusionState {
  /// Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? internetGatewayExclusionMode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) the excluded resource.
  final pulumi.Input<String>? resourceArn;
  /// Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  final pulumi.Input<String>? subnetId;
  /// A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<VpcBlockPublicAccessExclusionTimeouts>? timeouts;
  /// Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcBlockPublicAccessExclusionState].
  /// [internetGatewayExclusionMode] Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] The Amazon Resource Name (ARN) the excluded resource.
  /// [subnetId] Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  /// [tags] A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [vpcId] Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  const VpcBlockPublicAccessExclusionState({
    this.internetGatewayExclusionMode,
    this.region,
    this.resourceArn,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internetGatewayExclusionMode': ?internetGatewayExclusionMode,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<VpcBlockPublicAccessExclusionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcId': ?vpcId,
    };
  }

  factory VpcBlockPublicAccessExclusionState.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessExclusionState(
      internetGatewayExclusionMode: (() { final guardedValue = map['internetGatewayExclusionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcBlockPublicAccessExclusionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

