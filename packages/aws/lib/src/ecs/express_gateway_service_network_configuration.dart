// ignore_for_file: unused_element, unnecessary_cast

class ExpressGatewayServiceNetworkConfiguration {
  /// Security groups associated with the task. If not specified, the default security group for the VPC is used.
  final List<String> securityGroups;

  /// Subnets associated with the task. At least 2 subnets must be specified when using network configuration. If not specified, default subnets will be used.
  final List<String> subnets;

  /// Creates a new [ExpressGatewayServiceNetworkConfiguration].
  /// [securityGroups] Security groups associated with the task. If not specified, the default security group for the VPC is used.
  /// [subnets] Subnets associated with the task. At least 2 subnets must be specified when using network configuration. If not specified, default subnets will be used.
  ExpressGatewayServiceNetworkConfiguration({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory ExpressGatewayServiceNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExpressGatewayServiceNetworkConfiguration(
      securityGroups: (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
