// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_server_side_encryption/cluster_server_side_encryption.dart';

/// The set of arguments for Cluster.
class ClusterArgs2 {
  /// List of Availability Zones in which the
  /// nodes will be created
  final Input<List<String>>? availabilityZones;

  /// The type of encryption the
  /// cluster's endpoint should support. Valid values are: `NONE` and `TLS`.
  /// Default value is `NONE`.
  final Input<String>? clusterEndpointEncryptionType;

  /// Group identifier. DAX converts this name to
  /// lowercase
  final Input<String> clusterName;

  /// Description for the cluster
  final Input<String>? description;

  /// A valid Amazon Resource Name (ARN) that identifies
  /// an IAM role. At runtime, DAX will assume this role and use the role's
  /// permissions to access DynamoDB on your behalf
  final Input<String> iamRoleArn;

  /// Specifies the weekly time range for when
  /// maintenance on the cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi`
  /// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
  /// `sun:05:00-sun:09:00`
  final Input<String>? maintenanceWindow;

  /// The compute and memory capacity of the nodes. See
  /// [Nodes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes) for supported node types
  final Input<String> nodeType;

  /// An Amazon Resource Name (ARN) of an
  /// SNS topic to send DAX notifications to. Example:
  /// `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  final Input<String>? notificationTopicArn;

  /// Name of the parameter group to associate
  /// with this DAX cluster
  final Input<String>? parameterGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The number of nodes in the DAX cluster. A
  /// replication factor of 1 will create a single-node cluster, without any read
  /// replicas
  final Input<int> replicationFactor;

  /// One or more VPC security groups associated
  /// with the cluster
  final Input<List<String>>? securityGroupIds;

  /// Encrypt at rest options
  final Input<ClusterServerSideEncryption>? serverSideEncryption;

  /// Name of the subnet group to be used for the
  /// cluster
  final Input<String>? subnetGroupName;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  ClusterArgs2({
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
    final map = <String, dynamic>{};
    final availabilityZonesValue = availabilityZones;
    if (availabilityZonesValue != null) {
      map['availabilityZones'] = availabilityZonesValue;
    }
    final clusterEndpointEncryptionTypeValue = clusterEndpointEncryptionType;
    if (clusterEndpointEncryptionTypeValue != null) {
      map['clusterEndpointEncryptionType'] = clusterEndpointEncryptionTypeValue;
    }
    map['clusterName'] = clusterName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['iamRoleArn'] = iamRoleArn;
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue;
    }
    map['nodeType'] = nodeType;
    final notificationTopicArnValue = notificationTopicArn;
    if (notificationTopicArnValue != null) {
      map['notificationTopicArn'] = notificationTopicArnValue;
    }
    final parameterGroupNameValue = parameterGroupName;
    if (parameterGroupNameValue != null) {
      map['parameterGroupName'] = parameterGroupNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['replicationFactor'] = replicationFactor;
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final serverSideEncryptionValue = serverSideEncryption;
    if (serverSideEncryptionValue != null) {
      map['serverSideEncryption'] = Input.mapOptionalInputValue<
              ClusterServerSideEncryption, Map<String, dynamic>>(
          serverSideEncryptionValue, (value) => value.toMap());
    }
    final subnetGroupNameValue = subnetGroupName;
    if (subnetGroupNameValue != null) {
      map['subnetGroupName'] = subnetGroupNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ClusterArgs2.fromMap(Map<String, dynamic> map) {
    return ClusterArgs2(
      availabilityZones:
          Input.asOptionalInput<List<String>>(map['availabilityZones']),
      clusterEndpointEncryptionType:
          Input.asOptionalInput<String>(map['clusterEndpointEncryptionType']),
      clusterName: Input.asInput<String>(map['clusterName']),
      description: Input.asOptionalInput<String>(map['description']),
      iamRoleArn: Input.asInput<String>(map['iamRoleArn']),
      maintenanceWindow:
          Input.asOptionalInput<String>(map['maintenanceWindow']),
      nodeType: Input.asInput<String>(map['nodeType']),
      notificationTopicArn:
          Input.asOptionalInput<String>(map['notificationTopicArn']),
      parameterGroupName:
          Input.asOptionalInput<String>(map['parameterGroupName']),
      region: Input.asOptionalInput<String>(map['region']),
      replicationFactor: Input.asInput<int>(map['replicationFactor']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      serverSideEncryption: Input.asOptionalInput<ClusterServerSideEncryption>(
          map['serverSideEncryption']),
      subnetGroupName: Input.asOptionalInput<String>(map['subnetGroupName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
