// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_encryption_type_enum_value.dart';
import 'dax_cluster_endpoint.dart';
import 'dax_cluster_notification_configuration.dart';
import 'node.dart';
import 'parameter_group_status.dart';
import 'security_group_membership.dart';
import 'ssedescription.dart';

/// Definition of awsDaxCluster
class AwsDaxClusterProperties {
  /// <p>The number of nodes in the cluster that are active (i.e., capable of serving requests).</p>
  final pulumi.Input<int>? activeNodes;
  /// <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>
  final pulumi.Input<String>? clusterArn;
  /// <p>The endpoint for this DAX cluster, consisting of a DNS name, a port number, and a URL. Applications should use the URL to configure the DAX client to find their cluster.</p>
  final pulumi.Input<DaxClusterEndpoint>? clusterDiscoveryEndpoint;
  /// <p>The type of encryption supported by the cluster's endpoint. Values are:</p> <ul> <li> <p> <code>NONE</code> for no encryption</p> <p> <code>TLS</code> for Transport Layer Security</p> </li> </ul>
  final pulumi.Input<ClusterEndpointEncryptionTypeEnumValue>? clusterEndpointEncryptionType;
  /// <p>The name of the DAX cluster.</p>
  final pulumi.Input<String>? clusterName;
  /// <p>The description of the cluster.</p>
  final pulumi.Input<String>? description;
  /// <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
  final pulumi.Input<String>? iamRoleArn;
  /// <p>A list of nodes to be removed from the cluster.</p>
  final pulumi.Input<List<String>>? nodeIdsToRemove;
  /// <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>
  final pulumi.Input<String>? nodeType;
  /// <p>A list of nodes that are currently in the cluster.</p>
  final pulumi.Input<List<Node>>? nodes;
  /// <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
  final pulumi.Input<DaxClusterNotificationConfiguration>? notificationConfiguration;
  /// <p>The parameter group being used by nodes in the cluster.</p>
  final pulumi.Input<ParameterGroupStatus>? parameterGroup;
  /// <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
  final pulumi.Input<List<SecurityGroupMembership>>? securityGroups;
  /// <p>The description of the server-side encryption status on the specified DAX cluster.</p>
  final pulumi.Input<SSEDescription>? sseDescription;
  /// <p>The current status of the cluster.</p>
  final pulumi.Input<String>? status;
  /// <p>The subnet group where the DAX cluster is running.</p>
  final pulumi.Input<String>? subnetGroup;
  /// <p>The total number of nodes in the cluster.</p>
  final pulumi.Input<int>? totalNodes;

  /// Creates a new [AwsDaxClusterProperties].
  /// [activeNodes] <p>The number of nodes in the cluster that are active (i.e., capable of serving requests).</p>
  /// [clusterArn] <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>
  /// [clusterDiscoveryEndpoint] <p>The endpoint for this DAX cluster, consisting of a DNS name, a port number, and a URL. Applications should use the URL to configure the DAX client to find their cluster.</p>
  /// [clusterEndpointEncryptionType] <p>The type of encryption supported by the cluster's endpoint. Values are:</p> <ul> <li> <p> <code>NONE</code> for no encryption</p> <p> <code>TLS</code> for Transport Layer Security</p> </li> </ul>
  /// [clusterName] <p>The name of the DAX cluster.</p>
  /// [description] <p>The description of the cluster.</p>
  /// [iamRoleArn] <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
  /// [nodeIdsToRemove] <p>A list of nodes to be removed from the cluster.</p>
  /// [nodeType] <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>
  /// [nodes] <p>A list of nodes that are currently in the cluster.</p>
  /// [notificationConfiguration] <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
  /// [parameterGroup] <p>The parameter group being used by nodes in the cluster.</p>
  /// [preferredMaintenanceWindow] <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
  /// [securityGroups] <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
  /// [sseDescription] <p>The description of the server-side encryption status on the specified DAX cluster.</p>
  /// [status] <p>The current status of the cluster.</p>
  /// [subnetGroup] <p>The subnet group where the DAX cluster is running.</p>
  /// [totalNodes] <p>The total number of nodes in the cluster.</p>
  AwsDaxClusterProperties({
    this.activeNodes,
    this.clusterArn,
    this.clusterDiscoveryEndpoint,
    this.clusterEndpointEncryptionType,
    this.clusterName,
    this.description,
    this.iamRoleArn,
    this.nodeIdsToRemove,
    this.nodeType,
    this.nodes,
    this.notificationConfiguration,
    this.parameterGroup,
    this.preferredMaintenanceWindow,
    this.securityGroups,
    this.sseDescription,
    this.status,
    this.subnetGroup,
    this.totalNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeNodes': ?activeNodes,
      'clusterArn': ?clusterArn,
      'clusterDiscoveryEndpoint': ?pulumi.Input.mapOptionalInputValue<DaxClusterEndpoint, Map<String, dynamic>>(clusterDiscoveryEndpoint, (value) => value.toMap()),
      'clusterEndpointEncryptionType': ?pulumi.Input.mapOptionalInputValue<ClusterEndpointEncryptionTypeEnumValue, Map<String, dynamic>>(clusterEndpointEncryptionType, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'description': ?description,
      'iamRoleArn': ?iamRoleArn,
      'nodeIdsToRemove': ?nodeIdsToRemove,
      'nodeType': ?nodeType,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<Node>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<Node, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationConfiguration': ?pulumi.Input.mapOptionalInputValue<DaxClusterNotificationConfiguration, Map<String, dynamic>>(notificationConfiguration, (value) => value.toMap()),
      'parameterGroup': ?pulumi.Input.mapOptionalInputValue<ParameterGroupStatus, Map<String, dynamic>>(parameterGroup, (value) => value.toMap()),
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'securityGroups': ?pulumi.Input.mapOptionalInputValue<List<SecurityGroupMembership>, List<Map<String, dynamic>>>(securityGroups, (value) => pulumi.Input.encodeList<SecurityGroupMembership, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sseDescription': ?pulumi.Input.mapOptionalInputValue<SSEDescription, Map<String, dynamic>>(sseDescription, (value) => value.toMap()),
      'status': ?status,
      'subnetGroup': ?subnetGroup,
      'totalNodes': ?totalNodes,
    };
  }

  factory AwsDaxClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsDaxClusterProperties(
      activeNodes: map['activeNodes'] == null ? null : (map['activeNodes'] as int).input(),
      clusterArn: map['clusterArn'] == null ? null : (map['clusterArn'] as String).input(),
      clusterDiscoveryEndpoint: map['clusterDiscoveryEndpoint'] == null ? null : (DaxClusterEndpoint.fromMap((map['clusterDiscoveryEndpoint'] as Map).cast<String, dynamic>())).input(),
      clusterEndpointEncryptionType: map['clusterEndpointEncryptionType'] == null ? null : (ClusterEndpointEncryptionTypeEnumValue.fromMap((map['clusterEndpointEncryptionType'] as Map).cast<String, dynamic>())).input(),
      clusterName: map['clusterName'] == null ? null : (map['clusterName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      iamRoleArn: map['iamRoleArn'] == null ? null : (map['iamRoleArn'] as String).input(),
      nodeIdsToRemove: map['nodeIdsToRemove'] == null ? null : ((map['nodeIdsToRemove'] as List).cast<String>()).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      nodes: map['nodes'] == null ? null : (pulumi.Input.decodeList<Node>(map['nodes'], (value) => Node.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notificationConfiguration: map['notificationConfiguration'] == null ? null : (DaxClusterNotificationConfiguration.fromMap((map['notificationConfiguration'] as Map).cast<String, dynamic>())).input(),
      parameterGroup: map['parameterGroup'] == null ? null : (ParameterGroupStatus.fromMap((map['parameterGroup'] as Map).cast<String, dynamic>())).input(),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : (map['preferredMaintenanceWindow'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : (pulumi.Input.decodeList<SecurityGroupMembership>(map['securityGroups'], (value) => SecurityGroupMembership.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sseDescription: map['sseDescription'] == null ? null : (SSEDescription.fromMap((map['sseDescription'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subnetGroup: map['subnetGroup'] == null ? null : (map['subnetGroup'] as String).input(),
      totalNodes: map['totalNodes'] == null ? null : (map['totalNodes'] as int).input(),
    );
  }
}

