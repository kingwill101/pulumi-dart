// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentNetworkConfiguration {
  /// Security groups IDs for the environment. At least one of the security group needs to allow MWAA resources to talk to each other, otherwise MWAA cannot be provisioned.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The private subnet IDs in which the environment should be created. MWAA requires two subnets.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [EnvironmentNetworkConfiguration].
  /// [securityGroupIds] Security groups IDs for the environment. At least one of the security group needs to allow MWAA resources to talk to each other, otherwise MWAA cannot be provisioned.
  /// [subnetIds] The private subnet IDs in which the environment should be created. MWAA requires two subnets.
  EnvironmentNetworkConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory EnvironmentNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return EnvironmentNetworkConfiguration(
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
    );
  }
}

