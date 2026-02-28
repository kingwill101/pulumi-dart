// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationVpcConfiguration {
  /// The Security Group IDs used by the VPC configuration.
  final List<String> securityGroupIds;

  /// The Subnet IDs used by the VPC configuration.
  final List<String> subnetIds;
  final String? vpcConfigurationId;
  final String? vpcId;

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
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    final vpcConfigurationIdValue = vpcConfigurationId;
    if (vpcConfigurationIdValue != null) {
      map['vpcConfigurationId'] = vpcConfigurationIdValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory ApplicationApplicationConfigurationVpcConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationVpcConfiguration(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcConfigurationId: map['vpcConfigurationId'] == null
          ? null
          : map['vpcConfigurationId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
