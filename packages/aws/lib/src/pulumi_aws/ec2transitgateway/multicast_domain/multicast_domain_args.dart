// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MulticastDomain.
class MulticastDomainArgs {
  /// Whether to automatically accept cross-account subnet associations that are associated with the EC2 Transit Gateway Multicast Domain. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final Input<String>? autoAcceptSharedAssociations;

  /// Whether to enable Internet Group Management Protocol (IGMP) version 2 for the EC2 Transit Gateway Multicast Domain. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final Input<String>? igmpv2Support;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Whether to enable support for statically configuring multicast group sources for the EC2 Transit Gateway Multicast Domain. Valid values: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>, <span pulumi-lang-nodejs="`enable`" pulumi-lang-dotnet="`Enable`" pulumi-lang-go="`enable`" pulumi-lang-python="`enable`" pulumi-lang-yaml="`enable`" pulumi-lang-java="`enable`">`enable`</span>. Default value: <span pulumi-lang-nodejs="`disable`" pulumi-lang-dotnet="`Disable`" pulumi-lang-go="`disable`" pulumi-lang-python="`disable`" pulumi-lang-yaml="`disable`" pulumi-lang-java="`disable`">`disable`</span>.
  final Input<String>? staticSourcesSupport;

  /// Key-value tags for the EC2 Transit Gateway Multicast Domain. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// EC2 Transit Gateway identifier. The EC2 Transit Gateway must have <span pulumi-lang-nodejs="`multicastSupport`" pulumi-lang-dotnet="`MulticastSupport`" pulumi-lang-go="`multicastSupport`" pulumi-lang-python="`multicast_support`" pulumi-lang-yaml="`multicastSupport`" pulumi-lang-java="`multicastSupport`">`multicast_support`</span> enabled.
  final Input<String> transitGatewayId;

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
      autoAcceptSharedAssociations:
          Input.asOptionalInput<String>(map['autoAcceptSharedAssociations']),
      igmpv2Support: Input.asOptionalInput<String>(map['igmpv2Support']),
      region: Input.asOptionalInput<String>(map['region']),
      staticSourcesSupport:
          Input.asOptionalInput<String>(map['staticSourcesSupport']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: Input.asInput<String>(map['transitGatewayId']),
    );
  }
}
