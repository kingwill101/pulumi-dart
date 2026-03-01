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
    required pulumi.Output<String> cenId,
    pulumi.Output<String>? firewallDescription,
    required pulumi.Output<String> firewallName,
    required pulumi.Output<String> firewallSubnetCidr,
    required pulumi.Output<String> firewallVpcCidr,
    required pulumi.Output<String> regionNo,
    required pulumi.Output<String> routeMode,
    required pulumi.Output<String> trAttachmentMasterCidr,
    pulumi.Output<String>? trAttachmentMasterZone,
    required pulumi.Output<String> trAttachmentSlaveCidr,
    pulumi.Output<String>? trAttachmentSlaveZone,
    required pulumi.Output<String> transitRouterId,
  }) :
      cenId = pulumi.Input.asInput<String>(cenId),
      firewallDescription = pulumi.Input.asOptionalInput<String>(firewallDescription),
      firewallName = pulumi.Input.asInput<String>(firewallName),
      firewallSubnetCidr = pulumi.Input.asInput<String>(firewallSubnetCidr),
      firewallVpcCidr = pulumi.Input.asInput<String>(firewallVpcCidr),
      regionNo = pulumi.Input.asInput<String>(regionNo),
      routeMode = pulumi.Input.asInput<String>(routeMode),
      trAttachmentMasterCidr = pulumi.Input.asInput<String>(trAttachmentMasterCidr),
      trAttachmentMasterZone = pulumi.Input.asOptionalInput<String>(trAttachmentMasterZone),
      trAttachmentSlaveCidr = pulumi.Input.asInput<String>(trAttachmentSlaveCidr),
      trAttachmentSlaveZone = pulumi.Input.asOptionalInput<String>(trAttachmentSlaveZone),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

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
      cenId: pulumi.Output.create<String>(map['cenId'] as String),
      firewallDescription: map['firewallDescription'] == null ? null : pulumi.Output.create<String>(map['firewallDescription'] as String),
      firewallName: pulumi.Output.create<String>(map['firewallName'] as String),
      firewallSubnetCidr: pulumi.Output.create<String>(map['firewallSubnetCidr'] as String),
      firewallVpcCidr: pulumi.Output.create<String>(map['firewallVpcCidr'] as String),
      regionNo: pulumi.Output.create<String>(map['regionNo'] as String),
      routeMode: pulumi.Output.create<String>(map['routeMode'] as String),
      trAttachmentMasterCidr: pulumi.Output.create<String>(map['trAttachmentMasterCidr'] as String),
      trAttachmentMasterZone: map['trAttachmentMasterZone'] == null ? null : pulumi.Output.create<String>(map['trAttachmentMasterZone'] as String),
      trAttachmentSlaveCidr: pulumi.Output.create<String>(map['trAttachmentSlaveCidr'] as String),
      trAttachmentSlaveZone: map['trAttachmentSlaveZone'] == null ? null : pulumi.Output.create<String>(map['trAttachmentSlaveZone'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

