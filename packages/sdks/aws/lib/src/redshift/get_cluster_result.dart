// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_node.dart';

/// Result data returned by getCluster.
class GetClusterResult {
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

  /// Creates a new [GetClusterResult].
  /// [allowVersionUpgrade] Whether major version upgrades can be applied during maintenance period
  /// [aquaConfigurationStatus] The value represents how the cluster is configured to use AQUA.
  /// [arn] ARN of cluster.
  /// [automatedSnapshotRetentionPeriod] The backup retention period
  /// [availabilityZone] Availability zone of the cluster
  /// [availabilityZoneRelocationEnabled] Indicates whether the cluster is able to be relocated to another availability zone.
  /// [bucketName] Name of the S3 bucket where the log files are to be stored
  /// [clusterIdentifier] Cluster identifier
  /// [clusterNamespaceArn] The namespace Amazon Resource Name (ARN) of the cluster
  /// [clusterNodes] Nodes in the cluster. Cluster node blocks are documented below
  /// [clusterParameterGroupName] The name of the parameter group to be associated with this cluster
  /// [clusterPublicKey] Public key for the cluster
  /// [clusterRevisionNumber] The cluster revision number
  /// [clusterSubnetGroupName] The name of a cluster subnet group to be associated with this cluster
  /// [clusterType] Cluster type
  /// [clusterVersion] Required.
  /// [databaseName] Name of the default database in the cluster
  /// [defaultIamRoleArn] The ARN for the IAM role that was set as default for the cluster when the cluster was created.
  /// [elasticIp] Elastic IP of the cluster
  /// [enableLogging] Whether cluster logging is enabled
  /// [encrypted] Whether the cluster data is encrypted
  /// [endpoint] Cluster endpoint
  /// [enhancedVpcRouting] Whether enhanced VPC routing is enabled
  /// [iamRoles] IAM roles associated to the cluster
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyId] KMS encryption key associated to the cluster
  /// [logDestinationType] The log destination type.
  /// [logExports] Collection of exported log types. Log types include the connection log, user log and user activity log.
  /// [maintenanceTrackName] The name of the maintenance track for the restored cluster.
  /// [manualSnapshotRetentionPeriod] (Optional)  The default number of days to retain a manual snapshot.
  /// [masterUsername] Username for the master DB user
  /// [multiAz] If the cluster is a Multi-AZ deployment
  /// [nodeType] Cluster node type
  /// [numberOfNodes] Number of nodes in the cluster
  /// [port] Port the cluster responds on
  /// [preferredMaintenanceWindow] The maintenance window
  /// [publiclyAccessible] Whether the cluster is publicly accessible
  /// [region] Required.
  /// [s3KeyPrefix] Folder inside the S3 bucket where the log files are stored
  /// [tags] Tags associated to the cluster
  /// [vpcId] VPC Id associated with the cluster
  /// [vpcSecurityGroupIds] The VPC security group Ids associated with the cluster
  const GetClusterResult({
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
    return <String, dynamic>{
      'allowVersionUpgrade': allowVersionUpgrade,
      'aquaConfigurationStatus': aquaConfigurationStatus,
      'arn': arn,
      'automatedSnapshotRetentionPeriod': automatedSnapshotRetentionPeriod,
      'availabilityZone': availabilityZone,
      'availabilityZoneRelocationEnabled': availabilityZoneRelocationEnabled,
      'bucketName': bucketName,
      'clusterIdentifier': clusterIdentifier,
      'clusterNamespaceArn': clusterNamespaceArn,
      'clusterNodes': pulumi.Input.encodeList<GetClusterClusterNode, Map<String, dynamic>>(clusterNodes, (value) => value.toMap()),
      'clusterParameterGroupName': clusterParameterGroupName,
      'clusterPublicKey': clusterPublicKey,
      'clusterRevisionNumber': clusterRevisionNumber,
      'clusterSubnetGroupName': clusterSubnetGroupName,
      'clusterType': clusterType,
      'clusterVersion': clusterVersion,
      'databaseName': databaseName,
      'defaultIamRoleArn': defaultIamRoleArn,
      'elasticIp': elasticIp,
      'enableLogging': enableLogging,
      'encrypted': encrypted,
      'endpoint': endpoint,
      'enhancedVpcRouting': enhancedVpcRouting,
      'iamRoles': iamRoles,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'logDestinationType': logDestinationType,
      'logExports': logExports,
      'maintenanceTrackName': maintenanceTrackName,
      'manualSnapshotRetentionPeriod': manualSnapshotRetentionPeriod,
      'masterUsername': masterUsername,
      'multiAz': multiAz,
      'nodeType': nodeType,
      'numberOfNodes': numberOfNodes,
      'port': port,
      'preferredMaintenanceWindow': preferredMaintenanceWindow,
      'publiclyAccessible': publiclyAccessible,
      'region': region,
      's3KeyPrefix': s3KeyPrefix,
      'tags': tags,
      'vpcId': vpcId,
      'vpcSecurityGroupIds': vpcSecurityGroupIds,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      allowVersionUpgrade: map['allowVersionUpgrade'] as bool,
      aquaConfigurationStatus: map['aquaConfigurationStatus'] as String,
      arn: map['arn'] as String,
      automatedSnapshotRetentionPeriod: map['automatedSnapshotRetentionPeriod'] as int,
      availabilityZone: map['availabilityZone'] as String,
      availabilityZoneRelocationEnabled: map['availabilityZoneRelocationEnabled'] as bool,
      bucketName: map['bucketName'] as String,
      clusterIdentifier: map['clusterIdentifier'] as String,
      clusterNamespaceArn: map['clusterNamespaceArn'] as String,
      clusterNodes: pulumi.Input.decodeList<GetClusterClusterNode>(map['clusterNodes']!, (value) => GetClusterClusterNode.fromMap((value as Map).cast<String, dynamic>())),
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
      manualSnapshotRetentionPeriod: map['manualSnapshotRetentionPeriod'] as int,
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

