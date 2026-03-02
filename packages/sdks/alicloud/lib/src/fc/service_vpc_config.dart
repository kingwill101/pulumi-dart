// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceVpcConfig {
  /// A security group ID associated with the Function Compute Service.
  final pulumi.Input<String> securityGroupId;
  /// A vpc ID associated with the Function Compute Service.
  final pulumi.Input<String>? vpcId;
  /// A list of vswitch IDs associated with the Function Compute Service.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [ServiceVpcConfig].
  /// [securityGroupId] A security group ID associated with the Function Compute Service.
  /// [vpcId] A vpc ID associated with the Function Compute Service.
  /// [vswitchIds] A list of vswitch IDs associated with the Function Compute Service.
  ServiceVpcConfig({
    required this.securityGroupId,
    this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupId': securityGroupId,
      'vpcId': ?vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory ServiceVpcConfig.fromMap(Map<String, dynamic> map) {
    return ServiceVpcConfig(
      securityGroupId: (map['securityGroupId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
    );
  }
}

