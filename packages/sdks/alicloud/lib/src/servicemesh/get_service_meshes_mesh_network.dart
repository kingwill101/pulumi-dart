// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshNetwork {
  /// The ID of the Security group
  final pulumi.Input<String> securityGroupId;

  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// The list of Virtual Switch.
  final pulumi.Input<List<String>> vswitcheLists;

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
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitcheLists: pulumi.Input.fromValue(
        (map['vswitcheLists'] as List).cast<String>(),
      ),
    );
  }
}
