// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_attachment_options/vpc_attachment_options.dart';

/// The set of arguments for VpcAttachment.
class VpcAttachmentArgs2 {
  /// ID of a core network for the VPC attachment.
  final Input<String> coreNetworkId;

  /// Options for the VPC attachment. See below.
  final Input<VpcAttachmentOptions>? options;

  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  final Input<String>? routingPolicyLabel;

  /// Subnet ARNs of the VPC attachment.
  final Input<List<String>> subnetArns;

  /// Key-value tags for the attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  final Input<String> vpcArn;

  VpcAttachmentArgs2({
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
      map['options'] = Input.mapOptionalInputValue<VpcAttachmentOptions,
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

  factory VpcAttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentArgs2(
      coreNetworkId: Input.asInput<String>(map['coreNetworkId']),
      options: Input.asOptionalInput<VpcAttachmentOptions>(map['options']),
      routingPolicyLabel:
          Input.asOptionalInput<String>(map['routingPolicyLabel']),
      subnetArns: Input.asInput<List<String>>(map['subnetArns']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcArn: Input.asInput<String>(map['vpcArn']),
    );
  }
}
