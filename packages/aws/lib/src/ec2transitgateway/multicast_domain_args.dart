// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_multicast_domain_multicast_domain_args_doc}
/// The set of arguments for MulticastDomain.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_multicast_domain_multicast_domain_args_doc}
class MulticastDomainArgs {
  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? autoAcceptSharedAssociations;

  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? igmpv2Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? staticSourcesSupport;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// EC2 Transit Gateway identifier. The EC2 Transit Gateway must have `multicast_support` enabled.
  final pulumi.Input<String> transitGatewayId;

  /// Creates a new [MulticastDomainArgs].
  /// [autoAcceptSharedAssociations] Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [igmpv2Support] Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticSourcesSupport] Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [tags] Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayId] EC2 Transit Gateway identifier. The EC2 Transit Gateway must have `multicast_support` enabled.
  MulticastDomainArgs({
    String? autoAcceptSharedAssociations,
    String? igmpv2Support,
    String? region,
    String? staticSourcesSupport,
    Map<String, String>? tags,
    required String transitGatewayId,
  }) : autoAcceptSharedAssociations = pulumi.Input.asOptionalInput<String>(
         autoAcceptSharedAssociations,
       ),
       igmpv2Support = pulumi.Input.asOptionalInput<String>(igmpv2Support),
       region = pulumi.Input.asOptionalInput<String>(region),
       staticSourcesSupport = pulumi.Input.asOptionalInput<String>(
         staticSourcesSupport,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       transitGatewayId = pulumi.Input.asInput<String>(transitGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAcceptSharedAssociations': ?autoAcceptSharedAssociations,
      'igmpv2Support': ?igmpv2Support,
      'region': ?region,
      'staticSourcesSupport': ?staticSourcesSupport,
      'tags': ?tags,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory MulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainArgs(
      autoAcceptSharedAssociations: map['autoAcceptSharedAssociations'] == null
          ? null
          : map['autoAcceptSharedAssociations'] as String,
      igmpv2Support: map['igmpv2Support'] == null
          ? null
          : map['igmpv2Support'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      staticSourcesSupport: map['staticSourcesSupport'] == null
          ? null
          : map['staticSourcesSupport'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}
