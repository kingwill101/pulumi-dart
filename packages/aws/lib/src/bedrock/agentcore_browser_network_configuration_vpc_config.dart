// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreBrowserNetworkConfigurationVpcConfig {
  /// Set of security group IDs for the VPC configuration.
  final List<String> securityGroups;

  /// Set of subnet IDs for the VPC configuration.
  final List<String> subnets;

  /// Creates a new [AgentcoreBrowserNetworkConfigurationVpcConfig].
  /// [securityGroups] Set of security group IDs for the VPC configuration.
  /// [subnets] Set of subnet IDs for the VPC configuration.
  AgentcoreBrowserNetworkConfigurationVpcConfig({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory AgentcoreBrowserNetworkConfigurationVpcConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreBrowserNetworkConfigurationVpcConfig(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
