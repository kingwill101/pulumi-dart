// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_server_side_encryption.dart';

/// {@template pulumi_dax_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_dax_cluster_cluster_args_doc}
class ClusterArgs {
  /// List of Availability Zones in which the
  /// nodes will be created
  final pulumi.Input<List<String>>? availabilityZones;
  /// The type of encryption the
  /// cluster's endpoint should support. Valid values are: `NONE` and `TLS`.
  /// Default value is `NONE`.
  final pulumi.Input<String>? clusterEndpointEncryptionType;
  /// Group identifier. DAX converts this name to
  /// lowercase
  final pulumi.Input<String> clusterName;
  /// Description for the cluster
  final pulumi.Input<String>? description;
  /// A valid Amazon Resource Name (ARN) that identifies
  /// an IAM role. At runtime, DAX will assume this role and use the role's
  /// permissions to access DynamoDB on your behalf
  final pulumi.Input<String> iamRoleArn;
  /// Specifies the weekly time range for when
  /// maintenance on the cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi`
  /// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
  /// `sun:05:00-sun:09:00`
  final pulumi.Input<String>? maintenanceWindow;
  /// The compute and memory capacity of the nodes. See
  /// [Nodes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes) for supported node types
  final pulumi.Input<String> nodeType;
  /// An Amazon Resource Name (ARN) of an
  /// SNS topic to send DAX notifications to. Example:
  /// `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final pulumi.Input<String>? notificationTopicArn;
  /// Name of the parameter group to associate
  /// with this DAX cluster
  final pulumi.Input<String>? parameterGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The number of nodes in the DAX cluster. A
  /// replication factor of 1 will create a single-node cluster, without any read
  /// replicas
  final pulumi.Input<int> replicationFactor;
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

  /// Creates a new [ClusterArgs].
  /// [availabilityZones] List of Availability Zones in which the
  /// [clusterEndpointEncryptionType] The type of encryption the
  /// [clusterName] Group identifier. DAX converts this name to
  /// [description] Description for the cluster
  /// [iamRoleArn] A valid Amazon Resource Name (ARN) that identifies
  /// [maintenanceWindow] Specifies the weekly time range for when
  /// [nodeType] The compute and memory capacity of the nodes. See
  /// [notificationTopicArn] An Amazon Resource Name (ARN) of an
  /// [parameterGroupName] Name of the parameter group to associate
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicationFactor] The number of nodes in the DAX cluster. A
  /// [securityGroupIds] One or more VPC security groups associated
  /// [serverSideEncryption] Encrypt at rest options
  /// [subnetGroupName] Name of the subnet group to be used for the
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ClusterArgs({
    this.availabilityZones,
    this.clusterEndpointEncryptionType,
    required this.clusterName,
    this.description,
    required this.iamRoleArn,
    this.maintenanceWindow,
    required this.nodeType,
    this.notificationTopicArn,
    this.parameterGroupName,
    this.region,
    required this.replicationFactor,
    this.securityGroupIds,
    this.serverSideEncryption,
    this.subnetGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'clusterEndpointEncryptionType': ?clusterEndpointEncryptionType,
      'clusterName': clusterName,
      'description': ?description,
      'iamRoleArn': iamRoleArn,
      'maintenanceWindow': ?maintenanceWindow,
      'nodeType': nodeType,
      'notificationTopicArn': ?notificationTopicArn,
      'parameterGroupName': ?parameterGroupName,
      'region': ?region,
      'replicationFactor': replicationFactor,
      'securityGroupIds': ?securityGroupIds,
      'serverSideEncryption': ?pulumi.Input.mapOptionalInputValue<ClusterServerSideEncryption, Map<String, dynamic>>(serverSideEncryption, (value) => value.toMap()),
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterEndpointEncryptionType: (() { final guardedValue = map['clusterEndpointEncryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoleArn: pulumi.Input.fromValue(map['iamRoleArn'] as String),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      notificationTopicArn: (() { final guardedValue = map['notificationTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationFactor: pulumi.Input.fromValue(map['replicationFactor'] as int),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverSideEncryption: (() { final guardedValue = map['serverSideEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

