// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dax_cluster_endpoint.dart';

/// Definition of Node
class Node {
  /// <p>The Availability Zone (AZ) in which the node has been deployed.</p>
  final pulumi.Input<String>? availabilityZone;
  /// <p>The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
  final pulumi.Input<DaxClusterEndpoint>? endpoint;
  /// <p>The date and time (in UNIX epoch format) when the node was launched.</p>
  final pulumi.Input<String>? nodeCreateTime;
  /// <p>A system-generated identifier for the node.</p>
  final pulumi.Input<String>? nodeId;
  /// <p>The current status of the node. For example: <code>available</code>.</p>
  final pulumi.Input<String>? nodeStatus;
  /// <p>The status of the parameter group associated with this node. For example, <code>in-sync</code>.</p>
  final pulumi.Input<String>? parameterGroupStatus;

  /// Creates a new [Node].
  /// [availabilityZone] <p>The Availability Zone (AZ) in which the node has been deployed.</p>
  /// [endpoint] <p>The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.</p>
  /// [nodeCreateTime] <p>The date and time (in UNIX epoch format) when the node was launched.</p>
  /// [nodeId] <p>A system-generated identifier for the node.</p>
  /// [nodeStatus] <p>The current status of the node. For example: <code>available</code>.</p>
  /// [parameterGroupStatus] <p>The status of the parameter group associated with this node. For example, <code>in-sync</code>.</p>
  Node({
    this.availabilityZone,
    this.endpoint,
    this.nodeCreateTime,
    this.nodeId,
    this.nodeStatus,
    this.parameterGroupStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<DaxClusterEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'nodeCreateTime': ?nodeCreateTime,
      'nodeId': ?nodeId,
      'nodeStatus': ?nodeStatus,
      'parameterGroupStatus': ?parameterGroupStatus,
    };
  }

  factory Node.fromMap(Map<String, dynamic> map) {
    return Node(
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (DaxClusterEndpoint.fromMap((map['endpoint']! as Map).cast<String, dynamic>())).input(),
      nodeCreateTime: map['nodeCreateTime'] == null ? null : (map['nodeCreateTime']! as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId']! as String).input(),
      nodeStatus: map['nodeStatus'] == null ? null : (map['nodeStatus']! as String).input(),
      parameterGroupStatus: map['parameterGroupStatus'] == null ? null : (map['parameterGroupStatus']! as String).input(),
    );
  }
}

