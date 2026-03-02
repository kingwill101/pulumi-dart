// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServicesServiceVpcConfig {
  /// Associated security group ID.
  final pulumi.Input<String> securityGroupId;
  /// Associated VPC ID.
  final pulumi.Input<String> vpcId;
  /// Associated vSwitch IDs.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [GetServicesServiceVpcConfig].
  /// [securityGroupId] Associated security group ID.
  /// [vpcId] Associated VPC ID.
  /// [vswitchIds] Associated vSwitch IDs.
  GetServicesServiceVpcConfig({
    required this.securityGroupId,
    required this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': securityGroupId,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetServicesServiceVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetServicesServiceVpcConfig(
      securityGroupId: (map['securityGroupId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
    );
  }
}

