// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_properties_response.dart';
import 'redshift_cluster_endpoint_response.dart';
import 'tag_response.dart';

/// Definition of awsRedshiftCluster
class AwsRedshiftClusterPropertiesResponse {
  /// Major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default value is True
  final bool? allowVersionUpgrade;
  /// The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values include the following.enabled - Use AQUA if it is available for the current Region and Amazon Redshift node type.disabled - Don't use AQUA.auto - Amazon Redshift determines whether to use AQUA.
  final String? aquaConfigurationStatus;
  /// The number of days that automated snapshots are retained. If the value is 0, automated snapshots are disabled. Default value is 1
  final int? automatedSnapshotRetentionPeriod;
  /// The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the cluster. Default: A random, system-chosen Availability Zone in the region that is specified by the endpoint
  final String? availabilityZone;
  /// The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.
  final bool? availabilityZoneRelocation;
  /// The availability zone relocation status of the cluster
  final String? availabilityZoneRelocationStatus;
  /// A boolean value indicating whether the resize operation is using the classic resize process. If you don't provide this parameter or set the value to false , the resize type is elastic.
  final bool? classic;
  /// A unique identifier for the cluster. You use this identifier to refer to the cluster for any subsequent cluster operations such as deleting or modifying. All alphabetical characters must be lower case, no hypens at the end, no two consecutive hyphens. Cluster name should be unique for all clusters within an AWS account
  final String? clusterIdentifier;
  /// The Amazon Resource Name (ARN) of the cluster namespace.
  final String? clusterNamespaceArn;
  /// The name of the parameter group to be associated with this cluster.
  final String? clusterParameterGroupName;
  /// A list of security groups to be associated with this cluster.
  final List<String>? clusterSecurityGroups;
  /// The name of a cluster subnet group to be associated with this cluster.
  final String? clusterSubnetGroupName;
  /// The type of the cluster. When cluster type is specified as single-node, the NumberOfNodes parameter is not required and if multi-node, the NumberOfNodes parameter is required
  final String? clusterType;
  /// The version of the Amazon Redshift engine software that you want to deploy on the cluster.The version selected runs on all the nodes in the cluster.
  final String? clusterVersion;
  /// The name of the first database to be created when the cluster is created. To create additional databases after the cluster is created, connect to the cluster with a SQL client and use SQL commands to create a database.
  final String? dbName;
  /// A boolean indicating whether to enable the deferred maintenance window.
  final bool? deferMaintenance;
  /// An integer indicating the duration of the maintenance window in days. If you specify a duration, you can't specify an end time. The duration must be 45 days or less.
  final int? deferMaintenanceDuration;
  /// A timestamp indicating end time for the deferred maintenance window. If you specify an end time, you can't specify a duration.
  final String? deferMaintenanceEndTime;
  /// A unique identifier for the deferred maintenance window.
  final String? deferMaintenanceIdentifier;
  /// A timestamp indicating the start time for the deferred maintenance window.
  final String? deferMaintenanceStartTime;
  /// The destination AWS Region that you want to copy snapshots to. Constraints: Must be the name of a valid AWS Region. For more information, see Regions and Endpoints in the Amazon Web Services [https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region] General Reference
  final String? destinationRegion;
  /// The Elastic IP (EIP) address for the cluster.
  final String? elasticIp;
  /// If true, the data in the cluster is encrypted at rest.
  final bool? encrypted;
  /// Property endpoint
  final RedshiftClusterEndpointResponse? endpoint;
  /// An option that specifies whether to create the cluster with enhanced VPC routing enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a VPC. For more information, see Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide.If this option is true , enhanced VPC routing is enabled.Default: false
  final bool? enhancedVpcRouting;
  /// Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to retrieve the data encryption keys stored in an HSM
  final String? hsmClientCertificateIdentifier;
  /// Specifies the name of the HSM configuration that contains the information the Amazon Redshift cluster can use to retrieve and store keys in an HSM.
  final String? hsmConfigurationIdentifier;
  /// A list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services. You must supply the IAM roles in their Amazon Resource Name (ARN) format. You can supply up to 50 IAM roles in a single request
  final List<String>? iamRoles;
  /// The AWS Key Management Service (KMS) key ID of the encryption key that you want to use to encrypt data in the cluster.
  final String? kmsKeyId;
  /// Property loggingProperties
  final LoggingPropertiesResponse? loggingProperties;
  /// The name for the maintenance track that you want to assign for the cluster. This name change is asynchronous. The new track name stays in the PendingModifiedValues for the cluster until the next maintenance window. When the maintenance track changes, the cluster is switched to the latest cluster release available for the maintenance track. At this point, the maintenance track name is applied.
  final String? maintenanceTrackName;
  /// A boolean indicating if the redshift cluster's admin user credentials is managed by Redshift or not. You can't use MasterUserPassword if ManageMasterPassword is true. If ManageMasterPassword is false or not set, Amazon Redshift uses MasterUserPassword for the admin user account's password.
  final bool? manageMasterPassword;
  /// The number of days to retain newly copied snapshots in the destination AWS Region after they are copied from the source AWS Region. If the value is -1, the manual snapshot is retained indefinitely.The value must be either -1 or an integer between 1 and 3,653.
  final int? manualSnapshotRetentionPeriod;
  /// The Amazon Resource Name (ARN) for the cluster's admin user credentials secret.
  final String? masterPasswordSecretArn;
  /// The ID of the Key Management Service (KMS) key used to encrypt and store the cluster's admin user credentials secret.
  final String? masterPasswordSecretKmsKeyId;
  /// The password associated with the master user account for the cluster that is being created. You can't use MasterUserPassword if ManageMasterPassword is true. Password must be between 8 and 64 characters in length, should have at least one uppercase letter.Must contain at least one lowercase letter.Must contain one number.Can be any printable ASCII character.
  final String? masterUserPassword;
  /// The user name associated with the master user account for the cluster that is being created. The user name can't be PUBLIC and first character must be a letter.
  final String? masterUsername;
  /// A boolean indicating if the redshift cluster is multi-az or not. If you don't provide this parameter or set the value to false, the redshift cluster will be single-az.
  final bool? multiAZ;
  /// The namespace resource policy document that will be attached to a Redshift cluster.
  final dynamic namespaceResourcePolicy;
  /// The node type to be provisioned for the cluster.Valid Values: ds2.xlarge | ds2.8xlarge | dc1.large | dc1.8xlarge | dc2.large | dc2.8xlarge | ra3.4xlarge | ra3.16xlarge
  final String? nodeType;
  /// The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node.
  final int? numberOfNodes;
  /// Property ownerAccount
  final String? ownerAccount;
  /// The port number on which the cluster accepts incoming connections. The cluster is accessible only via the JDBC and ODBC connection strings
  final int? port;
  /// The weekly time range (in UTC) during which automated cluster maintenance can occur.
  final String? preferredMaintenanceWindow;
  /// If true, the cluster can be accessed from a public network.
  final bool? publiclyAccessible;
  /// The Redshift operation to be performed. Resource Action supports pause-cluster, resume-cluster, failover-primary-compute APIs
  final String? resourceAction;
  /// The identifier of the database revision. You can retrieve this value from the response to the DescribeClusterDbRevisions request.
  final String? revisionTarget;
  /// A boolean indicating if we want to rotate Encryption Keys.
  final bool? rotateEncryptionKey;
  /// The name of the cluster the source snapshot was created from. This parameter is required if your IAM user has a policy containing a snapshot resource element that specifies anything other than * for the cluster name.
  final String? snapshotClusterIdentifier;
  /// The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.
  final String? snapshotCopyGrantName;
  /// Indicates whether to apply the snapshot retention period to newly copied manual snapshots instead of automated snapshots.
  final bool? snapshotCopyManual;
  /// The number of days to retain automated snapshots in the destination region after they are copied from the source region.  Default is 7.  Constraints: Must be at least 1 and no more than 35.
  final int? snapshotCopyRetentionPeriod;
  /// The name of the snapshot from which to create the new cluster. This parameter isn't case sensitive.
  final String? snapshotIdentifier;
  /// The list of tags for the cluster parameter group.
  final List<TagResponse>? tags;
  /// A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster.
  final List<String>? vpcSecurityGroupIds;

  /// Creates a new [AwsRedshiftClusterPropertiesResponse].
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
  AwsRedshiftClusterPropertiesResponse({
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
      'endpoint': ?endpoint == null ? null : endpoint!.toMap(),
      'enhancedVpcRouting': ?enhancedVpcRouting,
      'hsmClientCertificateIdentifier': ?hsmClientCertificateIdentifier,
      'hsmConfigurationIdentifier': ?hsmConfigurationIdentifier,
      'iamRoles': ?iamRoles,
      'kmsKeyId': ?kmsKeyId,
      'loggingProperties': ?loggingProperties == null ? null : loggingProperties!.toMap(),
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
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory AwsRedshiftClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsRedshiftClusterPropertiesResponse(
      allowVersionUpgrade: map['allowVersionUpgrade'] == null ? null : map['allowVersionUpgrade'] as bool,
      aquaConfigurationStatus: map['aquaConfigurationStatus'] == null ? null : map['aquaConfigurationStatus'] as String,
      automatedSnapshotRetentionPeriod: map['automatedSnapshotRetentionPeriod'] == null ? null : map['automatedSnapshotRetentionPeriod'] as int,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      availabilityZoneRelocation: map['availabilityZoneRelocation'] == null ? null : map['availabilityZoneRelocation'] as bool,
      availabilityZoneRelocationStatus: map['availabilityZoneRelocationStatus'] == null ? null : map['availabilityZoneRelocationStatus'] as String,
      classic: map['classic'] == null ? null : map['classic'] as bool,
      clusterIdentifier: map['clusterIdentifier'] == null ? null : map['clusterIdentifier'] as String,
      clusterNamespaceArn: map['clusterNamespaceArn'] == null ? null : map['clusterNamespaceArn'] as String,
      clusterParameterGroupName: map['clusterParameterGroupName'] == null ? null : map['clusterParameterGroupName'] as String,
      clusterSecurityGroups: map['clusterSecurityGroups'] == null ? null : (map['clusterSecurityGroups'] as List).cast<String>(),
      clusterSubnetGroupName: map['clusterSubnetGroupName'] == null ? null : map['clusterSubnetGroupName'] as String,
      clusterType: map['clusterType'] == null ? null : map['clusterType'] as String,
      clusterVersion: map['clusterVersion'] == null ? null : map['clusterVersion'] as String,
      dbName: map['dbName'] == null ? null : map['dbName'] as String,
      deferMaintenance: map['deferMaintenance'] == null ? null : map['deferMaintenance'] as bool,
      deferMaintenanceDuration: map['deferMaintenanceDuration'] == null ? null : map['deferMaintenanceDuration'] as int,
      deferMaintenanceEndTime: map['deferMaintenanceEndTime'] == null ? null : map['deferMaintenanceEndTime'] as String,
      deferMaintenanceIdentifier: map['deferMaintenanceIdentifier'] == null ? null : map['deferMaintenanceIdentifier'] as String,
      deferMaintenanceStartTime: map['deferMaintenanceStartTime'] == null ? null : map['deferMaintenanceStartTime'] as String,
      destinationRegion: map['destinationRegion'] == null ? null : map['destinationRegion'] as String,
      elasticIp: map['elasticIp'] == null ? null : map['elasticIp'] as String,
      encrypted: map['encrypted'] == null ? null : map['encrypted'] as bool,
      endpoint: map['endpoint'] == null ? null : RedshiftClusterEndpointResponse.fromMap((map['endpoint'] as Map).cast<String, dynamic>()),
      enhancedVpcRouting: map['enhancedVpcRouting'] == null ? null : map['enhancedVpcRouting'] as bool,
      hsmClientCertificateIdentifier: map['hsmClientCertificateIdentifier'] == null ? null : map['hsmClientCertificateIdentifier'] as String,
      hsmConfigurationIdentifier: map['hsmConfigurationIdentifier'] == null ? null : map['hsmConfigurationIdentifier'] as String,
      iamRoles: map['iamRoles'] == null ? null : (map['iamRoles'] as List).cast<String>(),
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      loggingProperties: map['loggingProperties'] == null ? null : LoggingPropertiesResponse.fromMap((map['loggingProperties'] as Map).cast<String, dynamic>()),
      maintenanceTrackName: map['maintenanceTrackName'] == null ? null : map['maintenanceTrackName'] as String,
      manageMasterPassword: map['manageMasterPassword'] == null ? null : map['manageMasterPassword'] as bool,
      manualSnapshotRetentionPeriod: map['manualSnapshotRetentionPeriod'] == null ? null : map['manualSnapshotRetentionPeriod'] as int,
      masterPasswordSecretArn: map['masterPasswordSecretArn'] == null ? null : map['masterPasswordSecretArn'] as String,
      masterPasswordSecretKmsKeyId: map['masterPasswordSecretKmsKeyId'] == null ? null : map['masterPasswordSecretKmsKeyId'] as String,
      masterUserPassword: map['masterUserPassword'] == null ? null : map['masterUserPassword'] as String,
      masterUsername: map['masterUsername'] == null ? null : map['masterUsername'] as String,
      multiAZ: map['multiAZ'] == null ? null : map['multiAZ'] as bool,
      namespaceResourcePolicy: map['namespaceResourcePolicy'] == null ? null : map['namespaceResourcePolicy'],
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      numberOfNodes: map['numberOfNodes'] == null ? null : map['numberOfNodes'] as int,
      ownerAccount: map['ownerAccount'] == null ? null : map['ownerAccount'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null ? null : map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] == null ? null : map['publiclyAccessible'] as bool,
      resourceAction: map['resourceAction'] == null ? null : map['resourceAction'] as String,
      revisionTarget: map['revisionTarget'] == null ? null : map['revisionTarget'] as String,
      rotateEncryptionKey: map['rotateEncryptionKey'] == null ? null : map['rotateEncryptionKey'] as bool,
      snapshotClusterIdentifier: map['snapshotClusterIdentifier'] == null ? null : map['snapshotClusterIdentifier'] as String,
      snapshotCopyGrantName: map['snapshotCopyGrantName'] == null ? null : map['snapshotCopyGrantName'] as String,
      snapshotCopyManual: map['snapshotCopyManual'] == null ? null : map['snapshotCopyManual'] as bool,
      snapshotCopyRetentionPeriod: map['snapshotCopyRetentionPeriod'] == null ? null : map['snapshotCopyRetentionPeriod'] as int,
      snapshotIdentifier: map['snapshotIdentifier'] == null ? null : map['snapshotIdentifier'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}

