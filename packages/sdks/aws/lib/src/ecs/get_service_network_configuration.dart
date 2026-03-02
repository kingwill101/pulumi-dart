// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceNetworkConfiguration {
  /// Whether tasks receive public IP addresses
  final pulumi.Input<bool> assignPublicIp;
  /// Security groups associated with tasks
  final pulumi.Input<List<String>> securityGroups;
  /// Subnets associated with tasks
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [GetServiceNetworkConfiguration].
  /// [assignPublicIp] Whether tasks receive public IP addresses
  /// [securityGroups] Security groups associated with tasks
  /// [subnets] Subnets associated with tasks
  GetServiceNetworkConfiguration({
    required this.assignPublicIp,
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': assignPublicIp,
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory GetServiceNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceNetworkConfiguration(
      assignPublicIp: (map['assignPublicIp'] as bool).input(),
      securityGroups: ((map['securityGroups'] as List).cast<String>()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

