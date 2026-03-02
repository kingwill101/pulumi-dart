// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'click_house_enterprise_db_cluster_endpoint_port.dart';

class ClickHouseEnterpriseDbClusterEndpoint {
  /// The computing group ID.
  final pulumi.Input<String>? computingGroupId;
  /// The instance connection string.
  final pulumi.Input<String>? connectionString;
  /// The endpoint name.
  final pulumi.Input<String>? endpointName;
  /// The IP address.
  final pulumi.Input<String>? ipAddress;
  /// The network type of the connection string.
  final pulumi.Input<String>? netType;
  /// A list of port details.
  final pulumi.Input<List<ClickHouseEnterpriseDbClusterEndpointPort>>? ports;
  /// The instance status.
  final pulumi.Input<String>? status;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The VPC instance ID.
  final pulumi.Input<String>? vpcInstanceId;
  /// vSwitch ID.
  final pulumi.Input<String>? vswitchId;

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
      'ports': ?pulumi.Input.mapOptionalInputValue<List<ClickHouseEnterpriseDbClusterEndpointPort>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<ClickHouseEnterpriseDbClusterEndpointPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'vpcId': ?vpcId,
      'vpcInstanceId': ?vpcInstanceId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ClickHouseEnterpriseDbClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return ClickHouseEnterpriseDbClusterEndpoint(
      computingGroupId: map['computingGroupId'] == null ? null : (map['computingGroupId'] as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString'] as String).input(),
      endpointName: map['endpointName'] == null ? null : (map['endpointName'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      netType: map['netType'] == null ? null : (map['netType'] as String).input(),
      ports: map['ports'] == null ? null : (pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterEndpointPort>(map['ports'], (value) => ClickHouseEnterpriseDbClusterEndpointPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vpcInstanceId: map['vpcInstanceId'] == null ? null : (map['vpcInstanceId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

