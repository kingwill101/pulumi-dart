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
  ClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<String>? clusterAddress,
    pulumi.Output<String>? clusterEndpointEncryptionType,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? configurationEndpoint,
    pulumi.Output<String>? description,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? maintenanceWindow,
    pulumi.Output<String>? nodeType,
    pulumi.Output<List<ClusterNode>>? nodes,
    pulumi.Output<String>? notificationTopicArn,
    pulumi.Output<String>? parameterGroupName,
    pulumi.Output<int>? port,
    pulumi.Output<String>? region,
    pulumi.Output<int>? replicationFactor,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<ClusterServerSideEncryption>? serverSideEncryption,
    pulumi.Output<String>? subnetGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      clusterAddress = pulumi.Input.asOptionalInput<String>(clusterAddress),
      clusterEndpointEncryptionType = pulumi.Input.asOptionalInput<String>(clusterEndpointEncryptionType),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      configurationEndpoint = pulumi.Input.asOptionalInput<String>(configurationEndpoint),
      description = pulumi.Input.asOptionalInput<String>(description),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      maintenanceWindow = pulumi.Input.asOptionalInput<String>(maintenanceWindow),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      nodes = pulumi.Input.asOptionalInput<List<ClusterNode>>(nodes),
      notificationTopicArn = pulumi.Input.asOptionalInput<String>(notificationTopicArn),
      parameterGroupName = pulumi.Input.asOptionalInput<String>(parameterGroupName),
      port = pulumi.Input.asOptionalInput<int>(port),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicationFactor = pulumi.Input.asOptionalInput<int>(replicationFactor),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      serverSideEncryption = pulumi.Input.asOptionalInput<ClusterServerSideEncryption>(serverSideEncryption),
      subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      clusterAddress: map['clusterAddress'] == null ? null : pulumi.Output.create<String>(map['clusterAddress'] as String),
      clusterEndpointEncryptionType: map['clusterEndpointEncryptionType'] == null ? null : pulumi.Output.create<String>(map['clusterEndpointEncryptionType'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      configurationEndpoint: map['configurationEndpoint'] == null ? null : pulumi.Output.create<String>(map['configurationEndpoint'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<String>(map['maintenanceWindow'] as String),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      nodes: map['nodes'] == null ? null : pulumi.Output.create<List<ClusterNode>>(pulumi.Input.decodeList<ClusterNode>(map['nodes'], (value) => ClusterNode.fromMap((value as Map).cast<String, dynamic>()))),
      notificationTopicArn: map['notificationTopicArn'] == null ? null : pulumi.Output.create<String>(map['notificationTopicArn'] as String),
      parameterGroupName: map['parameterGroupName'] == null ? null : pulumi.Output.create<String>(map['parameterGroupName'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<int>(map['port'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      replicationFactor: map['replicationFactor'] == null ? null : pulumi.Output.create<int>(map['replicationFactor'] as int),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      serverSideEncryption: map['serverSideEncryption'] == null ? null : pulumi.Output.create<ClusterServerSideEncryption>(ClusterServerSideEncryption.fromMap((map['serverSideEncryption'] as Map).cast<String, dynamic>())),
      subnetGroupName: map['subnetGroupName'] == null ? null : pulumi.Output.create<String>(map['subnetGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

