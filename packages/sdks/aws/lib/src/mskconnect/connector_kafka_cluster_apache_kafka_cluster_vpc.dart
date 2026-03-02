// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorKafkaClusterApacheKafkaClusterVpc {
  /// The security groups for the connector.
  final pulumi.Input<List<String>> securityGroups;
  /// The subnets for the connector.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [ConnectorKafkaClusterApacheKafkaClusterVpc].
  /// [securityGroups] The security groups for the connector.
  /// [subnets] The subnets for the connector.
  ConnectorKafkaClusterApacheKafkaClusterVpc({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory ConnectorKafkaClusterApacheKafkaClusterVpc.fromMap(Map<String, dynamic> map) {
    return ConnectorKafkaClusterApacheKafkaClusterVpc(
      securityGroups: ((map['securityGroups'] as List).cast<String>()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

