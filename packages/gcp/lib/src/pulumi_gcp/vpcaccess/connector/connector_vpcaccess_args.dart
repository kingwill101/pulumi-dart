// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../connector_subnet/connector_subnet.dart';

/// The set of arguments for Connector.
class ConnectorVpcaccessArgs {
  /// The range of internal addresses that follows RFC 4632 notation. Example: `10.132.0.0/28`.
  final pulumi.Input<String>? ipCidrRange;

  /// Machine type of VM Instance underlying connector. Default is e2-micro
  final pulumi.Input<String>? machineType;

  /// Maximum value of instances in autoscaling group underlying the connector. Value must be between 3 and 10, inclusive. Must be
  /// higher than the value specified by min_instances. Required alongside `min_instances` if not using `min_throughput`/`max_throughput`.
  final pulumi.Input<int>? maxInstances;

  /// Maximum throughput of the connector in Mbps, must be greater than `min_throughput`. Default is 300. Refers to the expected throughput
  /// when using an e2-micro machine type. Value must be a multiple of 100 from 300 through 1000. Must be higher than the value specified by
  /// min_throughput. Only one of `max_throughput` and `max_instances` can be specified. The use of max_throughput is discouraged in favor of max_instances.
  final pulumi.Input<int>? maxThroughput;

  /// Minimum value of instances in autoscaling group underlying the connector. Value must be between 2 and 9, inclusive. Must be
  /// lower than the value specified by max_instances. Required alongside `max_instances` if not using `min_throughput`/`max_throughput`.
  final pulumi.Input<int>? minInstances;

  /// Minimum throughput of the connector in Mbps. Default and min is 200. Refers to the expected throughput when using an e2-micro machine type.
  /// Value must be a multiple of 100 from 200 through 900. Must be lower than the value specified by max_throughput.
  /// Only one of `min_throughput` and `min_instances` can be specified. The use of min_throughput is discouraged in favor of min_instances.
  final pulumi.Input<int>? minThroughput;

  /// The name of the resource (Max 25 characters).
  final pulumi.Input<String>? name;

  /// Name or self_link of the VPC network. Required if `ip_cidr_range` is set.
  final pulumi.Input<String>? network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where the VPC Access connector resides. If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// The subnet in which to house the connector
  /// Structure is documented below.
  final pulumi.Input<ConnectorSubnet>? subnet;

  ConnectorVpcaccessArgs({
    this.ipCidrRange,
    this.machineType,
    this.maxInstances,
    this.maxThroughput,
    this.minInstances,
    this.minThroughput,
    this.name,
    this.network,
    this.project,
    this.region,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final subnetValue = subnet;
    if (subnetValue != null) {
      map['subnet'] = pulumi.Input.mapOptionalInputValue<ConnectorSubnet,
          Map<String, dynamic>>(subnetValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectorVpcaccessArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorVpcaccessArgs(
      ipCidrRange: pulumi.Input.asOptionalInput<String>(map['ipCidrRange']),
      machineType: pulumi.Input.asOptionalInput<String>(map['machineType']),
      maxInstances: pulumi.Input.asOptionalInput<int>(map['maxInstances']),
      maxThroughput: pulumi.Input.asOptionalInput<int>(map['maxThroughput']),
      minInstances: pulumi.Input.asOptionalInput<int>(map['minInstances']),
      minThroughput: pulumi.Input.asOptionalInput<int>(map['minThroughput']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      subnet: pulumi.Input.asOptionalInput<ConnectorSubnet>(map['subnet']),
    );
  }
}
