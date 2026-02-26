// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServiceNetworkConfiguration {
  /// Security groups associated with the task. If not specified, the default security group for the VPC is used.
  final List<String> securityGroups;

  /// Subnets associated with the task. At least 2 subnets must be specified when using network configuration. If not specified, default subnets will be used.
  final List<String> subnets;

  ExpressGatewayServiceNetworkConfiguration({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroups'] = securityGroups;
    map['subnets'] = subnets;
    return map;
  }

  factory ExpressGatewayServiceNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ExpressGatewayServiceNetworkConfiguration(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
