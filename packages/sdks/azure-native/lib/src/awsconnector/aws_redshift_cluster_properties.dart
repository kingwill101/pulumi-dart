// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_properties.dart';
import 'redshift_cluster_endpoint.dart';
import 'tag.dart';

/// Definition of awsRedshiftCluster
class AwsRedshiftClusterProperties {
  /// Major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default value is True
  final pulumi.Input<bool>? allowVersionUpgrade;
  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values include the following.enabled - Use AQUA if it is available for the current Region and Amazon Redshift node type.disabled - Don't use AQUA.auto - Amazon Redshift determines whether to use AQUA.
  final pulumi.Input<String>? aquaConfigurationStatus;
  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Default value is 1
  final pulumi.Input<int>? automatedSnapshotRetentionPeriod;
  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint
  final pulumi.Input<String>? availabilityZone;
  /// The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.
  final pulumi.Input<bool>? availabilityZoneRelocation;
  /// The availability zone relocation status of the cluster
  final pulumi.Input<String>? availabilityZoneRelocationStatus;
  /// A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to false , the resize type is elastic.
  final pulumi.Input<bool>? classic;
  /// A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. All alphabetical characters must be lower case, no hypens at the end, no two consecutive hyphens. Cluster name should be unique for all clusters within an AWS account
  final pulumi.Input<String>? clusterIdentifier;
  /// The Amazon Resource Name (ARN) of the cluster namespace.
  final pulumi.Input<String>? clusterNamespaceArn;
  /// The name of the parameter group to be associated with this cluster.
  final pulumi.Input<String>? clusterParameterGroupName;
  /// A list of security groups to be associated with this cluster.
  final pulumi.Input<List<String>>? clusterSecurityGroups;
  /// The name of a cluster subnet group to be associated with this cluster.
  final pulumi.Input<String>? clusterSubnetGroupName;
  /// The type of the cluster. When cluster type is specified as single-node, the NumberOfNodes parameter is not required and if multi-node, the NumberOfNodes parameter is required
  final pulumi.Input<String>? clusterType;
  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.The version selected runs on all the nodes in the cluster.
  final pulumi.Input<String>? clusterVersion;
  /// The name of the first database to be created when the cluster is created. To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database.
  final pulumi.Input<String>? dbName;
  /// A boolean indicating whether to enable the deferred maintenance window.
  final pulumi.Input<bool>? deferMaintenance;
  /// An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.
  final pulumi.Input<int>? deferMaintenanceDuration;
  /// A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.
  final pulumi.Input<String>? deferMaintenanceEndTime;
  /// A unique identifier for the deferred maintenance window.
  final pulumi.Input<String>? deferMaintenanceIdentifier;
  /// A timestamp indicating the start time for the deferred maintenance window.
  final pulumi.Input<String>? deferMaintenanceStartTime;
  /// The destination AWS Region that you want to copy snapshots to. Constraints: Must be the name of a valid AWS Region. For more information, see Regions and Endpoints in the Amazon Web Services [https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region] General Reference
  final pulumi.Input<String>? destinationRegion;
  /// The Elastic IP (EIP) address for the cluster.
  final pulumi.Input<String>? elasticIp;
  /// If true, the data in the cluster is encrypted at rest.
  final pulumi.Input<bool>? encrypted;
  /// Property endpoint
  final pulumi.Input<RedshiftClusterEndpoint>? endpoint;
  /// An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide.If this option is true , enhanced VPC routing is enabled.Default: false
  final pulumi.Input<bool>? enhancedVpcRouting;
  /// Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM
  final pulumi.Input<String>? hsmClientCertificateIdentifier;
  /// Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
  final pulumi.Input<String>? hsmConfigurationIdentifier;
  /// A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 50 IAM roles in a single request
  final pulumi.Input<List<String>>? iamRoles;
  /// The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.
  final pulumi.Input<String>? kmsKeyId;
  /// Property loggingProperties
  final pulumi.Input<LoggingProperties>? loggingProperties;
  /// The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the PendingModifiedValues for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.
  final pulumi.Input<String>? maintenanceTrackName;
  /// A boolean indicating if the redshift cluster's admin user credentials is managed by Redshift or not. You can't use MasterUserPassword if ManageMasterPassword is true. If ManageMasterPassword is false or not set, Amazon Redshift uses MasterUserPassword for the admin user account's password.
  final pulumi.Input<bool>? manageMasterPassword;
  /// The number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is -1, the manual snapshot is retained indefinitely.The value must be either -1 or an integer between 1 and 3,653.
  final pulumi.Input<int>? manualSnapshotRetentionPeriod;
  /// The Amazon Resource Name (ARN) for the cluster's admin user credentials secret.
  final pulumi.Input<String>? masterPasswordSecretArn;
  /// The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin user credentials secret.
  final pulumi.Input<String>? masterPasswordSecretKmsKeyId;
  /// The password associated with the master user account for the cluster that is being created. You can't use MasterUserPassword if ManageMasterPassword is true. Password must be between 8 and 64 characters in length, should have at least one uppercase letter.Must contain at least one lowercase letter.Must contain one number.Can be any printable ASCII character.
  final pulumi.Input<String>? masterUserPassword;
  /// The user name associated with the master user account for the cluster that is being created. The user name can't be PUBLIC and first character must be a letter.
  final pulumi.Input<String>? masterUsername;
  /// A boolean indicating if the redshift cluster is multi-az or not. If you don't provide this parameter or set the value to false, the redshift cluster will be single-az.
  final pulumi.Input<bool>? multiAZ;
  /// The namespace resource policy document that will be attached to a Redshift cluster.
  final pulumi.Input<dynamic>? namespaceResourcePolicy;
  /// The node type to be provisioned for the cluster.Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge
  final pulumi.Input<String>? nodeType;
  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node.
  final pulumi.Input<int>? numberOfNodes;
  /// Property ownerAccount
  final pulumi.Input<String>? ownerAccount;
  /// The port number on which the cluster accepts incoming connections. The cluster is accessible only via the JDBC and ODBC connection strings
  final pulumi.Input<int>? port;
  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  final pulumi.Input<String>? preferredMaintenanceWindow;
  /// If true, the cluster can be accessed from a public network.
  final pulumi.Input<bool>? publiclyAccessible;
  /// The Redshift operation to be performed. Resource Action supports pause-cluster, resume-cluster, failover-primary-compute APIs
  final pulumi.Input<String>? resourceAction;
  /// The identifier of the database revision. You can retrieve this value from the response to the DescribeClusterDbRevisions request.
  final pulumi.Input<String>? revisionTarget;
  /// A boolean indicating if we want to rotate Encryption Keys.
  final pulumi.Input<bool>? rotateEncryptionKey;
  /// The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.
  final pulumi.Input<String>? snapshotClusterIdentifier;
  /// The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  final pulumi.Input<String>? snapshotCopyGrantName;
  /// Indicates whether to apply the snapshot retention period to newly copied manual snapshots instead of automated snapshots.
  final pulumi.Input<bool>? snapshotCopyManual;
  /// The number of days to retain automated snapshots in the destination region after they are copied from the source region.  Default is 7.  Constraints: Must be at least 1 and no more than 35.
  final pulumi.Input<int>? snapshotCopyRetentionPeriod;
  /// The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.
  final pulumi.Input<String>? snapshotIdentifier;
  /// The list of tags for the cluster parameter group.
  final pulumi.Input<List<Tag>>? tags;
  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [AwsRedshiftClusterProperties].
  /// [allowVersionUpgrade] Major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default value is True
  /// [aquaConfigurationStatus] The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values include the following.enabled - Use AQUA if it is available for the current Region and Amazon Redshift node type.disabled - Don't use AQUA.auto - Amazon Redshift determines whether to use AQUA.
  /// [automatedSnapshotRetentionPeriod] The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Default value is 1
  /// [availabilityZone] The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint
  /// [availabilityZoneRelocation] The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.
  /// [availabilityZoneRelocationStatus] The availability zone relocation status of the cluster
  /// [classic] A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to false , the resize type is elastic.
  /// [clusterIdentifier] A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. All alphabetical characters must be lower case, no hypens at the end, no two consecutive hyphens. Cluster name should be unique for all clusters within an AWS account
  /// [clusterNamespaceArn] The Amazon Resource Name (ARN) of the cluster namespace.
  /// [clusterParameterGroupName] The name of the parameter group to be associated with this cluster.
  /// [clusterSecurityGroups] A list of security groups to be associated with this cluster.
  /// [clusterSubnetGroupName] The name of a cluster subnet group to be associated with this cluster.
  /// [clusterType] The type of the cluster. When cluster type is specified as single-node, the NumberOfNodes parameter is not required and if multi-node, the NumberOfNodes parameter is required
  /// [clusterVersion] The version of the Amazon Redshift engine software that you want to deploy on the cluster.The version selected runs on all the nodes in the cluster.
  /// [dbName] The name of the first database to be created when the cluster is created. To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database.
  /// [deferMaintenance] A boolean indicating whether to enable the deferred maintenance window.
  /// [deferMaintenanceDuration] An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.
  /// [deferMaintenanceEndTime] A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.
  /// [deferMaintenanceIdentifier] A unique identifier for the deferred maintenance window.
  /// [deferMaintenanceStartTime] A timestamp indicating the start time for the deferred maintenance window.
  /// [destinationRegion] The destination AWS Region that you want to copy snapshots to. Constraints: Must be the name of a valid AWS Region. For more information, see Regions and Endpoints in the Amazon Web Services [https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region] General Reference
  /// [elasticIp] The Elastic IP (EIP) address for the cluster.
  /// [encrypted] If true, the data in the cluster is encrypted at rest.
  /// [endpoint] Property endpoint
  /// [enhancedVpcRouting] An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide.If this option is true , enhanced VPC routing is enabled.Default: false
  /// [hsmClientCertificateIdentifier] Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM
  /// [hsmConfigurationIdentifier] Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
  /// [iamRoles] A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 50 IAM roles in a single request
  /// [kmsKeyId] The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.
  /// [loggingProperties] Property loggingProperties
  /// [maintenanceTrackName] The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the PendingModifiedValues for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.
  /// [manageMasterPassword] A boolean indicating if the redshift cluster's admin user credentials is managed by Redshift or not. You can't use MasterUserPassword if ManageMasterPassword is true. If ManageMasterPassword is false or not set, Amazon Redshift uses MasterUserPassword for the admin user account's password.
  /// [manualSnapshotRetentionPeriod] The number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is -1, the manual snapshot is retained indefinitely.The value must be either -1 or an integer between 1 and 3,653.
  /// [masterPasswordSecretArn] The Amazon Resource Name (ARN) for the cluster's admin user credentials secret.
  /// [masterPasswordSecretKmsKeyId] The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin user credentials secret.
  /// [masterUserPassword] The password associated with the master user account for the cluster that is being created. You can't use MasterUserPassword if ManageMasterPassword is true. Password must be between 8 and 64 characters in length, should have at least one uppercase letter.Must contain at least one lowercase letter.Must contain one number.Can be any printable ASCII character.
  /// [masterUsername] The user name associated with the master user account for the cluster that is being created. The user name can't be PUBLIC and first character must be a letter.
  /// [multiAZ] A boolean indicating if the redshift cluster is multi-az or not. If you don't provide this parameter or set the value to false, the redshift cluster will be single-az.
  /// [namespaceResourcePolicy] The namespace resource policy document that will be attached to a Redshift cluster.
  /// [nodeType] The node type to be provisioned for the cluster.Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge
  /// [numberOfNodes] The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node.
  /// [ownerAccount] Property ownerAccount
  /// [port] The port number on which the cluster accepts incoming connections. The cluster is accessible only via the JDBC and ODBC connection strings
  /// [preferredMaintenanceWindow] The weekly time range (in UTC) during which automated cluster maintenance can occur.
  /// [publiclyAccessible] If true, the cluster can be accessed from a public network.
  /// [resourceAction] The Redshift operation to be performed. Resource Action supports pause-cluster, resume-cluster, failover-primary-compute APIs
  /// [revisionTarget] The identifier of the database revision. You can retrieve this value from the response to the DescribeClusterDbRevisions request.
  /// [rotateEncryptionKey] A boolean indicating if we want to rotate Encryption Keys.
  /// [snapshotClusterIdentifier] The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.
  /// [snapshotCopyGrantName] The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  /// [snapshotCopyManual] Indicates whether to apply the snapshot retention period to newly copied manual snapshots instead of automated snapshots.
  /// [snapshotCopyRetentionPeriod] The number of days to retain automated snapshots in the destination region after they are copied from the source region.  Default is 7.  Constraints: Must be at least 1 and no more than 35.
  /// [snapshotIdentifier] The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.
  /// [tags] The list of tags for the cluster parameter group.
  /// [vpcSecurityGroupIds] A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  const AwsRedshiftClusterProperties({
    this.allowVersionUpgrade,
    this.aquaConfigurationStatus,
    this.automatedSnapshotRetentionPeriod,
    this.availabilityZone,
    this.availabilityZoneRelocation,
    this.availabilityZoneRelocationStatus,
    this.classic,
    this.clusterIdentifier,
    this.clusterNamespaceArn,
    this.clusterParameterGroupName,
    this.clusterSecurityGroups,
    this.clusterSubnetGroupName,
    this.clusterType,
    this.clusterVersion,
    this.dbName,
    this.deferMaintenance,
    this.deferMaintenanceDuration,
    this.deferMaintenanceEndTime,
    this.deferMaintenanceIdentifier,
    this.deferMaintenanceStartTime,
    this.destinationRegion,
    this.elasticIp,
    this.encrypted,
    this.endpoint,
    this.enhancedVpcRouting,
    this.hsmClientCertificateIdentifier,
    this.hsmConfigurationIdentifier,
    this.iamRoles,
    this.kmsKeyId,
    this.loggingProperties,
    this.maintenanceTrackName,
    this.manageMasterPassword,
    this.manualSnapshotRetentionPeriod,
    this.masterPasswordSecretArn,
    this.masterPasswordSecretKmsKeyId,
    this.masterUserPassword,
    this.masterUsername,
    this.multiAZ,
    this.namespaceResourcePolicy,
    this.nodeType,
    this.numberOfNodes,
    this.ownerAccount,
    this.port,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.resourceAction,
    this.revisionTarget,
    this.rotateEncryptionKey,
    this.snapshotClusterIdentifier,
    this.snapshotCopyGrantName,
    this.snapshotCopyManual,
    this.snapshotCopyRetentionPeriod,
    this.snapshotIdentifier,
    this.tags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowVersionUpgrade': ?allowVersionUpgrade,
      'aquaConfigurationStatus': ?aquaConfigurationStatus,
      'automatedSnapshotRetentionPeriod': ?automatedSnapshotRetentionPeriod,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneRelocation': ?availabilityZoneRelocation,
      'availabilityZoneRelocationStatus': ?availabilityZoneRelocationStatus,
      'classic': ?classic,
      'clusterIdentifier': ?clusterIdentifier,
      'clusterNamespaceArn': ?clusterNamespaceArn,
      'clusterParameterGroupName': ?clusterParameterGroupName,
      'clusterSecurityGroups': ?clusterSecurityGroups,
      'clusterSubnetGroupName': ?clusterSubnetGroupName,
      'clusterType': ?clusterType,
      'clusterVersion': ?clusterVersion,
      'dbName': ?dbName,
      'deferMaintenance': ?deferMaintenance,
      'deferMaintenanceDuration': ?deferMaintenanceDuration,
      'deferMaintenanceEndTime': ?deferMaintenanceEndTime,
      'deferMaintenanceIdentifier': ?deferMaintenanceIdentifier,
      'deferMaintenanceStartTime': ?deferMaintenanceStartTime,
      'destinationRegion': ?destinationRegion,
      'elasticIp': ?elasticIp,
      'encrypted': ?encrypted,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<RedshiftClusterEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'hsmClientCertificateIdentifier': ?hsmClientCertificateIdentifier,
      'hsmConfigurationIdentifier': ?hsmConfigurationIdentifier,
      'iamRoles': ?iamRoles,
      'kmsKeyId': ?kmsKeyId,
      'loggingProperties': ?pulumi.Input.mapOptionalInputValue<LoggingProperties, Map<String, dynamic>>(loggingProperties, (value) => value.toMap()),
      'maintenanceTrackName': ?maintenanceTrackName,
      'manageMasterPassword': ?manageMasterPassword,
      'manualSnapshotRetentionPeriod': ?manualSnapshotRetentionPeriod,
      'masterPasswordSecretArn': ?masterPasswordSecretArn,
      'masterPasswordSecretKmsKeyId': ?masterPasswordSecretKmsKeyId,
      'masterUserPassword': ?masterUserPassword,
      'masterUsername': ?masterUsername,
      'multiAZ': ?multiAZ,
      'namespaceResourcePolicy': ?namespaceResourcePolicy,
      'nodeType': ?nodeType,
      'numberOfNodes': ?numberOfNodes,
      'ownerAccount': ?ownerAccount,
      'port': ?port,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'resourceAction': ?resourceAction,
      'revisionTarget': ?revisionTarget,
      'rotateEncryptionKey': ?rotateEncryptionKey,
      'snapshotClusterIdentifier': ?snapshotClusterIdentifier,
      'snapshotCopyGrantName': ?snapshotCopyGrantName,
      'snapshotCopyManual': ?snapshotCopyManual,
      'snapshotCopyRetentionPeriod': ?snapshotCopyRetentionPeriod,
      'snapshotIdentifier': ?snapshotIdentifier,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<Tag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<Tag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory AwsRedshiftClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsRedshiftClusterProperties(
      allowVersionUpgrade: (() { final guardedValue = map['allowVersionUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      aquaConfigurationStatus: (() { final guardedValue = map['aquaConfigurationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automatedSnapshotRetentionPeriod: (() { final guardedValue = map['automatedSnapshotRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZoneRelocation: (() { final guardedValue = map['availabilityZoneRelocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZoneRelocationStatus: (() { final guardedValue = map['availabilityZoneRelocationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      classic: (() { final guardedValue = map['classic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterIdentifier: (() { final guardedValue = map['clusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterNamespaceArn: (() { final guardedValue = map['clusterNamespaceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterParameterGroupName: (() { final guardedValue = map['clusterParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterSecurityGroups: (() { final guardedValue = map['clusterSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterSubnetGroupName: (() { final guardedValue = map['clusterSubnetGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferMaintenance: (() { final guardedValue = map['deferMaintenance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deferMaintenanceDuration: (() { final guardedValue = map['deferMaintenanceDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      deferMaintenanceEndTime: (() { final guardedValue = map['deferMaintenanceEndTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferMaintenanceIdentifier: (() { final guardedValue = map['deferMaintenanceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deferMaintenanceStartTime: (() { final guardedValue = map['deferMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationRegion: (() { final guardedValue = map['destinationRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      elasticIp: (() { final guardedValue = map['elasticIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RedshiftClusterEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enhancedVpcRouting: (() { final guardedValue = map['enhancedVpcRouting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hsmClientCertificateIdentifier: (() { final guardedValue = map['hsmClientCertificateIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hsmConfigurationIdentifier: (() { final guardedValue = map['hsmConfigurationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamRoles: (() { final guardedValue = map['iamRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingProperties: (() { final guardedValue = map['loggingProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceTrackName: (() { final guardedValue = map['maintenanceTrackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manageMasterPassword: (() { final guardedValue = map['manageMasterPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      manualSnapshotRetentionPeriod: (() { final guardedValue = map['manualSnapshotRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      masterPasswordSecretArn: (() { final guardedValue = map['masterPasswordSecretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterPasswordSecretKmsKeyId: (() { final guardedValue = map['masterPasswordSecretKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUserPassword: (() { final guardedValue = map['masterUserPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiAZ: (() { final guardedValue = map['multiAZ']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespaceResourcePolicy: (() { final guardedValue = map['namespaceResourcePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfNodes: (() { final guardedValue = map['numberOfNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ownerAccount: (() { final guardedValue = map['ownerAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceAction: (() { final guardedValue = map['resourceAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionTarget: (() { final guardedValue = map['revisionTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotateEncryptionKey: (() { final guardedValue = map['rotateEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotClusterIdentifier: (() { final guardedValue = map['snapshotClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotCopyGrantName: (() { final guardedValue = map['snapshotCopyGrantName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotCopyManual: (() { final guardedValue = map['snapshotCopyManual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      snapshotCopyRetentionPeriod: (() { final guardedValue = map['snapshotCopyRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      snapshotIdentifier: (() { final guardedValue = map['snapshotIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Tag>(guardedValue, (value) => Tag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

