// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_cluster_node/get_cluster_cluster_node.dart';

/// Result data returned by getCluster.
class GetClusterRedshiftResult {
  /// Whether major version upgrades can be applied during maintenance period
  final bool allowVersionUpgrade;

  /// The value represents how the cluster is configured to use AQUA.
  final String aquaConfigurationStatus;

  /// ARN of cluster.
  final String arn;

  /// The backup retention period
  final int automatedSnapshotRetentionPeriod;

  /// Availability zone of the cluster
  final String availabilityZone;

  /// Indicates whether the cluster is able to be relocated to another availability zone.
  final bool availabilityZoneRelocationEnabled;

  /// Name of the S3 bucket where the log files are to be stored
  final String bucketName;

  /// Cluster identifier
  final String clusterIdentifier;

  /// The namespace Amazon Resource Name (ARN) of the cluster
  final String clusterNamespaceArn;

  /// Nodes in the cluster. Cluster node blocks are documented below
  final List<GetClusterClusterNode> clusterNodes;

  /// The name of the parameter group to be associated with this cluster
  final String clusterParameterGroupName;

  /// Public key for the cluster
  final String clusterPublicKey;

  /// The cluster revision number
  final String clusterRevisionNumber;

  /// The name of a cluster subnet group to be associated with this cluster
  final String clusterSubnetGroupName;

  /// Cluster type
  final String clusterType;
  final String clusterVersion;

  /// Name of the default database in the cluster
  final String databaseName;

  /// The ARN for the IAM role that was set as default for the cluster when the cluster was created.
  final String defaultIamRoleArn;

  /// Elastic IP of the cluster
  final String elasticIp;

  /// Whether cluster logging is enabled
  final bool enableLogging;

  /// Whether the cluster data is encrypted
  final bool encrypted;

  /// Cluster endpoint
  final String endpoint;

  /// Whether enhanced VPC routing is enabled
  final bool enhancedVpcRouting;

  /// IAM roles associated to the cluster
  final List<String> iamRoles;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// KMS encryption key associated to the cluster
  final String kmsKeyId;

  /// The log destination type.
  final String logDestinationType;

  /// Collection of exported log types. Log types include the connection log, user log and user activity log.
  final List<String> logExports;

  /// The name of the maintenance track for the restored cluster.
  final String maintenanceTrackName;

  /// (Optional)  The default number of days to retain a manual snapshot.
  final int manualSnapshotRetentionPeriod;

  /// Username for the master DB user
  final String masterUsername;

  /// If the cluster is a Multi-AZ deployment
  final bool multiAz;

  /// Cluster node type
  final String nodeType;

  /// Number of nodes in the cluster
  final int numberOfNodes;

  /// Port the cluster responds on
  final int port;

  /// The maintenance window
  final String preferredMaintenanceWindow;

  /// Whether the cluster is publicly accessible
  final bool publiclyAccessible;
  final String region;

  /// Folder inside the S3 bucket where the log files are stored
  final String s3KeyPrefix;

  /// Tags associated to the cluster
  final Map<String, String> tags;

  /// VPC Id associated with the cluster
  final String vpcId;

  /// The VPC security group Ids associated with the cluster
  final List<String> vpcSecurityGroupIds;

  GetClusterRedshiftResult({
    required this.allowVersionUpgrade,
    required this.aquaConfigurationStatus,
    required this.arn,
    required this.automatedSnapshotRetentionPeriod,
    required this.availabilityZone,
    required this.availabilityZoneRelocationEnabled,
    required this.bucketName,
    required this.clusterIdentifier,
    required this.clusterNamespaceArn,
    required this.clusterNodes,
    required this.clusterParameterGroupName,
    required this.clusterPublicKey,
    required this.clusterRevisionNumber,
    required this.clusterSubnetGroupName,
    required this.clusterType,
    required this.clusterVersion,
    required this.databaseName,
    required this.defaultIamRoleArn,
    required this.elasticIp,
    required this.enableLogging,
    required this.encrypted,
    required this.endpoint,
    required this.enhancedVpcRouting,
    required this.iamRoles,
    required this.id,
    required this.kmsKeyId,
    required this.logDestinationType,
    required this.logExports,
    required this.maintenanceTrackName,
    required this.manualSnapshotRetentionPeriod,
    required this.masterUsername,
    required this.multiAz,
    required this.nodeType,
    required this.numberOfNodes,
    required this.port,
    required this.preferredMaintenanceWindow,
    required this.publiclyAccessible,
    required this.region,
    required this.s3KeyPrefix,
    required this.tags,
    required this.vpcId,
    required this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowVersionUpgrade'] = allowVersionUpgrade;
    map['aquaConfigurationStatus'] = aquaConfigurationStatus;
    map['arn'] = arn;
    map['automatedSnapshotRetentionPeriod'] = automatedSnapshotRetentionPeriod;
    map['availabilityZone'] = availabilityZone;
    map['availabilityZoneRelocationEnabled'] =
        availabilityZoneRelocationEnabled;
    map['bucketName'] = bucketName;
    map['clusterIdentifier'] = clusterIdentifier;
    map['clusterNamespaceArn'] = clusterNamespaceArn;
    map['clusterNodes'] =
        pulumi.Input.encodeList<GetClusterClusterNode, Map<String, dynamic>>(
            clusterNodes, (value) => value.toMap());
    map['clusterParameterGroupName'] = clusterParameterGroupName;
    map['clusterPublicKey'] = clusterPublicKey;
    map['clusterRevisionNumber'] = clusterRevisionNumber;
    map['clusterSubnetGroupName'] = clusterSubnetGroupName;
    map['clusterType'] = clusterType;
    map['clusterVersion'] = clusterVersion;
    map['databaseName'] = databaseName;
    map['defaultIamRoleArn'] = defaultIamRoleArn;
    map['elasticIp'] = elasticIp;
    map['enableLogging'] = enableLogging;
    map['encrypted'] = encrypted;
    map['endpoint'] = endpoint;
    map['enhancedVpcRouting'] = enhancedVpcRouting;
    map['iamRoles'] = iamRoles;
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    map['logDestinationType'] = logDestinationType;
    map['logExports'] = logExports;
    map['maintenanceTrackName'] = maintenanceTrackName;
    map['manualSnapshotRetentionPeriod'] = manualSnapshotRetentionPeriod;
    map['masterUsername'] = masterUsername;
    map['multiAz'] = multiAz;
    map['nodeType'] = nodeType;
    map['numberOfNodes'] = numberOfNodes;
    map['port'] = port;
    map['preferredMaintenanceWindow'] = preferredMaintenanceWindow;
    map['publiclyAccessible'] = publiclyAccessible;
    map['region'] = region;
    map['s3KeyPrefix'] = s3KeyPrefix;
    map['tags'] = tags;
    map['vpcId'] = vpcId;
    map['vpcSecurityGroupIds'] = vpcSecurityGroupIds;
    return map;
  }

  factory GetClusterRedshiftResult.fromMap(Map<String, dynamic> map) {
    return GetClusterRedshiftResult(
      allowVersionUpgrade: map['allowVersionUpgrade'] as bool,
      aquaConfigurationStatus: map['aquaConfigurationStatus'] as String,
      arn: map['arn'] as String,
      automatedSnapshotRetentionPeriod:
          map['automatedSnapshotRetentionPeriod'] as int,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneRelocationEnabled:
          map['availabilityZoneRelocationEnabled'] as bool,
      bucketName: map['bucketName'] as String,
      clusterIdentifier: map['clusterIdentifier'] as String,
      clusterNamespaceArn: map['clusterNamespaceArn'] as String,
      clusterNodes: pulumi.Input.decodeList<GetClusterClusterNode>(
          map['clusterNodes'],
          (value) => GetClusterClusterNode.fromMap(
              (value as Map).cast<String, dynamic>())),
      clusterParameterGroupName: map['clusterParameterGroupName'] as String,
      clusterPublicKey: map['clusterPublicKey'] as String,
      clusterRevisionNumber: map['clusterRevisionNumber'] as String,
      clusterSubnetGroupName: map['clusterSubnetGroupName'] as String,
      clusterType: map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] as String,
      databaseName: map['databaseName'] as String,
      defaultIamRoleArn: map['defaultIamRoleArn'] as String,
      elasticIp: map['elasticIp'] as String,
      enableLogging: map['enableLogging'] as bool,
      encrypted: map['encrypted'] as bool,
      endpoint: map['endpoint'] as String,
      enhancedVpcRouting: map['enhancedVpcRouting'] as bool,
      iamRoles: (map['iamRoles'] as List).cast<String>(),
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      logDestinationType: map['logDestinationType'] as String,
      logExports: (map['logExports'] as List).cast<String>(),
      maintenanceTrackName: map['maintenanceTrackName'] as String,
      manualSnapshotRetentionPeriod:
          map['manualSnapshotRetentionPeriod'] as int,
      masterUsername: map['masterUsername'] as String,
      multiAz: map['multiAz'] as bool,
      nodeType: map['nodeType'] as String,
      numberOfNodes: map['numberOfNodes'] as int,
      port: map['port'] as int,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] as bool,
      region: map['region'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vpcSecurityGroupIds: (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
