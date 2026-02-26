// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TransitGatewayPeering.
class TransitGatewayPeeringArgs {
  /// ID of a core network.
  final Input<String> coreNetworkId;

  /// Key-value tags for the peering. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ARN of the transit gateway for the peering request.
  ///
  /// The following arguments are optional:
  final Input<String> transitGatewayArn;

  TransitGatewayPeeringArgs({
    required this.coreNetworkId,
    this.tags,
    required this.transitGatewayArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['transitGatewayArn'] = transitGatewayArn;
    return map;
  }

  factory TransitGatewayPeeringArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayPeeringArgs(
      coreNetworkId: Input.asInput<String>(map['coreNetworkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayArn: Input.asInput<String>(map['transitGatewayArn']),
    );
  }
}
