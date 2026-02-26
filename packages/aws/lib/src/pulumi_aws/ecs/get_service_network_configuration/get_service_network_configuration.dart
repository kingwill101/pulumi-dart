// ignore_for_file: unused_element, unnecessary_cast

class GetServiceNetworkConfiguration {
  /// Whether tasks receive public IP addresses
  final bool assignPublicIp;

  /// Security groups associated with tasks
  final List<String> securityGroups;

  /// Subnets associated with tasks
  final List<String> subnets;

  GetServiceNetworkConfiguration({
    required this.assignPublicIp,
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignPublicIp'] = assignPublicIp;
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    return map;
  }

  factory GetServiceNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] as bool,
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
