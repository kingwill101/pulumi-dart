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

  /// Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [tags] Key-value tags for the attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcArn] ARN of the VPC.
  VpcAttachmentArgs({
    required String coreNetworkId,
    VpcAttachmentOptions? options,
    String? routingPolicyLabel,
    required List<String> subnetArns,
    Map<String, String>? tags,
    required String vpcArn,
  })  : coreNetworkId = pulumi.Input.asInput<String>(coreNetworkId),
        options = pulumi.Input.asOptionalInput<VpcAttachmentOptions>(options),
        routingPolicyLabel =
            pulumi.Input.asOptionalInput<String>(routingPolicyLabel),
        subnetArns = pulumi.Input.asInput<List<String>>(subnetArns),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcArn = pulumi.Input.asInput<String>(vpcArn);

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

  factory VpcAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentArgs(
      coreNetworkId: map['coreNetworkId'] as String,
      options: map['options'] == null
          ? null
          : VpcAttachmentOptions.fromMap(
              (map['options'] as Map).cast<String, dynamic>()),
      routingPolicyLabel: map['routingPolicyLabel'] == null
          ? null
          : map['routingPolicyLabel'] as String,
      subnetArns: (map['subnetArns'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcArn: map['vpcArn'] as String,
    );
  }
}
