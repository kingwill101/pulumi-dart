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
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? firewallDescription,
    pulumi.Output<String>? firewallEniId,
    pulumi.Output<String>? firewallEniVpcId,
    pulumi.Output<String>? firewallName,
    pulumi.Output<String>? firewallSubnetCidr,
    pulumi.Output<String>? firewallVpcAttachmentId,
    pulumi.Output<String>? firewallVpcCidr,
    pulumi.Output<String>? regionNo,
    pulumi.Output<String>? routeMode,
    pulumi.Output<String>? status,
    pulumi.Output<String>? trAttachmentMasterCidr,
    pulumi.Output<String>? trAttachmentMasterZone,
    pulumi.Output<String>? trAttachmentSlaveCidr,
    pulumi.Output<String>? trAttachmentSlaveZone,
    pulumi.Output<String>? transitRouterId,
  }) :
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      firewallDescription = pulumi.Input.asOptionalInput<String>(firewallDescription),
      firewallEniId = pulumi.Input.asOptionalInput<String>(firewallEniId),
      firewallEniVpcId = pulumi.Input.asOptionalInput<String>(firewallEniVpcId),
      firewallName = pulumi.Input.asOptionalInput<String>(firewallName),
      firewallSubnetCidr = pulumi.Input.asOptionalInput<String>(firewallSubnetCidr),
      firewallVpcAttachmentId = pulumi.Input.asOptionalInput<String>(firewallVpcAttachmentId),
      firewallVpcCidr = pulumi.Input.asOptionalInput<String>(firewallVpcCidr),
      regionNo = pulumi.Input.asOptionalInput<String>(regionNo),
      routeMode = pulumi.Input.asOptionalInput<String>(routeMode),
      status = pulumi.Input.asOptionalInput<String>(status),
      trAttachmentMasterCidr = pulumi.Input.asOptionalInput<String>(trAttachmentMasterCidr),
      trAttachmentMasterZone = pulumi.Input.asOptionalInput<String>(trAttachmentMasterZone),
      trAttachmentSlaveCidr = pulumi.Input.asOptionalInput<String>(trAttachmentSlaveCidr),
      trAttachmentSlaveZone = pulumi.Input.asOptionalInput<String>(trAttachmentSlaveZone),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      firewallDescription: map['firewallDescription'] == null ? null : pulumi.Output.create<String>(map['firewallDescription'] as String),
      firewallEniId: map['firewallEniId'] == null ? null : pulumi.Output.create<String>(map['firewallEniId'] as String),
      firewallEniVpcId: map['firewallEniVpcId'] == null ? null : pulumi.Output.create<String>(map['firewallEniVpcId'] as String),
      firewallName: map['firewallName'] == null ? null : pulumi.Output.create<String>(map['firewallName'] as String),
      firewallSubnetCidr: map['firewallSubnetCidr'] == null ? null : pulumi.Output.create<String>(map['firewallSubnetCidr'] as String),
      firewallVpcAttachmentId: map['firewallVpcAttachmentId'] == null ? null : pulumi.Output.create<String>(map['firewallVpcAttachmentId'] as String),
      firewallVpcCidr: map['firewallVpcCidr'] == null ? null : pulumi.Output.create<String>(map['firewallVpcCidr'] as String),
      regionNo: map['regionNo'] == null ? null : pulumi.Output.create<String>(map['regionNo'] as String),
      routeMode: map['routeMode'] == null ? null : pulumi.Output.create<String>(map['routeMode'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      trAttachmentMasterCidr: map['trAttachmentMasterCidr'] == null ? null : pulumi.Output.create<String>(map['trAttachmentMasterCidr'] as String),
      trAttachmentMasterZone: map['trAttachmentMasterZone'] == null ? null : pulumi.Output.create<String>(map['trAttachmentMasterZone'] as String),
      trAttachmentSlaveCidr: map['trAttachmentSlaveCidr'] == null ? null : pulumi.Output.create<String>(map['trAttachmentSlaveCidr'] as String),
      trAttachmentSlaveZone: map['trAttachmentSlaveZone'] == null ? null : pulumi.Output.create<String>(map['trAttachmentSlaveZone'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

