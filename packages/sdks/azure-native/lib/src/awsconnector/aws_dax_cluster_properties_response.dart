// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_endpoint_encryption_type_enum_value_response.dart';
import 'dax_cluster_endpoint_response.dart';
import 'dax_cluster_notification_configuration_response.dart';
import 'node_response.dart';
import 'parameter_group_status_response.dart';
import 'security_group_membership_response.dart';
import 'ssedescription_response.dart';

/// Definition of awsDaxCluster
class AwsDaxClusterPropertiesResponse {
  /// &lt;p&gt;The number of nodes in the cluster that are active (i.e., capable of serving requests).&lt;/p&gt;
  final pulumi.Input<int>? activeNodes;
  /// &lt;p&gt;The Amazon Resource Name (ARN) that uniquely identifies the cluster. &lt;/p&gt;
  final pulumi.Input<String>? clusterArn;
  /// &lt;p&gt;The endpoint for this DAX cluster, consisting of a DNS name, a port number, and a URL. Applications should use the URL to configure the DAX client to find their cluster.&lt;/p&gt;
  final pulumi.Input<DaxClusterEndpointResponse>? clusterDiscoveryEndpoint;
  /// &lt;p&gt;The type of encryption supported by the cluster's endpoint. Values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;NONE&lt;/code&gt; for no encryption&lt;/p&gt; &lt;p&gt; &lt;code&gt;TLS&lt;/code&gt; for Transport Layer Security&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<ClusterEndpointEncryptionTypeEnumValueResponse>? clusterEndpointEncryptionType;
  /// &lt;p&gt;The name of the DAX cluster.&lt;/p&gt;
  final pulumi.Input<String>? clusterName;
  /// &lt;p&gt;The description of the cluster.&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.&lt;/p&gt;
  final pulumi.Input<String>? iamRoleArn;
  /// &lt;p&gt;A list of nodes to be removed from the cluster.&lt;/p&gt;
  final pulumi.Input<List<String>>? nodeIdsToRemove;
  /// &lt;p&gt;The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)&lt;/p&gt;
  final pulumi.Input<String>? nodeType;
  /// &lt;p&gt;A list of nodes that are currently in the cluster.&lt;/p&gt;
  final pulumi.Input<List<NodeResponse>>? nodes;
  /// &lt;p&gt;Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).&lt;/p&gt;
  final pulumi.Input<DaxClusterNotificationConfigurationResponse>? notificationConfiguration;
  /// &lt;p&gt;The parameter group being used by nodes in the cluster.&lt;/p&gt;
  final pulumi.Input<ParameterGroupStatusResponse>? parameterGroup;
  /// &lt;p&gt;A range of time when maintenance of DAX cluster software will be performed. For example: &lt;code&gt;sun:01:00-sun:09:00&lt;/code&gt;. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.&lt;/p&gt;
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// &lt;p&gt;A list of security groups, and the status of each, for the nodes in the cluster.&lt;/p&gt;
  final pulumi.Input<List<SecurityGroupMembershipResponse>>? securityGroups;
  /// &lt;p&gt;The description of the server-side encryption status on the specified DAX cluster.&lt;/p&gt;
  final pulumi.Input<SSEDescriptionResponse>? sseDescription;
  /// &lt;p&gt;The current status of the cluster.&lt;/p&gt;
  final pulumi.Input<String>? status;
  /// &lt;p&gt;The subnet group where the DAX cluster is running.&lt;/p&gt;
  final pulumi.Input<String>? subnetGroup;
  /// &lt;p&gt;The total number of nodes in the cluster.&lt;/p&gt;
  final pulumi.Input<int>? totalNodes;

  /// Creates a new [AwsDaxClusterPropertiesResponse].
  /// [activeNodes] &lt;p&gt;The number of nodes in the cluster that are active (i.e., capable of serving requests).&lt;/p&gt;
  /// [clusterArn] &lt;p&gt;The Amazon Resource Name (ARN) that uniquely identifies the cluster. &lt;/p&gt;
  /// [clusterDiscoveryEndpoint] &lt;p&gt;The endpoint for this DAX cluster, consisting of a DNS name, a port number, and a URL. Applications should use the URL to configure the DAX client to find their cluster.&lt;/p&gt;
  /// [clusterEndpointEncryptionType] &lt;p&gt;The type of encryption supported by the cluster's endpoint. Values are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;NONE&lt;/code&gt; for no encryption&lt;/p&gt; &lt;p&gt; &lt;code&gt;TLS&lt;/code&gt; for Transport Layer Security&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  /// [clusterName] &lt;p&gt;The name of the DAX cluster.&lt;/p&gt;
  /// [description] &lt;p&gt;The description of the cluster.&lt;/p&gt;
  /// [iamRoleArn] &lt;p&gt;A valid Amazon Resource Name (ARN) that identifies an IAM role. At runtime, DAX will assume this role and use the role's permissions to access DynamoDB on your behalf.&lt;/p&gt;
  /// [nodeIdsToRemove] &lt;p&gt;A list of nodes to be removed from the cluster.&lt;/p&gt;
  /// [nodeType] &lt;p&gt;The node type for the nodes in the cluster. (All nodes in a DAX cluster are of the same type.)&lt;/p&gt;
  /// [nodes] &lt;p&gt;A list of nodes that are currently in the cluster.&lt;/p&gt;
  /// [notificationConfiguration] &lt;p&gt;Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).&lt;/p&gt;
  /// [parameterGroup] &lt;p&gt;The parameter group being used by nodes in the cluster.&lt;/p&gt;
  /// [preferredMaintenanceWindow] &lt;p&gt;A range of time when maintenance of DAX cluster software will be performed. For example: &lt;code&gt;sun:01:00-sun:09:00&lt;/code&gt;. Cluster maintenance normally takes less than 30 minutes, and is performed automatically within the maintenance window.&lt;/p&gt;
  /// [securityGroups] &lt;p&gt;A list of security groups, and the status of each, for the nodes in the cluster.&lt;/p&gt;
  /// [sseDescription] &lt;p&gt;The description of the server-side encryption status on the specified DAX cluster.&lt;/p&gt;
  /// [status] &lt;p&gt;The current status of the cluster.&lt;/p&gt;
  /// [subnetGroup] &lt;p&gt;The subnet group where the DAX cluster is running.&lt;/p&gt;
  /// [totalNodes] &lt;p&gt;The total number of nodes in the cluster.&lt;/p&gt;
  const AwsDaxClusterPropertiesResponse({
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
      'clusterDiscoveryEndpoint': ?pulumi.Input.mapOptionalInputValue<DaxClusterEndpointResponse, Map<String, dynamic>>(clusterDiscoveryEndpoint, (value) => value.toMap()),
      'clusterEndpointEncryptionType': ?pulumi.Input.mapOptionalInputValue<ClusterEndpointEncryptionTypeEnumValueResponse, Map<String, dynamic>>(clusterEndpointEncryptionType, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'description': ?description,
      'iamRoleArn': ?iamRoleArn,
      'nodeIdsToRemove': ?nodeIdsToRemove,
      'nodeType': ?nodeType,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<NodeResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<NodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationConfiguration': ?pulumi.Input.mapOptionalInputValue<DaxClusterNotificationConfigurationResponse, Map<String, dynamic>>(notificationConfiguration, (value) => value.toMap()),
      'parameterGroup': ?pulumi.Input.mapOptionalInputValue<ParameterGroupStatusResponse, Map<String, dynamic>>(parameterGroup, (value) => value.toMap()),
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'securityGroups': ?pulumi.Input.mapOptionalInputValue<List<SecurityGroupMembershipResponse>, List<Map<String, dynamic>>>(securityGroups, (value) => pulumi.Input.encodeList<SecurityGroupMembershipResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sseDescription': ?pulumi.Input.mapOptionalInputValue<SSEDescriptionResponse, Map<String, dynamic>>(sseDescription, (value) => value.toMap()),
      'status': ?status,
      'subnetGroup': ?subnetGroup,
      'totalNodes': ?totalNodes,
    };
  }

  factory AwsDaxClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsDaxClusterPropertiesResponse(
      activeNodes: (() { final guardedValue = map['activeNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterDiscoveryEndpoint: (() { final guardedValue = map['clusterDiscoveryEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaxClusterEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterEndpointEncryptionType: (() { final guardedValue = map['clusterEndpointEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterEndpointEncryptionTypeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeIdsToRemove: (() { final guardedValue = map['nodeIdsToRemove']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeResponse>(guardedValue, (value) => NodeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationConfiguration: (() { final guardedValue = map['notificationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DaxClusterNotificationConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterGroup: (() { final guardedValue = map['parameterGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParameterGroupStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityGroupMembershipResponse>(guardedValue, (value) => SecurityGroupMembershipResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sseDescription: (() { final guardedValue = map['sseDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SSEDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetGroup: (() { final guardedValue = map['subnetGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalNodes: (() { final guardedValue = map['totalNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
