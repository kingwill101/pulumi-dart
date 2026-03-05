// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcCenTrFirewall resources.
class VpcCenTrFirewallState {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// The description of the firewall.
  final pulumi.Input<String>? firewallDescription;
  /// The ID of the firewall ENI.
  final pulumi.Input<String>? firewallEniId;
  /// The ID of the VPC where the firewall ENI resides.
  final pulumi.Input<String>? firewallEniVpcId;
  /// The name of the Cloud Firewall.
  final pulumi.Input<String>? firewallName;
  /// The CIDR block of the subnet in the firewall VPC that hosts the firewall ENI in automatic mode.
  final pulumi.Input<String>? firewallSubnetCidr;
  /// The ID of the firewall VPC connection.
  final pulumi.Input<String>? firewallVpcAttachmentId;
  /// The CIDR block of the firewall VPC in automatic mode.
  final pulumi.Input<String>? firewallVpcCidr;
  /// The region ID of the transit router instance.
  final pulumi.Input<String>? regionNo;
  /// The routing mode. Valid values:
  final pulumi.Input<String>? routeMode;
  /// The status of the firewall.
  final pulumi.Input<String>? status;
  /// The primary CIDR block of the subnet in the firewall VPC used to connect to the transit router (TR) in automatic mode.
  final pulumi.Input<String>? trAttachmentMasterCidr;
  /// The primary zone of the vSwitch.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? trAttachmentMasterZone;
  /// The secondary CIDR block of the subnet in the firewall VPC used to connect to TR in automatic mode.
  final pulumi.Input<String>? trAttachmentSlaveCidr;
  /// The secondary zone of the vSwitch.
  ///
  /// &gt; **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? trAttachmentSlaveZone;
  /// The ID of the Transit Router instance.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [VpcCenTrFirewallState].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [firewallDescription] The description of the firewall.
  /// [firewallEniId] The ID of the firewall ENI.
  /// [firewallEniVpcId] The ID of the VPC where the firewall ENI resides.
  /// [firewallName] The name of the Cloud Firewall.
  /// [firewallSubnetCidr] The CIDR block of the subnet in the firewall VPC that hosts the firewall ENI in automatic mode.
  /// [firewallVpcAttachmentId] The ID of the firewall VPC connection.
  /// [firewallVpcCidr] The CIDR block of the firewall VPC in automatic mode.
  /// [regionNo] The region ID of the transit router instance.
  /// [routeMode] The routing mode. Valid values:
  /// [status] The status of the firewall.
  /// [trAttachmentMasterCidr] The primary CIDR block of the subnet in the firewall VPC used to connect to the transit router (TR) in automatic mode.
  /// [trAttachmentMasterZone] The primary zone of the vSwitch.
  /// [trAttachmentSlaveCidr] The secondary CIDR block of the subnet in the firewall VPC used to connect to TR in automatic mode.
  /// [trAttachmentSlaveZone] The secondary zone of the vSwitch.
  /// [transitRouterId] The ID of the Transit Router instance.
  VpcCenTrFirewallState({
    this.cenId,
    this.firewallDescription,
    this.firewallEniId,
    this.firewallEniVpcId,
    this.firewallName,
    this.firewallSubnetCidr,
    this.firewallVpcAttachmentId,
    this.firewallVpcCidr,
    this.regionNo,
    this.routeMode,
    this.status,
    this.trAttachmentMasterCidr,
    this.trAttachmentMasterZone,
    this.trAttachmentSlaveCidr,
    this.trAttachmentSlaveZone,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': ?cenId,
      'firewallDescription': ?firewallDescription,
      'firewallEniId': ?firewallEniId,
      'firewallEniVpcId': ?firewallEniVpcId,
      'firewallName': ?firewallName,
      'firewallSubnetCidr': ?firewallSubnetCidr,
      'firewallVpcAttachmentId': ?firewallVpcAttachmentId,
      'firewallVpcCidr': ?firewallVpcCidr,
      'regionNo': ?regionNo,
      'routeMode': ?routeMode,
      'status': ?status,
      'trAttachmentMasterCidr': ?trAttachmentMasterCidr,
      'trAttachmentMasterZone': ?trAttachmentMasterZone,
      'trAttachmentSlaveCidr': ?trAttachmentSlaveCidr,
      'trAttachmentSlaveZone': ?trAttachmentSlaveZone,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory VpcCenTrFirewallState.fromMap(Map<String, dynamic> map) {
    return VpcCenTrFirewallState(
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallDescription: (() { final guardedValue = map['firewallDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallEniId: (() { final guardedValue = map['firewallEniId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallEniVpcId: (() { final guardedValue = map['firewallEniVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallName: (() { final guardedValue = map['firewallName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallSubnetCidr: (() { final guardedValue = map['firewallSubnetCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallVpcAttachmentId: (() { final guardedValue = map['firewallVpcAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallVpcCidr: (() { final guardedValue = map['firewallVpcCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionNo: (() { final guardedValue = map['regionNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeMode: (() { final guardedValue = map['routeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trAttachmentMasterCidr: (() { final guardedValue = map['trAttachmentMasterCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trAttachmentMasterZone: (() { final guardedValue = map['trAttachmentMasterZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trAttachmentSlaveCidr: (() { final guardedValue = map['trAttachmentSlaveCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trAttachmentSlaveZone: (() { final guardedValue = map['trAttachmentSlaveZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

