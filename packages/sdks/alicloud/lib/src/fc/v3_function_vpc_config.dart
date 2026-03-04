// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionVpcConfig {
  /// Security group ID
  final pulumi.Input<String>? securityGroupId;

  /// VPC network ID
  final pulumi.Input<String>? vpcId;

  /// Switch List
  final pulumi.Input<List<String>>? vswitchIds;

  /// Creates a new [V3FunctionVpcConfig].
  /// [securityGroupId] Security group ID
  /// [vpcId] VPC network ID
  /// [vswitchIds] Switch List
  V3FunctionVpcConfig({this.securityGroupId, this.vpcId, this.vswitchIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': ?securityGroupId,
      'vpcId': ?vpcId,
      'vswitchIds': ?vswitchIds,
    };
  }

  factory V3FunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionVpcConfig(
      securityGroupId: (() {
        final guardedValue = map['securityGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchIds: (() {
        final guardedValue = map['vswitchIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
