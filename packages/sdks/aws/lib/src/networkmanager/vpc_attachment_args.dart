// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_attachment_options.dart';

/// {@template pulumi_networkmanager_vpc_attachment_vpc_attachment_args_doc}
/// The set of arguments for VpcAttachment.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_vpc_attachment_vpc_attachment_args_doc}
class VpcAttachmentArgs {
  /// ID of a core network for the VPC attachment.
  final pulumi.Input<String> coreNetworkId;
  /// Options for the VPC attachment. See below.
  final pulumi.Input<VpcAttachmentOptions>? options;
  /// The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  final pulumi.Input<String>? routingPolicyLabel;
  /// Subnet ARNs of the VPC attachment.
  final pulumi.Input<List<String>> subnetArns;
  /// Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ARN of the VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcArn;

  /// Creates a new [VpcAttachmentArgs].
  /// [coreNetworkId] ID of a core network for the VPC attachment.
  /// [options] Options for the VPC attachment. See below.
  /// [routingPolicyLabel] The routing policy label to apply to the VPC attachment for traffic routing decisions. Maximum length of 256 characters.
  /// [subnetArns] Subnet ARNs of the VPC attachment.
  /// [tags] Key-value tags for the attachment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcArn] ARN of the VPC.
  const VpcAttachmentArgs({
    required this.coreNetworkId,
    this.options,
    this.routingPolicyLabel,
    required this.subnetArns,
    this.tags,
    required this.vpcArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreNetworkId': coreNetworkId,
      'options': ?pulumi.Input.mapOptionalInputValue<VpcAttachmentOptions, Map<String, dynamic>>(options, (value) => value.toMap()),
      'routingPolicyLabel': ?routingPolicyLabel,
      'subnetArns': subnetArns,
      'tags': ?tags,
      'vpcArn': vpcArn,
    };
  }

  factory VpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentArgs(
      coreNetworkId: pulumi.Input.fromValue(map['coreNetworkId'] as String),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcAttachmentOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      routingPolicyLabel: (() { final guardedValue = map['routingPolicyLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetArns: pulumi.Input.fromValue((map['subnetArns'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcArn: pulumi.Input.fromValue(map['vpcArn'] as String),
    );
  }
}
