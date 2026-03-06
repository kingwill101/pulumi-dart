// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_node.dart';
import 'cluster_server_side_encryption.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// The ARN of the DAX cluster
  final pulumi.Input<String>? arn;
  /// List of Availability Zones in which the
  /// nodes will be created
  final pulumi.Input<List<String>>? availabilityZones;
  /// The DNS name of the DAX cluster without the port appended
  final pulumi.Input<String>? clusterAddress;
  /// The type of encryption the
  /// cluster's endpoint should support. Valid values are: `NONE` and `TLS`.
  /// Default value is `NONE`.
  final pulumi.Input<String>? clusterEndpointEncryptionType;
  /// Group identifier. DAX converts this name to
  /// lowercase
  final pulumi.Input<String>? clusterName;
  /// The configuration endpoint for this DAX cluster,
  /// consisting of a DNS name and a port number
  final pulumi.Input<String>? configurationEndpoint;
  /// Description for the cluster
  final pulumi.Input<String>? description;
  /// A valid Amazon Resource Name (ARN) that identifies
  /// an IAM role. At runtime, DAX will assume this role and use the role's
  /// permissions to access DynamoDB on your behalf
  final pulumi.Input<String>? iamRoleArn;
  /// Specifies the weekly time range for when
  /// maintenance on the cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi`
  /// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
  /// `sun:05:00-sun:09:00`
  final pulumi.Input<String>? maintenanceWindow;
  /// The compute and memory capacity of the nodes. See
  /// [Nodes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes) for supported node types
  final pulumi.Input<String>? nodeType;
  /// List of node objects including `id`, `address`, `port` and
  /// `availability_zone`. Referenceable e.g., as
  /// `${aws_dax_cluster.test.nodes.0.address}`
  final pulumi.Input<List<ClusterNode>>? nodes;
  /// An Amazon Resource Name (ARN) of an
  /// SNS topic to send DAX notifications to. Example:
  /// `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final pulumi.Input<String>? notificationTopicArn;
  /// Name of the parameter group to associate
  /// with this DAX cluster
  final pulumi.Input<String>? parameterGroupName;
  /// The port used by the configuration endpoint
  final pulumi.Input<int>? port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The number of nodes in the DAX cluster. A
  /// replication factor of 1 will create a single-node cluster, without any read
  /// replicas
  final pulumi.Input<int>? replicationFactor;
  /// One or more VPC security groups associated
  /// with the cluster
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Encrypt at rest options
  final pulumi.Input<ClusterServerSideEncryption>? serverSideEncryption;
  /// Name of the subnet group to be used for the
  /// cluster
  final pulumi.Input<String>? subnetGroupName;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterState].
  /// [arn] The ARN of the DAX cluster
  /// [availabilityZones] List of Availability Zones in which the
  /// [clusterAddress] The DNS name of the DAX cluster without the port appended
  /// [clusterEndpointEncryptionType] The type of encryption the
  /// [clusterName] Group identifier. DAX converts this name to
  /// [configurationEndpoint] The configuration endpoint for this DAX cluster,
  /// [description] Description for the cluster
  /// [iamRoleArn] A valid Amazon Resource Name (ARN) that identifies
  /// [maintenanceWindow] Specifies the weekly time range for when
  /// [nodeType] The compute and memory capacity of the nodes. See
  /// [nodes] List of node objects including `id`, `address`, `port` and
  /// [notificationTopicArn] An Amazon Resource Name (ARN) of an
  /// [parameterGroupName] Name of the parameter group to associate
  /// [port] The port used by the configuration endpoint
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationFactor] The number of nodes in the DAX cluster. A
  /// [securityGroupIds] One or more VPC security groups associated
  /// [serverSideEncryption] Encrypt at rest options
  /// [subnetGroupName] Name of the subnet group to be used for the
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  const ClusterState({
    this.arn,
    this.availabilityZones,
    this.clusterAddress,
    this.clusterEndpointEncryptionType,
    this.clusterName,
    this.configurationEndpoint,
    this.description,
    this.iamRoleArn,
    this.maintenanceWindow,
    this.nodeType,
    this.nodes,
    this.notificationTopicArn,
    this.parameterGroupName,
    this.port,
    this.region,
    this.replicationFactor,
    this.securityGroupIds,
    this.serverSideEncryption,
    this.subnetGroupName,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZones': ?availabilityZones,
      'clusterAddress': ?clusterAddress,
      'clusterEndpointEncryptionType': ?clusterEndpointEncryptionType,
      'clusterName': ?clusterName,
      'configurationEndpoint': ?configurationEndpoint,
      'description': ?description,
      'iamRoleArn': ?iamRoleArn,
      'maintenanceWindow': ?maintenanceWindow,
      'nodeType': ?nodeType,
      'nodes': ?pulumi.Input.mapOptionalInputValue<List<ClusterNode>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ClusterNode, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notificationTopicArn': ?notificationTopicArn,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'region': ?region,
      'replicationFactor': ?replicationFactor,
      'securityGroupIds': ?securityGroupIds,
      'serverSideEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterServerSideEncryption, Map<String, dynamic>>(serverSideEncryption, (value) => value.toMap()),
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterAddress: (() { final guardedValue = map['clusterAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterEndpointEncryptionType: (() { final guardedValue = map['clusterEndpointEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationEndpoint: (() { final guardedValue = map['configurationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: (() { final guardedValue = map['iamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterNode>(guardedValue, (value) => ClusterNode.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notificationTopicArn: (() { final guardedValue = map['notificationTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFactor: (() { final guardedValue = map['replicationFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

