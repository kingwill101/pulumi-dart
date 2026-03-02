// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_vpc_cen_tr_firewall_vpc_cen_tr_firewall_args_doc}
/// The set of arguments for VpcCenTrFirewall.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_vpc_cen_tr_firewall_vpc_cen_tr_firewall_args_doc}
class VpcCenTrFirewallArgs {
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String> cenId;
  /// The description of the firewall.
  final pulumi.Input<String>? firewallDescription;
  /// The name of the Cloud Firewall.
  final pulumi.Input<String> firewallName;
  /// The CIDR block of the subnet in the firewall VPC that hosts the firewall ENI in automatic mode.
  final pulumi.Input<String> firewallSubnetCidr;
  /// The CIDR block of the firewall VPC in automatic mode.
  final pulumi.Input<String> firewallVpcCidr;
  /// The region ID of the transit router instance.
  final pulumi.Input<String> regionNo;
  /// The routing mode. Valid values:
  final pulumi.Input<String> routeMode;
  /// The primary CIDR block of the subnet in the firewall VPC used to connect to the transit router (TR) in automatic mode.
  final pulumi.Input<String> trAttachmentMasterCidr;
  /// The primary zone of the vSwitch.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? trAttachmentMasterZone;
  /// The secondary CIDR block of the subnet in the firewall VPC used to connect to TR in automatic mode.
  final pulumi.Input<String> trAttachmentSlaveCidr;
  /// The secondary zone of the vSwitch.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? trAttachmentSlaveZone;
  /// The ID of the Transit Router instance.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [VpcCenTrFirewallArgs].
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [firewallDescription] The description of the firewall.
  /// [firewallName] The name of the Cloud Firewall.
  /// [firewallSubnetCidr] The CIDR block of the subnet in the firewall VPC that hosts the firewall ENI in automatic mode.
  /// [firewallVpcCidr] The CIDR block of the firewall VPC in automatic mode.
  /// [regionNo] The region ID of the transit router instance.
  /// [routeMode] The routing mode. Valid values:
  /// [trAttachmentMasterCidr] The primary CIDR block of the subnet in the firewall VPC used to connect to the transit router (TR) in automatic mode.
  /// [trAttachmentMasterZone] The primary zone of the vSwitch.
  /// [trAttachmentSlaveCidr] The secondary CIDR block of the subnet in the firewall VPC used to connect to TR in automatic mode.
  /// [trAttachmentSlaveZone] The secondary zone of the vSwitch.
  /// [transitRouterId] The ID of the Transit Router instance.
  VpcCenTrFirewallArgs({
    required this.cenId,
    this.firewallDescription,
    required this.firewallName,
    required this.firewallSubnetCidr,
    required this.firewallVpcCidr,
    required this.regionNo,
    required this.routeMode,
    required this.trAttachmentMasterCidr,
    this.trAttachmentMasterZone,
    required this.trAttachmentSlaveCidr,
    this.trAttachmentSlaveZone,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'firewallDescription': ?firewallDescription,
      'firewallName': firewallName,
      'firewallSubnetCidr': firewallSubnetCidr,
      'firewallVpcCidr': firewallVpcCidr,
      'regionNo': regionNo,
      'routeMode': routeMode,
      'trAttachmentMasterCidr': trAttachmentMasterCidr,
      'trAttachmentMasterZone': ?trAttachmentMasterZone,
      'trAttachmentSlaveCidr': trAttachmentSlaveCidr,
      'trAttachmentSlaveZone': ?trAttachmentSlaveZone,
      'transitRouterId': transitRouterId,
    };
  }

  factory VpcCenTrFirewallArgs.fromMap(Map<String, dynamic> map) {
    return VpcCenTrFirewallArgs(
      cenId: (map['cenId'] as String).input(),
      firewallDescription: map['firewallDescription'] == null ? null : (map['firewallDescription'] as String).input(),
      firewallName: (map['firewallName'] as String).input(),
      firewallSubnetCidr: (map['firewallSubnetCidr'] as String).input(),
      firewallVpcCidr: (map['firewallVpcCidr'] as String).input(),
      regionNo: (map['regionNo'] as String).input(),
      routeMode: (map['routeMode'] as String).input(),
      trAttachmentMasterCidr: (map['trAttachmentMasterCidr'] as String).input(),
      trAttachmentMasterZone: map['trAttachmentMasterZone'] == null ? null : (map['trAttachmentMasterZone'] as String).input(),
      trAttachmentSlaveCidr: (map['trAttachmentSlaveCidr'] as String).input(),
      trAttachmentSlaveZone: map['trAttachmentSlaveZone'] == null ? null : (map['trAttachmentSlaveZone'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
    );
  }
}

