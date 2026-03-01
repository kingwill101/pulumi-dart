// ignore_for_file: unused_element, unnecessary_cast


class ServiceMeshNetwork {
  /// Security group ID
  final String? securityGroupId;
  /// VPC ID
  final String vpcId;
  /// Virtual Switch ID
  final String vswitcheList;

  /// Creates a new [ServiceMeshNetwork].
  /// [securityGroupId] Security group ID
  /// [vpcId] VPC ID
  /// [vswitcheList] Virtual Switch ID
  ServiceMeshNetwork({
    this.securityGroupId,
    required this.vpcId,
    required this.vswitcheList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': ?securityGroupId,
      'vpcId': vpcId,
      'vswitcheList': vswitcheList,
    };
  }

  factory ServiceMeshNetwork.fromMap(Map<String, dynamic> map) {
    return ServiceMeshNetwork(
      securityGroupId: map['securityGroupId'] == null ? null : map['securityGroupId'] as String,
      vpcId: map['vpcId'] as String,
      vswitcheList: map['vswitcheList'] as String,
    );
  }
}

