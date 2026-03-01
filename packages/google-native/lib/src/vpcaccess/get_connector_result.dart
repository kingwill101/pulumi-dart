// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_response.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// List of projects using the connector.
  final List<String> connectedProjects;

  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final String ipCidrRange;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final String machineType;

  /// Maximum value of instances in autoscaling group underlying the connector.
  final int maxInstances;

  /// Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  final int maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector.
  final int minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  final int minThroughput;

  /// The resource name in the format `projects/*/locations/*/connectors/*`.
  final String name;

  /// Name of a VPC network.
  final String network;

  /// State of the VPC access connector.
  final String state;

  /// The subnet in which to house the VPC Access Connector.
  final SubnetResponse subnet;

  /// Creates a new [GetConnectorResult].
  /// [connectedProjects] List of projects using the connector.
  /// [ipCidrRange] The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  /// [machineType] Machine type of VM Instance underlying connector. Default is e2-micro
  /// [maxInstances] Maximum value of instances in autoscaling group underlying the connector.
  /// [maxThroughput] Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  /// [minInstances] Minimum value of instances in autoscaling group underlying the connector.
  /// [minThroughput] Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  /// [name] The resource name in the format `projects/*/locations/*/connectors/*`.
  /// [network] Name of a VPC network.
  /// [state] State of the VPC access connector.
  /// [subnet] The subnet in which to house the VPC Access Connector.
  GetConnectorResult({
    required this.connectedProjects,
    required this.ipCidrRange,
    required this.machineType,
    required this.maxInstances,
    required this.maxThroughput,
    required this.minInstances,
    required this.minThroughput,
    required this.name,
    required this.network,
    required this.state,
    required this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedProjects': connectedProjects,
      'ipCidrRange': ipCidrRange,
      'machineType': machineType,
      'maxInstances': maxInstances,
      'maxThroughput': maxThroughput,
      'minInstances': minInstances,
      'minThroughput': minThroughput,
      'name': name,
      'network': network,
      'state': state,
      'subnet': subnet.toMap(),
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      connectedProjects: (map['connectedProjects'] as List).cast<String>(),
      ipCidrRange: map['ipCidrRange'] as String,
      machineType: map['machineType'] as String,
      maxInstances: map['maxInstances'] as int,
      maxThroughput: map['maxThroughput'] as int,
      minInstances: map['minInstances'] as int,
      minThroughput: map['minThroughput'] as int,
      name: map['name'] as String,
      network: map['network'] as String,
      state: map['state'] as String,
      subnet: SubnetResponse.fromMap(
        (map['subnet'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
