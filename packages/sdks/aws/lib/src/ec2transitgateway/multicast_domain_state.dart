// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MulticastDomain resources.
class MulticastDomainState {
  /// EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? autoAcceptSharedAssociations;
  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? igmpv2Support;
  /// Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? staticSourcesSupport;
  /// Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// EC2 Transit Gateway identifier. The EC2 Transit Gateway must have `multicast_support` enabled.
  final pulumi.Input<String>? transitGatewayId;

  /// Creates a new [MulticastDomainState].
  /// [arn] EC2 Transit Gateway Multicast Domain Amazon Resource Name (ARN).
  /// [autoAcceptSharedAssociations] Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [igmpv2Support] Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [ownerId] Identifier of the AWS account that owns the EC2 Transit Gateway Multicast Domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticSourcesSupport] Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [tags] Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayId] EC2 Transit Gateway identifier. The EC2 Transit Gateway must have `multicast_support` enabled.
  MulticastDomainState({
    this.arn,
    this.autoAcceptSharedAssociations,
    this.igmpv2Support,
    this.ownerId,
    this.region,
    this.staticSourcesSupport,
    this.tags,
    this.tagsAll,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoAcceptSharedAssociations': ?autoAcceptSharedAssociations,
      'igmpv2Support': ?igmpv2Support,
      'ownerId': ?ownerId,
      'region': ?region,
      'staticSourcesSupport': ?staticSourcesSupport,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory MulticastDomainState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autoAcceptSharedAssociations: map['autoAcceptSharedAssociations'] == null ? null : ((map['autoAcceptSharedAssociations'] as String).input()).input(),
      igmpv2Support: map['igmpv2Support'] == null ? null : ((map['igmpv2Support'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      staticSourcesSupport: map['staticSourcesSupport'] == null ? null : ((map['staticSourcesSupport'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : ((map['transitGatewayId'] as String).input()).input(),
    );
  }
}

