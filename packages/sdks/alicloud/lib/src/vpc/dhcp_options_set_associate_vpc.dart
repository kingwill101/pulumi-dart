// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DhcpOptionsSetAssociateVpc {
  /// The status of the VPC associated with the DHCP option set.
  final pulumi.Input<String>? associateStatus;
  /// The ID of the VPC network that is associated with the DHCP options set.
  final pulumi.Input<String> vpcId;

  /// Creates a new [DhcpOptionsSetAssociateVpc].
  /// [associateStatus] The status of the VPC associated with the DHCP option set.
  /// [vpcId] The ID of the VPC network that is associated with the DHCP options set.
  DhcpOptionsSetAssociateVpc({
    this.associateStatus,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateStatus': ?associateStatus,
      'vpcId': vpcId,
    };
  }

  factory DhcpOptionsSetAssociateVpc.fromMap(Map<String, dynamic> map) {
    return DhcpOptionsSetAssociateVpc(
      associateStatus: map['associateStatus'] == null ? null : (map['associateStatus'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

