// ignore_for_file: unused_element, unnecessary_cast

class AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig {
  /// Security groups associated with the VPC configuration.
  final List<String> securityGroups;

  /// Subnets associated with the VPC configuration.
  final List<String> subnets;

  /// Creates a new [AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig].
  /// [securityGroups] Security groups associated with the VPC configuration.
  /// [subnets] Subnets associated with the VPC configuration.
  AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    return map;
  }

  factory AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
