// ignore_for_file: unused_element, unnecessary_cast


class DhcpOptionsSetAssociateVpc {
  /// The status of the VPC associated with the DHCP option set.
  final String? associateStatus;
  /// The ID of the VPC network that is associated with the DHCP options set.
  final String vpcId;

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
      associateStatus: map['associateStatus'] == null ? null : map['associateStatus'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

