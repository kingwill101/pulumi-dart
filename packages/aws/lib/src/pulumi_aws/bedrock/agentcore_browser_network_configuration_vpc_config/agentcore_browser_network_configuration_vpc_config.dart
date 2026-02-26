// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreBrowserNetworkConfigurationVpcConfig {
  /// Set of security group IDs for the VPC configuration.
  final List<String> securityGroups;

  /// Set of subnet IDs for the VPC configuration.
  final List<String> subnets;

  AgentcoreBrowserNetworkConfigurationVpcConfig({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    return map;
  }

  factory AgentcoreBrowserNetworkConfigurationVpcConfig.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreBrowserNetworkConfigurationVpcConfig(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
