// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshNetwork {
  /// The ID of the Security group
  final String securityGroupId;
  /// The ID of the VPC.
  final String vpcId;
  /// The list of Virtual Switch.
  final List<String> vswitcheLists;

  /// Creates a new [GetServiceMeshesMeshNetwork].
  /// [securityGroupId] The ID of the Security group
  /// [vpcId] The ID of the VPC.
  /// [vswitcheLists] The list of Virtual Switch.
  GetServiceMeshesMeshNetwork({
    required this.securityGroupId,
    required this.vpcId,
    required this.vswitcheLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': securityGroupId,
      'vpcId': vpcId,
      'vswitcheLists': vswitcheLists,
    };
  }

  factory GetServiceMeshesMeshNetwork.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshNetwork(
      securityGroupId: map['securityGroupId'] as String,
      vpcId: map['vpcId'] as String,
      vswitcheLists: (map['vswitcheLists'] as List).cast<String>(),
    );
  }
}

