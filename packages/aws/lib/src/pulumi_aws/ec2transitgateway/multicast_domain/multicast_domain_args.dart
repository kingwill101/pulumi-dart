// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MulticastDomain.
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

  MulticastDomainArgs({
    this.autoAcceptSharedAssociations,
    this.igmpv2Support,
    this.region,
    this.staticSourcesSupport,
    this.tags,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoAcceptSharedAssociationsValue = autoAcceptSharedAssociations;
    if (autoAcceptSharedAssociationsValue != null) {
      map['autoAcceptSharedAssociations'] = autoAcceptSharedAssociationsValue;
    }
    final igmpv2SupportValue = igmpv2Support;
    if (igmpv2SupportValue != null) {
      map['igmpv2Support'] = igmpv2SupportValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final staticSourcesSupportValue = staticSourcesSupport;
    if (staticSourcesSupportValue != null) {
      map['staticSourcesSupport'] = staticSourcesSupportValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayId'] = transitGatewayId;
    return map;
  }

  factory MulticastDomainArgs.fromMap(Map<String, dynamic> map) {
    return MulticastDomainArgs(
      autoAcceptSharedAssociations: pulumi.Input.asOptionalInput<String>(
          map['autoAcceptSharedAssociations']),
      igmpv2Support: pulumi.Input.asOptionalInput<String>(map['igmpv2Support']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      staticSourcesSupport:
          pulumi.Input.asOptionalInput<String>(map['staticSourcesSupport']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: pulumi.Input.asInput<String>(map['transitGatewayId']),
    );
  }
}
