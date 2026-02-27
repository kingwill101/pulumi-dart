// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_block_public_access_exclusion_timeouts/vpc_block_public_access_exclusion_timeouts.dart';

/// The set of arguments for VpcBlockPublicAccessExclusion.
class VpcBlockPublicAccessExclusionArgs {
  /// Mode of exclusion from Block Public Access. The allowed values are `allow-egress` and `allow-bidirectional`.
  ///
  /// The following arguments are optional:
  final Input<String> internetGatewayExclusionMode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Id of the subnet to which this exclusion applies. Either this or the vpc_id needs to be provided.
  final Input<String>? subnetId;

  /// A map of tags to assign to the exclusion. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<VpcBlockPublicAccessExclusionTimeouts>? timeouts;

  /// Id of the VPC to which this exclusion applies. Either this or the subnet_id needs to be provided.
  final Input<String>? vpcId;

  VpcBlockPublicAccessExclusionArgs({
    required this.internetGatewayExclusionMode,
    this.region,
    this.subnetId,
    this.tags,
    this.timeouts,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internetGatewayExclusionMode'] = internetGatewayExclusionMode;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          VpcBlockPublicAccessExclusionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory VpcBlockPublicAccessExclusionArgs.fromMap(Map<String, dynamic> map) {
    return VpcBlockPublicAccessExclusionArgs(
      internetGatewayExclusionMode:
          Input.asInput<String>(map['internetGatewayExclusionMode']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<VpcBlockPublicAccessExclusionTimeouts>(
          map['timeouts']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
