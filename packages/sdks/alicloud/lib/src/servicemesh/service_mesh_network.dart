// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceMeshNetwork {
  /// Security group ID
  final pulumi.Input<String>? securityGroupId;
  /// VPC ID
  final pulumi.Input<String> vpcId;
  /// Virtual Switch ID
  final pulumi.Input<String> vswitcheList;

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
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitcheList: (map['vswitcheList'] as String).input(),
    );
  }
}

