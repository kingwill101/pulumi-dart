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
      'ports':
          ?pulumi.Input.mapOptionalInputValue<
            List<ClickHouseEnterpriseDbClusterEndpointPort>,
            List<Map<String, dynamic>>
          >(
            ports,
            (value) =>
                pulumi.Input.encodeList<
                  ClickHouseEnterpriseDbClusterEndpointPort,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': ?status,
      'vpcId': ?vpcId,
      'vpcInstanceId': ?vpcInstanceId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ClickHouseEnterpriseDbClusterEndpoint.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClickHouseEnterpriseDbClusterEndpoint(
      computingGroupId: (() {
        final guardedValue = map['computingGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointName: (() {
        final guardedValue = map['endpointName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netType: (() {
        final guardedValue = map['netType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ports: (() {
        final guardedValue = map['ports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ClickHouseEnterpriseDbClusterEndpointPort>(
            guardedValue,
            (value) => ClickHouseEnterpriseDbClusterEndpointPort.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcInstanceId: (() {
        final guardedValue = map['vpcInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
