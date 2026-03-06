// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_dhcp_options_set_attachment_dhcp_options_set_attachment_args_doc}
/// The set of arguments for DhcpOptionsSetAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpc_dhcp_options_set_attachment_dhcp_options_set_attachment_args_doc}
class DhcpOptionsSetAttachmentArgs {
  /// The ID of the DHCP options set.
  final pulumi.Input<String> dhcpOptionsSetId;
  /// Specifies whether to precheck this request only. Default values: `false`. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The ID of the VPC network that is to be associated with the DHCP options set..
  final pulumi.Input<String> vpcId;

  /// Creates a new [DhcpOptionsSetAttachmentArgs].
  /// [dhcpOptionsSetId] The ID of the DHCP options set.
  /// [dryRun] Specifies whether to precheck this request only. Default values: `false`. Valid values:
  /// [vpcId] The ID of the VPC network that is to be associated with the DHCP options set..
  const DhcpOptionsSetAttachmentArgs({
    required this.dhcpOptionsSetId,
    this.dryRun,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsSetId': dhcpOptionsSetId,
      'dryRun': ?dryRun,
      'vpcId': vpcId,
    };
  }

  factory DhcpOptionsSetAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DhcpOptionsSetAttachmentArgs(
      dhcpOptionsSetId: pulumi.Input.fromValue(map['dhcpOptionsSetId'] as String),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

