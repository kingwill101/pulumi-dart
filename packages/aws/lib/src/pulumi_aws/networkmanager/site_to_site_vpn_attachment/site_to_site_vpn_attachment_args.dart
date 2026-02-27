// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SiteToSiteVpnAttachment.
class SiteToSiteVpnAttachmentArgs {
  /// ID of a core network for the VPN attachment.
  final pulumi.Input<String> coreNetworkId;

  /// The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ARN of the site-to-site VPN connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpnConnectionArn;

  SiteToSiteVpnAttachmentArgs({
    required this.coreNetworkId,
    this.routingPolicyLabel,
    this.tags,
    required this.vpnConnectionArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    final routingPolicyLabelValue = routingPolicyLabel;
    if (routingPolicyLabelValue != null) {
      map['routingPolicyLabel'] = routingPolicyLabelValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpnConnectionArn'] = vpnConnectionArn;
    return map;
  }

  factory SiteToSiteVpnAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return SiteToSiteVpnAttachmentArgs(
      coreNetworkId: pulumi.Input.asInput<String>(map['coreNetworkId']),
      routingPolicyLabel:
          pulumi.Input.asOptionalInput<String>(map['routingPolicyLabel']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpnConnectionArn: pulumi.Input.asInput<String>(map['vpnConnectionArn']),
    );
  }
}
