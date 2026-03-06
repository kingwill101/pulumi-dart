// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dax_cluster_endpoint_response.dart';

/// Definition of Node
class NodeResponse {
  /// &lt;p&gt;The Availability Zone (AZ) in which the node has been deployed.&lt;/p&gt;
  final pulumi.Input<String>? availabilityZone;
  /// &lt;p&gt;The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.&lt;/p&gt;
  final pulumi.Input<DaxClusterEndpointResponse>? endpoint;
  /// &lt;p&gt;The date and time (in UNIX epoch format) when the node was launched.&lt;/p&gt;
  final pulumi.Input<String>? nodeCreateTime;
  /// &lt;p&gt;A system-generated identifier for the node.&lt;/p&gt;
  final pulumi.Input<String>? nodeId;
  /// &lt;p&gt;The current status of the node. For example: &lt;code&gt;available&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? nodeStatus;
  /// &lt;p&gt;The status of the parameter group associated with this node. For example, &lt;code&gt;in-sync&lt;/code&gt;.&lt;/p&gt;
  final pulumi.Input<String>? parameterGroupStatus;

  /// Creates a new [NodeResponse].
  /// [availabilityZone] &lt;p&gt;The Availability Zone (AZ) in which the node has been deployed.&lt;/p&gt;
  /// [endpoint] &lt;p&gt;The endpoint for the node, consisting of a DNS name and a port number. Client applications can connect directly to a node endpoint, if desired (as an alternative to allowing DAX client software to intelligently route requests and responses to nodes in the DAX cluster.&lt;/p&gt;
  /// [nodeCreateTime] &lt;p&gt;The date and time (in UNIX epoch format) when the node was launched.&lt;/p&gt;
  /// [nodeId] &lt;p&gt;A system-generated identifier for the node.&lt;/p&gt;
  /// [nodeStatus] &lt;p&gt;The current status of the node. For example: &lt;code&gt;available&lt;/code&gt;.&lt;/p&gt;
  /// [parameterGroupStatus] &lt;p&gt;The status of the parameter group associated with this node. For example, &lt;code&gt;in-sync&lt;/code&gt;.&lt;/p&gt;
  const NodeResponse({
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
      'endpoint': ?pulumi.Input.mapOptionalInputValue<DaxClusterEndpointResponse, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'nodeCreateTime': ?nodeCreateTime,
      'nodeId': ?nodeId,
      'nodeStatus': ?nodeStatus,
      'parameterGroupStatus': ?parameterGroupStatus,
    };
  }

  factory NodeResponse.fromMap(Map<String, dynamic> map) {
    return NodeResponse(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaxClusterEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nodeCreateTime: (() { final guardedValue = map['nodeCreateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeStatus: (() { final guardedValue = map['nodeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupStatus: (() { final guardedValue = map['parameterGroupStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

