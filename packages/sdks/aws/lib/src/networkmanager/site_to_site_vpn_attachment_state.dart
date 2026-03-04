// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SiteToSiteVpnAttachment resources.
class SiteToSiteVpnAttachmentState {
  /// ARN of the attachment.
  final pulumi.Input<String>? arn;

  /// Policy rule number associated with the attachment.
  final pulumi.Input<int>? attachmentPolicyRuleNumber;

  /// Type of attachment.
  final pulumi.Input<String>? attachmentType;

  /// ARN of a core network.
  final pulumi.Input<String>? coreNetworkArn;

  /// ID of a core network for the VPN attachment.
  final pulumi.Input<String>? coreNetworkId;

  /// Region where the edge is located.
  final pulumi.Input<String>? edgeLocation;

  /// ID of the attachment account owner.
  final pulumi.Input<String>? ownerAccountId;

  /// Attachment resource ARN.
  final pulumi.Input<String>? resourceArn;

  /// The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  final pulumi.Input<String>? routingPolicyLabel;

  /// Name of the segment attachment.
  final pulumi.Input<String>? segmentName;

  /// State of the attachment.
  final pulumi.Input<String>? state;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// ARN of the site-to-site VPN connection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vpnConnectionArn;

  /// Creates a new [SiteToSiteVpnAttachmentState].
  /// [arn] ARN of the attachment.
  /// [attachmentPolicyRuleNumber] Policy rule number associated with the attachment.
  /// [attachmentType] Type of attachment.
  /// [coreNetworkArn] ARN of a core network.
  /// [coreNetworkId] ID of a core network for the VPN attachment.
  /// [edgeLocation] Region where the edge is located.
  /// [ownerAccountId] ID of the attachment account owner.
  /// [resourceArn] Attachment resource ARN.
  /// [routingPolicyLabel] The routing policy label to apply to the Site-to-Site VPN attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  /// [segmentName] Name of the segment attachment.
  /// [state] State of the attachment.
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpnConnectionArn] ARN of the site-to-site VPN connection.
  SiteToSiteVpnAttachmentState({
    this.arn,
    this.attachmentPolicyRuleNumber,
    this.attachmentType,
    this.coreNetworkArn,
    this.coreNetworkId,
    this.edgeLocation,
    this.ownerAccountId,
    this.resourceArn,
    this.routingPolicyLabel,
    this.segmentName,
    this.state,
    this.tags,
    this.tagsAll,
    this.vpnConnectionArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachmentPolicyRuleNumber': ?attachmentPolicyRuleNumber,
      'attachmentType': ?attachmentType,
      'coreNetworkArn': ?coreNetworkArn,
      'coreNetworkId': ?coreNetworkId,
      'edgeLocation': ?edgeLocation,
      'ownerAccountId': ?ownerAccountId,
      'resourceArn': ?resourceArn,
      'routingPolicyLabel': ?routingPolicyLabel,
      'segmentName': ?segmentName,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpnConnectionArn': ?vpnConnectionArn,
    };
  }

  factory SiteToSiteVpnAttachmentState.fromMap(Map<String, dynamic> map) {
    return SiteToSiteVpnAttachmentState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      attachmentPolicyRuleNumber: (() {
        final guardedValue = map['attachmentPolicyRuleNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      attachmentType: (() {
        final guardedValue = map['attachmentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coreNetworkArn: (() {
        final guardedValue = map['coreNetworkArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coreNetworkId: (() {
        final guardedValue = map['coreNetworkId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      edgeLocation: (() {
        final guardedValue = map['edgeLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ownerAccountId: (() {
        final guardedValue = map['ownerAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceArn: (() {
        final guardedValue = map['resourceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      routingPolicyLabel: (() {
        final guardedValue = map['routingPolicyLabel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      segmentName: (() {
        final guardedValue = map['segmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpnConnectionArn: (() {
        final guardedValue = map['vpnConnectionArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
