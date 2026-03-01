// ignore_for_file: unused_element, unnecessary_cast


class ConnectionNetworkParameters {
  /// The network type. Valid values: `PublicNetwork`, `PrivateNetwork`. **NOTE:** If you set `network_type` to `PrivateNetwork`, you must configure `vpc_id`, `vswitche_id`, and `security_group_id`.
  final String networkType;
  /// The ID of the security group.
  final String? securityGroupId;
  /// The ID of the VPC.
  final String? vpcId;
  /// The ID of the VSwitch.
  final String? vswitcheId;

  /// Creates a new [ConnectionNetworkParameters].
  /// [networkType] The network type. Valid values: `PublicNetwork`, `PrivateNetwork`. **NOTE:** If you set `network_type` to `PrivateNetwork`, you must configure `vpc_id`, `vswitche_id`, and `security_group_id`.
  /// [securityGroupId] The ID of the security group.
  /// [vpcId] The ID of the VPC.
  /// [vswitcheId] The ID of the VSwitch.
  ConnectionNetworkParameters({
    required this.networkType,
    this.securityGroupId,
    this.vpcId,
    this.vswitcheId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkType': networkType,
      'securityGroupId': ?securityGroupId,
      'vpcId': ?vpcId,
      'vswitcheId': ?vswitcheId,
    };
  }

  factory ConnectionNetworkParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionNetworkParameters(
      networkType: map['networkType'] as String,
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitcheId: map['vswitcheId'] == null ? null : map['vswitcheId'] as String,
    );
  }
}

