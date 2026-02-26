// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreCodeInterpreterNetworkConfigurationVpcConfig {
  /// Security groups associated with the VPC configuration.
  final List<String> securityGroups;

  /// Subnets associated with the VPC configuration.
  final List<String> subnets;

  AgentcoreCodeInterpreterNetworkConfigurationVpcConfig({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    return map;
  }

  factory AgentcoreCodeInterpreterNetworkConfigurationVpcConfig.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterNetworkConfigurationVpcConfig(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
