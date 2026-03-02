// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsLaunchTemplatesTemplateNetworkInterface {
  /// System disk description.
  final pulumi.Input<String> description;
  /// System disk name.
  final pulumi.Input<String> name;
  /// The primary private IP address of the ENI.
  final pulumi.Input<String> primaryIp;
  /// The security group ID must be one in the same VPC.
  final pulumi.Input<String> securityGroupId;
  /// The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [GetEcsLaunchTemplatesTemplateNetworkInterface].
  /// [description] System disk description.
  /// [name] System disk name.
  /// [primaryIp] The primary private IP address of the ENI.
  /// [securityGroupId] The security group ID must be one in the same VPC.
  /// [vswitchId] The vSwitch ID for ENI. The instance must be in the same zone of the same VPC network as the ENI, but they may belong to different VSwitches.
  GetEcsLaunchTemplatesTemplateNetworkInterface({
    required this.description,
    required this.name,
    required this.primaryIp,
    required this.securityGroupId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'primaryIp': primaryIp,
      'securityGroupId': securityGroupId,
      'vswitchId': vswitchId,
    };
  }

  factory GetEcsLaunchTemplatesTemplateNetworkInterface.fromMap(Map<String, dynamic> map) {
    return GetEcsLaunchTemplatesTemplateNetworkInterface(
      description: (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      primaryIp: (map['primaryIp'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

