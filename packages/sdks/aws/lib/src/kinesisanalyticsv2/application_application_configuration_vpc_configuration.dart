// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationVpcConfiguration {
  /// The Security Group IDs used by the VPC configuration.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The Subnet IDs used by the VPC configuration.
  final pulumi.Input<List<String>> subnetIds;
  final pulumi.Input<String>? vpcConfigurationId;
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ApplicationApplicationConfigurationVpcConfiguration].
  /// [securityGroupIds] The Security Group IDs used by the VPC configuration.
  /// [subnetIds] The Subnet IDs used by the VPC configuration.
  /// [vpcConfigurationId] Optional.
  /// [vpcId] Optional.
  ApplicationApplicationConfigurationVpcConfiguration({
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
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      vpcConfigurationId: map['vpcConfigurationId'] == null ? null : (map['vpcConfigurationId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

