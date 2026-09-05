// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_node.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Whether major version upgrades can be applied during maintenance period
  final bool? allowVersionUpgrade;
  /// The value represents how the cluster is configured to use AQUA.
  final String? aquaConfigurationStatus;
  /// ARN of cluster.
  final String? arn;
  /// The backup retention period
  final int? automatedSnapshotRetentionPeriod;
  /// Availability zone of the cluster
  final String? availabilityZone;
  /// Indicates whether the cluster is able to be relocated to another availability zone.
  final bool? availabilityZoneRelocationEnabled;
  /// Name of the S3 bucket where the log files are to be stored
  final String? bucketName;
  /// Cluster identifier
  final String? clusterIdentifier;
  /// Namespace ARN of the cluster
  final String? clusterNamespaceArn;
  /// Nodes in the cluster. Cluster node blocks are documented below
  final List<GetClusterClusterNode>? clusterNodes;
  /// The name of the parameter group to be associated with this cluster
  final String? clusterParameterGroupName;
  /// Public key for the cluster
  final String? clusterPublicKey;
  /// The cluster revision number
  final String? clusterRevisionNumber;
  /// The name of a cluster subnet group to be associated with this cluster
  final String? clusterSubnetGroupName;
  /// Cluster type
  final String? clusterType;
  final String? clusterVersion;
  /// Name of the default database in the cluster
  final String? databaseName;
  /// The ARN for the IAM role that was set as default for the cluster when the cluster was created.
  final String? defaultIamRoleArn;
  /// Elastic IP of the cluster
  final String? elasticIp;
  /// Whether cluster logging is enabled
  final bool? enableLogging;
  /// Whether the cluster data is encrypted
  final bool? encrypted;
  /// Cluster endpoint
  final String? endpoint;
  /// Whether enhanced VPC routing is enabled
  final bool? enhancedVpcRouting;
  /// IAM roles associated to the cluster
  final List<String>? iamRoles;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// KMS encryption key associated to the cluster
  final String? kmsKeyId;
  /// The log destination type.
  final String? logDestinationType;
  /// Collection of exported log types. Log types include the connection log, user log and user activity log.
  final List<String>? logExports;
  /// The name of the maintenance track for the restored cluster.
  final String? maintenanceTrackName;
  /// (Optional)  The default number of days to retain a manual snapshot.
  final int? manualSnapshotRetentionPeriod;
  /// Username for the master DB user
  final String? masterUsername;
  /// If the cluster is a Multi-AZ deployment
  final bool? multiAz;
  /// Cluster node type
  final String? nodeType;
  /// Number of nodes in the cluster
  final int? numberOfNodes;
  /// Port the cluster responds on
  final int? port;
  /// The maintenance window
  final String? preferredMaintenanceWindow;
  /// Whether the cluster is publicly accessible
  final bool? publiclyAccessible;
  final String? region;
  /// Folder inside the S3 bucket where the log files are stored
  final String? s3KeyPrefix;
  /// Tags associated to the cluster
  final Map<String, String>? tags;
  /// VPC Id associated with the cluster
  final String? vpcId;
  /// The VPC security group Ids associated with the cluster
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [GetClusterResult].
  /// [allowVersionUpgrade] Whether major version upgrades can be applied during maintenance period
  /// [aquaConfigurationStatus] The value represents how the cluster is configured to use AQUA.
  /// [arn] ARN of cluster.
  /// [automatedSnapshotRetentionPeriod] The backup retention period
  /// [availabilityZone] Availability zone of the cluster
  /// [availabilityZoneRelocationEnabled] Indicates whether the cluster is able to be relocated to another availability zone.
  /// [bucketName] Name of the S3 bucket where the log files are to be stored
  /// [clusterIdentifier] Cluster identifier
  /// [clusterNamespaceArn] Namespace ARN of the cluster
  /// [clusterNodes] Nodes in the cluster. Cluster node blocks are documented below
  /// [clusterParameterGroupName] The name of the parameter group to be associated with this cluster
  /// [clusterPublicKey] Public key for the cluster
  /// [clusterRevisionNumber] The cluster revision number
  /// [clusterSubnetGroupName] The name of a cluster subnet group to be associated with this cluster
  /// [clusterType] Cluster type
  /// [clusterVersion] Optional.
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
  /// [region] Optional.
  /// [s3KeyPrefix] Folder inside the S3 bucket where the log files are stored
  /// [tags] Tags associated to the cluster
  /// [vpcId] VPC Id associated with the cluster
  /// [vpcSecurityGroupIds] The VPC security group Ids associated with the cluster
  const GetClusterResult({
    this.allowVersionUpgrade,
    this.aquaConfigurationStatus,
    this.arn,
    this.automatedSnapshotRetentionPeriod,
    this.availabilityZone,
    this.availabilityZoneRelocationEnabled,
    this.bucketName,
    this.clusterIdentifier,
    this.clusterNamespaceArn,
    this.clusterNodes,
    this.clusterParameterGroupName,
    this.clusterPublicKey,
    this.clusterRevisionNumber,
    this.clusterSubnetGroupName,
    this.clusterType,
    this.clusterVersion,
    this.databaseName,
    this.defaultIamRoleArn,
    this.elasticIp,
    this.enableLogging,
    this.encrypted,
    this.endpoint,
    this.enhancedVpcRouting,
    this.iamRoles,
    this.id,
    this.kmsKeyId,
    this.logDestinationType,
    this.logExports,
    this.maintenanceTrackName,
    this.manualSnapshotRetentionPeriod,
    this.masterUsername,
    this.multiAz,
    this.nodeType,
    this.numberOfNodes,
    this.port,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.s3KeyPrefix,
    this.tags,
    this.vpcId,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVersionUpgrade': ?allowVersionUpgrade,
      'aquaConfigurationStatus': ?aquaConfigurationStatus,
      'arn': ?arn,
      'automatedSnapshotRetentionPeriod': ?automatedSnapshotRetentionPeriod,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneRelocationEnabled': ?availabilityZoneRelocationEnabled,
      'bucketName': ?bucketName,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterNamespaceArn': ?clusterNamespaceArn,
      'clusterNodes': ?(() { final guardedValue = clusterNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterClusterNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterParameterGroupName': ?clusterParameterGroupName,
      'clusterPublicKey': ?clusterPublicKey,
      'clusterRevisionNumber': ?clusterRevisionNumber,
      'clusterSubnetGroupName': ?clusterSubnetGroupName,
      'clusterType': ?clusterType,
      'clusterVersion': ?clusterVersion,
      'databaseName': ?databaseName,
      'defaultIamRoleArn': ?defaultIamRoleArn,
      'elasticIp': ?elasticIp,
      'enableLogging': ?enableLogging,
      'encrypted': ?encrypted,
      'endpoint': ?endpoint,
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'iamRoles': ?iamRoles,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'logDestinationType': ?logDestinationType,
      'logExports': ?logExports,
      'maintenanceTrackName': ?maintenanceTrackName,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'masterUsername': ?masterUsername,
      'multiAz': ?multiAz,
      'nodeType': ?nodeType,
      'numberOfNodes': ?numberOfNodes,
      'port': ?port,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      's3KeyPrefix': ?s3KeyPrefix,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      allowVersionUpgrade: (() { final guardedValue = map['allowVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      aquaConfigurationStatus: (() { final guardedValue = map['aquaConfigurationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      automatedSnapshotRetentionPeriod: (() { final guardedValue = map['automatedSnapshotRetentionPeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneRelocationEnabled: (() { final guardedValue = map['availabilityZoneRelocationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterNamespaceArn: (() { final guardedValue = map['clusterNamespaceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterNodes: (() { final guardedValue = map['clusterNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterClusterNode>(guardedValue, (value) => GetClusterClusterNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterParameterGroupName: (() { final guardedValue = map['clusterParameterGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterPublicKey: (() { final guardedValue = map['clusterPublicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterRevisionNumber: (() { final guardedValue = map['clusterRevisionNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterSubnetGroupName: (() { final guardedValue = map['clusterSubnetGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultIamRoleArn: (() { final guardedValue = map['defaultIamRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticIp: (() { final guardedValue = map['elasticIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enhancedVpcRouting: (() { final guardedValue = map['enhancedVpcRouting']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logDestinationType: (() { final guardedValue = map['logDestinationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logExports: (() { final guardedValue = map['logExports']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maintenanceTrackName: (() { final guardedValue = map['maintenanceTrackName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      manualSnapshotRetentionPeriod: (() { final guardedValue = map['manualSnapshotRetentionPeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiAz: (() { final guardedValue = map['multiAz']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numberOfNodes: (() { final guardedValue = map['numberOfNodes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
