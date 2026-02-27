// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_attachment_options/vpc_attachment_options.dart';

/// The set of arguments for VpcAttachment.
class VpcAttachmentNetworkmanagerArgs {
  /// ID of a core network for the VPC attachment.
  final pulumi.Input<String> coreNetworkId;

  /// Options for the VPC attachment. See below.
  final pulumi.Input<VpcAttachmentOptions>? options;

  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  final pulumi.Input<String>? routingPolicyLabel;

  /// Subnet ARNs of the VPC attachment.
  final pulumi.Input<List<String>> subnetArns;

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcArn;

  VpcAttachmentNetworkmanagerArgs({
    required this.coreNetworkId,
    this.options,
    this.routingPolicyLabel,
    required this.subnetArns,
    this.tags,
    required this.vpcArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['coreNetworkId'] = coreNetworkId;
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = pulumi.Input.mapOptionalInputValue<VpcAttachmentOptions,
          Map<String, dynamic>>(optionsValue, (value) => value.toMap());
    }
    final routingPolicyLabelValue = routingPolicyLabel;
    if (routingPolicyLabelValue != null) {
      map['routingPolicyLabel'] = routingPolicyLabelValue;
    }
    map['subnetArns'] = subnetArns;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcArn'] = vpcArn;
    return map;
  }

  factory VpcAttachmentNetworkmanagerArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentNetworkmanagerArgs(
      coreNetworkId: pulumi.Input.asInput<String>(map['coreNetworkId']),
      options:
          pulumi.Input.asOptionalInput<VpcAttachmentOptions>(map['options']),
      routingPolicyLabel:
          pulumi.Input.asOptionalInput<String>(map['routingPolicyLabel']),
      subnetArns: pulumi.Input.asInput<List<String>>(map['subnetArns']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcArn: pulumi.Input.asInput<String>(map['vpcArn']),
    );
  }
}
