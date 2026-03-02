// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_instance_endpoint_node_item.dart';

/// {@template pulumi_rds_db_instance_endpoint_db_instance_endpoint_args_doc}
/// The set of arguments for DbInstanceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_rds_db_instance_endpoint_db_instance_endpoint_args_doc}
class DbInstanceEndpointArgs {
  /// The IP address of the internal endpoint.
  final pulumi.Input<String> connectionStringPrefix;
  /// The user-defined description of the endpoint.
  final pulumi.Input<String>? dbInstanceEndpointDescription;
  /// The ID of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// The information about the node that is configured for the endpoint.  It contains two sub-fields(node_id and weight). See `node_items` below.
  final pulumi.Input<List<DbInstanceEndpointNodeItem>> nodeItems;
  /// The port number of the internal endpoint. You can specify the port number for the internal endpoint.Valid values: 3000 to 5999.
  final pulumi.Input<String> port;
  /// The virtual private cloud (VPC) ID of the internal endpoint.
  final pulumi.Input<String> vpcId;
  /// The vSwitch ID of the internal endpoint.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [DbInstanceEndpointArgs].
  /// [connectionStringPrefix] The IP address of the internal endpoint.
  /// [dbInstanceEndpointDescription] The user-defined description of the endpoint.
  /// [dbInstanceId] The ID of the instance.
  /// [nodeItems] The information about the node that is configured for the endpoint.  It contains two sub-fields(node_id and weight). See `node_items` below.
  /// [port] The port number of the internal endpoint. You can specify the port number for the internal endpoint.Valid values: 3000 to 5999.
  /// [vpcId] The virtual private cloud (VPC) ID of the internal endpoint.
  /// [vswitchId] The vSwitch ID of the internal endpoint.
  DbInstanceEndpointArgs({
    required this.connectionStringPrefix,
    this.dbInstanceEndpointDescription,
    required this.dbInstanceId,
    required this.nodeItems,
    required this.port,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': connectionStringPrefix,
      'dbInstanceEndpointDescription': ?dbInstanceEndpointDescription,
      'dbInstanceId': dbInstanceId,
      'nodeItems': pulumi.Input.mapInputValue<List<DbInstanceEndpointNodeItem>, List<Map<String, dynamic>>>(nodeItems, (value) => pulumi.Input.encodeList<DbInstanceEndpointNodeItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': port,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory DbInstanceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DbInstanceEndpointArgs(
      connectionStringPrefix: (map['connectionStringPrefix'] as String).input(),
      dbInstanceEndpointDescription: map['dbInstanceEndpointDescription'] == null ? null : (map['dbInstanceEndpointDescription'] as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      nodeItems: (pulumi.Input.decodeList<DbInstanceEndpointNodeItem>(map['nodeItems'], (value) => DbInstanceEndpointNodeItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      port: (map['port'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

