// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'click_house_enterprise_db_cluster_endpoint_port.dart';

class ClickHouseEnterpriseDbClusterEndpoint {
  /// The computing group ID.
  final String? computingGroupId;
  /// The instance connection string.
  final String? connectionString;
  /// The endpoint name.
  final String? endpointName;
  /// The IP address.
  final String? ipAddress;
  /// The network type of the connection string.
  final String? netType;
  /// A list of port details.
  final List<ClickHouseEnterpriseDbClusterEndpointPort>? ports;
  /// The instance status.
  final String? status;
  /// The VPC ID.
  final String? vpcId;
  /// The VPC instance ID.
  final String? vpcInstanceId;
  /// vSwitch ID.
  final String? vswitchId;

  /// Creates a new [ClickHouseEnterpriseDbClusterEndpoint].
  /// [computingGroupId] The computing group ID.
  /// [connectionString] The instance connection string.
  /// [endpointName] The endpoint name.
  /// [ipAddress] The IP address.
  /// [netType] The network type of the connection string.
  /// [ports] A list of port details.
  /// [status] The instance status.
  /// [vpcId] The VPC ID.
  /// [vpcInstanceId] The VPC instance ID.
  /// [vswitchId] vSwitch ID.
  ClickHouseEnterpriseDbClusterEndpoint({
    this.computingGroupId,
    this.connectionString,
    this.endpointName,
    this.ipAddress,
    this.netType,
    this.ports,
    this.status,
    this.vpcId,
    this.vpcInstanceId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computingGroupId': ?computingGroupId,
      'connectionString': ?connectionString,
      'endpointName': ?endpointName,
      'ipAddress': ?ipAddress,
      'netType': ?netType,
      'ports': ?ports == null ? null : pulumi.Input.encodeList<ClickHouseEnterpriseDbClusterEndpointPort, Map<String, dynamic>>(ports!, (value) => value.toMap()),
      'status': ?status,
      'vpcId': ?vpcId,
      'vpcInstanceId': ?vpcInstanceId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ClickHouseEnterpriseDbClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterEndpoint(
      computingGroupId: map['computingGroupId'] == null ? null : map['computingGroupId'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      endpointName: map['endpointName'] == null ? null : map['endpointName'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      netType: map['netType'] == null ? null : map['netType'] as String,
      ports: map['ports'] == null ? null : pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterEndpointPort>(map['ports'], (value) => ClickHouseEnterpriseDbClusterEndpointPort.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vpcInstanceId: map['vpcInstanceId'] == null ? null : map['vpcInstanceId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

