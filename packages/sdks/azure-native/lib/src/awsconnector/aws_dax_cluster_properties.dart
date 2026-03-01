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
  final int? activeNodes;
  /// <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster. </p>
  final String? clusterArn;
  /// <p>The endpoint for this DAX cluster, consisting of a DNS name, a port number, and a URL. Applications should use the URL to configure the DAX client to find their cluster.</p>
  final DaxClusterEndpoint? clusterDiscoveryEndpoint;
  /// <p>The type of encryption supported by the cluster's endpoint. Values are:</p> <ul> <li> <p> <code>NONE</code> for no encryption</p> <p> <code>TLS</code> for Transport Layer Security</p> </li> </ul>
  final ClusterEndpointEncryptionTypeEnumValue? clusterEndpointEncryptionType;
  /// <p>The name of the DAX cluster.</p>
  final String? clusterName;
  /// <p>The description of the cluster.</p>
  final String? description;
  /// <p>A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.</p>
  final String? iamRoleArn;
  /// <p>A list of nodes to be removed from the cluster.</p>
  final List<String>? nodeIdsToRemove;
  /// <p>The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)</p>
  final String? nodeType;
  /// <p>A list of nodes that are currently in the cluster.</p>
  final List<Node>? nodes;
  /// <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
  final DaxClusterNotificationConfiguration? notificationConfiguration;
  /// <p>The parameter group being used by nodes in the cluster.</p>
  final ParameterGroupStatus? parameterGroup;
  /// <p>A range of time when maintenance of DAX cluster software will be performed. For example: <code>sun:01:00-sun:09:00</code>. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.</p>
  final String? preferredMaintenanceWindow;
  /// <p>A list of security groups, and the status of each, for the nodes in the cluster.</p>
  final List<SecurityGroupMembership>? securityGroups;
  /// <p>The description of the server-side encryption status on the specified DAX cluster.</p>
  final SSEDescription? sseDescription;
  /// <p>The current status of the cluster.</p>
  final String? status;
  /// <p>The subnet group where the DAX cluster is running.</p>
  final String? subnetGroup;
  /// <p>The total number of nodes in the cluster.</p>
  final int? totalNodes;

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
      'clusterDiscoveryEndpoint': ?clusterDiscoveryEndpoint == null ? null : clusterDiscoveryEndpoint!.toMap(),
      'clusterEndpointEncryptionType': ?clusterEndpointEncryptionType == null ? null : clusterEndpointEncryptionType!.toMap(),
      'clusterName': ?clusterName,
      'description': ?description,
      'iamRoleArn': ?iamRoleArn,
      'nodeIdsToRemove': ?nodeIdsToRemove,
      'nodeType': ?nodeType,
      'nodes': ?nodes == null ? null : pulumi.Input.encodeList<Node, Map<String, dynamic>>(nodes!, (value) => value.toMap()),
      'notificationConfiguration': ?notificationConfiguration == null ? null : notificationConfiguration!.toMap(),
      'parameterGroup': ?parameterGroup == null ? null : parameterGroup!.toMap(),
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'securityGroups': ?securityGroups == null ? null : pulumi.Input.encodeList<SecurityGroupMembership, Map<String, dynamic>>(securityGroups!, (value) => value.toMap()),
      'sseDescription': ?sseDescription == null ? null : sseDescription!.toMap(),
      'status': ?status,
      'subnetGroup': ?subnetGroup,
      'totalNodes': ?totalNodes,
    };
  }

  factory AwsDaxClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsDaxClusterProperties(
      activeNodes: map['activeNodes'] == null ? null : map['activeNodes'] as int,
      clusterArn: map['clusterArn'] == null ? null : map['clusterArn'] as String,
      clusterDiscoveryEndpoint: map['clusterDiscoveryEndpoint'] == null ? null : DaxClusterEndpoint.fromMap((map['clusterDiscoveryEndpoint'] as Map).cast<String, dynamic>()),
      clusterEndpointEncryptionType: map['clusterEndpointEncryptionType'] == null ? null : ClusterEndpointEncryptionTypeEnumValue.fromMap((map['clusterEndpointEncryptionType'] as Map).cast<String, dynamic>()),
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      iamRoleArn: map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      nodeIdsToRemove: map['nodeIdsToRemove'] == null ? null : (map['nodeIdsToRemove'] as List).cast<String>(),
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      nodes: map['nodes'] == null ? null : pulumi.Input.decodeList<Node>(map['nodes'], (value) => Node.fromMap((value as Map).cast<String, dynamic>())),
      notificationConfiguration: map['notificationConfiguration'] == null ? null : DaxClusterNotificationConfiguration.fromMap((map['notificationConfiguration'] as Map).cast<String, dynamic>()),
      parameterGroup: map['parameterGroup'] == null ? null : ParameterGroupStatus.fromMap((map['parameterGroup'] as Map).cast<String, dynamic>()),
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : map['preferredMaintenanceWindow'] as String,
      securityGroups: map['securityGroups'] == null ? null : pulumi.Input.decodeList<SecurityGroupMembership>(map['securityGroups'], (value) => SecurityGroupMembership.fromMap((value as Map).cast<String, dynamic>())),
      sseDescription: map['sseDescription'] == null ? null : SSEDescription.fromMap((map['sseDescription'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      subnetGroup: map['subnetGroup'] == null ? null : map['subnetGroup'] as String,
      totalNodes: map['totalNodes'] == null ? null : map['totalNodes'] as int,
    );
  }
}

