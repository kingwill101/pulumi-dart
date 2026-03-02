// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_site_to_site_vpn_attachment_site_to_site_vpn_attachment_args_doc}
/// The set of arguments for SiteToSiteVpnAttachment.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_site_to_site_vpn_attachment_site_to_site_vpn_attachment_args_doc}
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

  /// Creates a new [SiteToSiteVpnAttachmentArgs].
  /// [coreNetworkId] ID of a core network for the VPN attachment.
  /// [routingPolicyLabel] The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpnConnectionArn] ARN of the site-to-site VPN connection.
  SiteToSiteVpnAttachmentArgs({
    required this.coreNetworkId,
    this.routingPolicyLabel,
    this.tags,
    required this.vpnConnectionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'routingPolicyLabel': ?routingPolicyLabel,
      'tags': ?tags,
      'vpnConnectionArn': vpnConnectionArn,
    };
  }

  factory SiteToSiteVpnAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return SiteToSiteVpnAttachmentArgs(
      coreNetworkId: (map['coreNetworkId'] as String).input(),
      routingPolicyLabel: map['routingPolicyLabel'] == null ? null : (map['routingPolicyLabel'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpnConnectionArn: (map['vpnConnectionArn'] as String).input(),
    );
  }
}

