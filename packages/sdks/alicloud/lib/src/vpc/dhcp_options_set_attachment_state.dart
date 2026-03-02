// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DhcpOptionsSetAttachment resources.
class DhcpOptionsSetAttachmentState {
  /// The ID of the DHCP options set.
  final pulumi.Input<String>? dhcpOptionsSetId;
  /// Specifies whether to precheck this request only. Default values: `false`. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// The status of the VPC network that is associated with the DHCP options set.  Valid values: `InUse` or `Pending`.
  final pulumi.Input<String>? status;
  /// The ID of the VPC network that is to be associated with the DHCP options set..
  final pulumi.Input<String>? vpcId;

  /// Creates a new [DhcpOptionsSetAttachmentState].
  /// [dhcpOptionsSetId] The ID of the DHCP options set.
  /// [dryRun] Specifies whether to precheck this request only. Default values: `false`. Valid values:
  /// [status] The status of the VPC network that is associated with the DHCP options set.  Valid values: `InUse` or `Pending`.
  /// [vpcId] The ID of the VPC network that is to be associated with the DHCP options set..
  DhcpOptionsSetAttachmentState({
    this.dhcpOptionsSetId,
    this.dryRun,
    this.status,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptionsSetId': ?dhcpOptionsSetId,
      'dryRun': ?dryRun,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory DhcpOptionsSetAttachmentState.fromMap(Map<String, dynamic> map) {
    return DhcpOptionsSetAttachmentState(
      dhcpOptionsSetId: map['dhcpOptionsSetId'] == null ? null : (map['dhcpOptionsSetId'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

