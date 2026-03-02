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
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? trAttachmentMasterZone;
  /// The secondary CIDR block of the subnet in the firewall VPC used to connect to TR in automatic mode.
  final pulumi.Input<String>? trAttachmentSlaveCidr;
  /// The secondary zone of the vSwitch.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
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
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      firewallDescription: map['firewallDescription'] == null ? null : (map['firewallDescription'] as String).input(),
      firewallEniId: map['firewallEniId'] == null ? null : (map['firewallEniId'] as String).input(),
      firewallEniVpcId: map['firewallEniVpcId'] == null ? null : (map['firewallEniVpcId'] as String).input(),
      firewallName: map['firewallName'] == null ? null : (map['firewallName'] as String).input(),
      firewallSubnetCidr: map['firewallSubnetCidr'] == null ? null : (map['firewallSubnetCidr'] as String).input(),
      firewallVpcAttachmentId: map['firewallVpcAttachmentId'] == null ? null : (map['firewallVpcAttachmentId'] as String).input(),
      firewallVpcCidr: map['firewallVpcCidr'] == null ? null : (map['firewallVpcCidr'] as String).input(),
      regionNo: map['regionNo'] == null ? null : (map['regionNo'] as String).input(),
      routeMode: map['routeMode'] == null ? null : (map['routeMode'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      trAttachmentMasterCidr: map['trAttachmentMasterCidr'] == null ? null : (map['trAttachmentMasterCidr'] as String).input(),
      trAttachmentMasterZone: map['trAttachmentMasterZone'] == null ? null : (map['trAttachmentMasterZone'] as String).input(),
      trAttachmentSlaveCidr: map['trAttachmentSlaveCidr'] == null ? null : (map['trAttachmentSlaveCidr'] as String).input(),
      trAttachmentSlaveZone: map['trAttachmentSlaveZone'] == null ? null : (map['trAttachmentSlaveZone'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
    );
  }
}

