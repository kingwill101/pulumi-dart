// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'subnet.dart';

/// The set of arguments for Connector.
class ConnectorArgs2 {
  /// Required. The ID to use for this connector.
  final Input<String> connectorId;

  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final Input<String>? ipCidrRange;
  final Input<String>? location;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final Input<String>? machineType;

  /// Maximum value of instances in autoscaling group underlying the connector.
  final Input<int>? maxInstances;

  /// Maximum throughput of the connector in Mbps. Default is 300, max is 1000. If both max-throughput and max-instances are provided, max-instances takes precedence over max-throughput.
  final Input<int>? maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector.
  final Input<int>? minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. If both min-throughput and min-instances are provided, min-instances takes precedence over min-throughput.
  final Input<int>? minThroughput;

  /// The resource name in the format `projects/*/locations/*/connectors/*`.
  final Input<String>? name;

  /// Name of a VPC network.
  final Input<String>? network;
  final Input<String>? project;

  /// The subnet in which to house the VPC Access Connector.
  final Input<Subnet>? subnet;

  ConnectorArgs2({
    required this.connectorId,
    this.ipCidrRange,
    this.location,
    this.machineType,
    this.maxInstances,
    this.maxThroughput,
    this.minInstances,
    this.minThroughput,
    this.name,
    this.network,
    this.project,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectorId'] = connectorId;
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final maxInstancesValue = maxInstances;
    if (maxInstancesValue != null) {
      map['maxInstances'] = maxInstancesValue;
    }
    final maxThroughputValue = maxThroughput;
    if (maxThroughputValue != null) {
      map['maxThroughput'] = maxThroughputValue;
    }
    final minInstancesValue = minInstances;
    if (minInstancesValue != null) {
      map['minInstances'] = minInstancesValue;
    }
    final minThroughputValue = minThroughput;
    if (minThroughputValue != null) {
      map['minThroughput'] = minThroughputValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final subnetValue = subnet;
    if (subnetValue != null) {
      map['subnet'] = Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(
          subnetValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectorArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs2(
      connectorId: Input.asInput<String>(map['connectorId']),
      ipCidrRange: Input.asOptionalInput<String>(map['ipCidrRange']),
      location: Input.asOptionalInput<String>(map['location']),
      machineType: Input.asOptionalInput<String>(map['machineType']),
      maxInstances: Input.asOptionalInput<int>(map['maxInstances']),
      maxThroughput: Input.asOptionalInput<int>(map['maxThroughput']),
      minInstances: Input.asOptionalInput<int>(map['minInstances']),
      minThroughput: Input.asOptionalInput<int>(map['minThroughput']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      project: Input.asOptionalInput<String>(map['project']),
      subnet: Input.asOptionalInput<Subnet>(map['subnet']),
    );
  }
}
