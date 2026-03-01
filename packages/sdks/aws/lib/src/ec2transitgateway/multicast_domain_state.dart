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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? autoAcceptSharedAssociations,
    pulumi.Output<String>? igmpv2Support,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? staticSourcesSupport,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? transitGatewayId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoAcceptSharedAssociations = pulumi.Input.asOptionalInput<String>(autoAcceptSharedAssociations),
      igmpv2Support = pulumi.Input.asOptionalInput<String>(igmpv2Support),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      staticSourcesSupport = pulumi.Input.asOptionalInput<String>(staticSourcesSupport),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoAcceptSharedAssociations: map['autoAcceptSharedAssociations'] == null ? null : pulumi.Output.create<String>(map['autoAcceptSharedAssociations'] as String),
      igmpv2Support: map['igmpv2Support'] == null ? null : pulumi.Output.create<String>(map['igmpv2Support'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      staticSourcesSupport: map['staticSourcesSupport'] == null ? null : pulumi.Output.create<String>(map['staticSourcesSupport'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
    );
  }
}

