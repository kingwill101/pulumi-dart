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
  const DhcpOptionsSetAttachmentState({
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
      dhcpOptionsSetId: (() { final guardedValue = map['dhcpOptionsSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

