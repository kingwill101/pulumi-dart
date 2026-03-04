// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionVpcConfig {
  /// Security group ID.
  final pulumi.Input<String> securityGroupId;

  /// VPC network ID.
  final pulumi.Input<String> vpcId;

  /// Switch List.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [GetV3FunctionsFunctionVpcConfig].
  /// [securityGroupId] Security group ID.
  /// [vpcId] VPC network ID.
  /// [vswitchIds] Switch List.
  GetV3FunctionsFunctionVpcConfig({
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

  factory GetV3FunctionsFunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionVpcConfig(
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchIds: pulumi.Input.fromValue(
        (map['vswitchIds'] as List).cast<String>(),
      ),
    );
  }
}
