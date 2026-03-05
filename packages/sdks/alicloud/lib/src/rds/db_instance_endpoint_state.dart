// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_endpoint_node_item.dart';

/// Input properties used for looking up and filtering DbInstanceEndpoint resources.
class DbInstanceEndpointState {
  /// The internal endpoint.
  final pulumi.Input<String>? connectionString;
  /// The IP address of the internal endpoint.
  final pulumi.Input<String>? connectionStringPrefix;
  /// The user-defined description of the endpoint.
  final pulumi.Input<String>? dbInstanceEndpointDescription;
  /// The Endpoint ID of the instance.
  final pulumi.Input<String>? dbInstanceEndpointId;
  /// The type of the endpoint.
  final pulumi.Input<String>? dbInstanceEndpointType;
  /// The ID of the instance.
  final pulumi.Input<String>? dbInstanceId;
  /// The type of the IP address.
  final pulumi.Input<String>? ipType;
  /// The information about the node that is configured for the endpoint.  It contains two sub-fields(node_id and weight). See `node_items` below.
  final pulumi.Input<List<DbInstanceEndpointNodeItem>>? nodeItems;
  /// The port number of the internal endpoint. You can specify the port number for the internal endpoint.Valid values: 3000 to 5999.
  final pulumi.Input<String>? port;
  /// The IP address of the internal endpoint.
  final pulumi.Input<String>? privateIpAddress;
  /// The virtual private cloud (VPC) ID of the internal endpoint.
  final pulumi.Input<String>? vpcId;
  /// The vSwitch ID of the internal endpoint.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [DbInstanceEndpointState].
  /// [connectionString] The internal endpoint.
  /// [connectionStringPrefix] The IP address of the internal endpoint.
  /// [dbInstanceEndpointDescription] The user-defined description of the endpoint.
  /// [dbInstanceEndpointId] The Endpoint ID of the instance.
  /// [dbInstanceEndpointType] The type of the endpoint.
  /// [dbInstanceId] The ID of the instance.
  /// [ipType] The type of the IP address.
  /// [nodeItems] The information about the node that is configured for the endpoint.  It contains two sub-fields(node_id and weight). See `node_items` below.
  /// [port] The port number of the internal endpoint. You can specify the port number for the internal endpoint.Valid values: 3000 to 5999.
  /// [privateIpAddress] The IP address of the internal endpoint.
  /// [vpcId] The virtual private cloud (VPC) ID of the internal endpoint.
  /// [vswitchId] The vSwitch ID of the internal endpoint.
  DbInstanceEndpointState({
    this.connectionString,
    this.connectionStringPrefix,
    this.dbInstanceEndpointDescription,
    this.dbInstanceEndpointId,
    this.dbInstanceEndpointType,
    this.dbInstanceId,
    this.ipType,
    this.nodeItems,
    this.port,
    this.privateIpAddress,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceEndpointDescription': ?dbInstanceEndpointDescription,
      'dbInstanceEndpointId': ?dbInstanceEndpointId,
      'dbInstanceEndpointType': ?dbInstanceEndpointType,
      'dbInstanceId': ?dbInstanceId,
      'ipType': ?ipType,
      'nodeItems': ?pulumi.Input.mapOptionalInputValue<List<DbInstanceEndpointNodeItem>, List<Map<String, dynamic>>>(nodeItems, (value) => pulumi.Input.encodeList<DbInstanceEndpointNodeItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory DbInstanceEndpointState.fromMap(Map<String, dynamic> map) {
    return DbInstanceEndpointState(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStringPrefix: (() { final guardedValue = map['connectionStringPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceEndpointDescription: (() { final guardedValue = map['dbInstanceEndpointDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceEndpointId: (() { final guardedValue = map['dbInstanceEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceEndpointType: (() { final guardedValue = map['dbInstanceEndpointType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipType: (() { final guardedValue = map['ipType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeItems: (() { final guardedValue = map['nodeItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbInstanceEndpointNodeItem>(guardedValue, (value) => DbInstanceEndpointNodeItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

