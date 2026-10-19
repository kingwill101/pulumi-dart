// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationVpcConfiguration {
  /// Security Group IDs used by the VPC configuration.
  final pulumi.Input<List<String>> securityGroupIds;
  /// Subnet IDs used by the VPC configuration.
  final pulumi.Input<List<String>> subnetIds;
  /// Identifier of the VPC configuration.
  final pulumi.Input<String?>? vpcConfigurationId;
  /// Identifier of the VPC.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [ApplicationApplicationConfigurationVpcConfiguration].
  /// [securityGroupIds] Security Group IDs used by the VPC configuration.
  /// [subnetIds] Subnet IDs used by the VPC configuration.
  /// [vpcConfigurationId] Identifier of the VPC configuration.
  /// [vpcId] Identifier of the VPC.
  const ApplicationApplicationConfigurationVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
    this.vpcConfigurationId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcConfigurationId': ?vpcConfigurationId,
      'vpcId': ?vpcId,
    };
  }

  factory ApplicationApplicationConfigurationVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationVpcConfiguration(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcConfigurationId: (() { final guardedValue = map['vpcConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
