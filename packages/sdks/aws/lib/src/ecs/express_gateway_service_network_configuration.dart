// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressGatewayServiceNetworkConfiguration {
  /// Security groups associated with the task. If not specified, the default security group for the VPC is used.
  final pulumi.Input<List<String>> securityGroups;
  /// Subnets associated with the task. At least 2 subnets must be specified when using network configuration. If not specified, default subnets will be used.
  final pulumi.Input<List<String>> subnets;

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

  factory ExpressGatewayServiceNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ExpressGatewayServiceNetworkConfiguration(
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}

