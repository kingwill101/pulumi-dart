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
    List<String>? availabilityZones,
    String? clusterEndpointEncryptionType,
    required String clusterName,
    String? description,
    required String iamRoleArn,
    String? maintenanceWindow,
    required String nodeType,
    String? notificationTopicArn,
    String? parameterGroupName,
    String? region,
    required int replicationFactor,
    List<String>? securityGroupIds,
    ClusterServerSideEncryption? serverSideEncryption,
    String? subnetGroupName,
    Map<String, String>? tags,
  }) : availabilityZones = pulumi.Input.asOptionalInput<List<String>>(
         availabilityZones,
       ),
       clusterEndpointEncryptionType = pulumi.Input.asOptionalInput<String>(
         clusterEndpointEncryptionType,
       ),
       clusterName = pulumi.Input.asInput<String>(clusterName),
       description = pulumi.Input.asOptionalInput<String>(description),
       iamRoleArn = pulumi.Input.asInput<String>(iamRoleArn),
       maintenanceWindow = pulumi.Input.asOptionalInput<String>(
         maintenanceWindow,
       ),
       nodeType = pulumi.Input.asInput<String>(nodeType),
       notificationTopicArn = pulumi.Input.asOptionalInput<String>(
         notificationTopicArn,
       ),
       parameterGroupName = pulumi.Input.asOptionalInput<String>(
         parameterGroupName,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       replicationFactor = pulumi.Input.asInput<int>(replicationFactor),
       securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(
         securityGroupIds,
       ),
       serverSideEncryption =
           pulumi.Input.asOptionalInput<ClusterServerSideEncryption>(
             serverSideEncryption,
           ),
       subnetGroupName = pulumi.Input.asOptionalInput<String>(subnetGroupName),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      'serverSideEncryption':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterServerSideEncryption,
            Map<String, dynamic>
          >(serverSideEncryption, (value) => value.toMap()),
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      availabilityZones: map['availabilityZones'] == null
          ? null
          : (map['availabilityZones'] as List).cast<String>(),
      clusterEndpointEncryptionType:
          map['clusterEndpointEncryptionType'] == null
          ? null
          : map['clusterEndpointEncryptionType'] as String,
      clusterName: map['clusterName'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      iamRoleArn: map['iamRoleArn'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : map['maintenanceWindow'] as String,
      nodeType: map['nodeType'] as String,
      notificationTopicArn: map['notificationTopicArn'] == null
          ? null
          : map['notificationTopicArn'] as String,
      parameterGroupName: map['parameterGroupName'] == null
          ? null
          : map['parameterGroupName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      replicationFactor: map['replicationFactor'] as int,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      serverSideEncryption: map['serverSideEncryption'] == null
          ? null
          : ClusterServerSideEncryption.fromMap(
              (map['serverSideEncryption'] as Map).cast<String, dynamic>(),
            ),
      subnetGroupName: map['subnetGroupName'] == null
          ? null
          : map['subnetGroupName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
