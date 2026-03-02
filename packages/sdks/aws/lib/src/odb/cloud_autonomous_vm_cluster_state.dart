// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_autonomous_vm_cluster_maintenance_window.dart';
import 'cloud_autonomous_vm_cluster_timeouts.dart';

/// Input properties used for looking up and filtering CloudAutonomousVmCluster resources.
class CloudAutonomousVmClusterState {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  final pulumi.Input<String>? arn;
  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  final pulumi.Input<double>? autonomousDataStoragePercentage;
  /// The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  final pulumi.Input<double>? autonomousDataStorageSizeInTbs;
  /// The available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  final pulumi.Input<double>? availableAutonomousDataStorageSizeInTbs;
  /// The number of Autonomous CDBs that you can create with the currently available storage.
  final pulumi.Input<int>? availableContainerDatabases;
  /// The number of CPU cores available for allocation to Autonomous Databases.
  final pulumi.Input<double>? availableCpus;
  /// Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureArn;
  /// Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// The compute model of the Autonomous VM cluster: ECPU or OCPU.
  final pulumi.Input<String>? computeModel;
  /// The total number of CPU cores in the Autonomous VM cluster.
  final pulumi.Input<int>? cpuCoreCount;
  /// The number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? cpuCoreCountPerNode;
  /// The percentage of total CPU cores currently in use in the Autonomous VM cluster.
  final pulumi.Input<double>? cpuPercentage;
  /// The date and time when the Autonomous VM cluster was created.
  final pulumi.Input<String>? createdAt;
  /// The total data storage allocated to the Autonomous VM cluster, in GB.
  final pulumi.Input<double>? dataStorageSizeInGbs;
  /// The total data storage allocated to the Autonomous VM cluster, in TB.
  final pulumi.Input<double>? dataStorageSizeInTbs;
  /// The database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<List<String>>? dbServers;
  /// The description of the Autonomous VM cluster.
  final pulumi.Input<String>? description;
  /// The display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? displayName;
  /// The domain name of the Autonomous VM cluster.
  final pulumi.Input<String>? domain;
  /// The minimum value to which you can scale down the Exadata storage, in TB.
  final pulumi.Input<double>? exadataStorageInTbsLowestScaledValue;
  /// The hostname of the Autonomous VM cluster.
  final pulumi.Input<String>? hostname;
  /// Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<bool>? isMtlsEnabledVmCluster;
  /// The license model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? licenseModel;
  /// The maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CloudAutonomousVmClusterMaintenanceWindow>? maintenanceWindow;
  /// The minimum value to which you can scale down the maximum number of Autonomous CDBs.
  final pulumi.Input<int>? maxAcdsLowestScaledValue;
  /// The amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? memoryPerOracleComputeUnitInGbs;
  /// The total amount of memory allocated to the Autonomous VM cluster, in gigabytes(GB).
  final pulumi.Input<int>? memorySizeInGbs;
  /// The number of database server nodes in the Autonomous VM cluster.
  final pulumi.Input<int>? nodeCount;
  /// The number of Autonomous CDBs that can't be provisioned because of resource constraints.
  final pulumi.Input<int>? nonProvisionableAutonomousContainerDatabases;
  /// The name of the OCI resource anchor associated with this Autonomous VM cluster.
  final pulumi.Input<String>? ociResourceAnchorName;
  /// The URL for accessing the OCI console page for this Autonomous VM cluster.
  final pulumi.Input<String>? ociUrl;
  /// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final pulumi.Input<String>? ocid;
  /// ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? odbNetworkId;
  /// The local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  final pulumi.Input<int>? odbNodeStorageSizeInGbs;
  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  final pulumi.Input<double>? percentProgress;
  /// The number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  final pulumi.Input<int>? provisionableAutonomousContainerDatabases;
  /// The number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  final pulumi.Input<int>? provisionedAutonomousContainerDatabases;
  /// The number of CPUs provisioned in the Autonomous VM cluster.
  final pulumi.Input<double>? provisionedCpus;
  /// The number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  final pulumi.Input<double>? reclaimableCpus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The number of CPU cores reserved for system operations and redundancy.
  final pulumi.Input<double>? reservedCpus;
  /// The SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? scanListenerPortNonTls;
  /// The SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? scanListenerPortTls;
  /// The shape of the Exadata infrastructure for the Autonomous VM cluster.
  final pulumi.Input<String>? shape;
  /// The status of the Autonomous VM cluster. Possible values include CREATING, AVAILABLE, UPDATING, DELETING, DELETED, FAILED.
  final pulumi.Input<String>? status;
  /// Additional information about the current status of the Autonomous VM cluster.
  final pulumi.Input<String>? statusReason;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The combined set of user-defined and provider-defined tags.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The expiration date and time of the database SSL certificate.
  final pulumi.Input<String>? timeDatabaseSslCertificateExpires;
  /// The expiration date and time of the ORDS certificate.
  final pulumi.Input<String>? timeOrdsCertificateExpires;
  /// The time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? timeZone;
  final pulumi.Input<CloudAutonomousVmClusterTimeouts>? timeouts;
  /// The total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  final pulumi.Input<int>? totalContainerDatabases;

  /// Creates a new [CloudAutonomousVmClusterState].
  /// [arn] The Amazon Resource Name (ARN) for the Exadata infrastructure.
  /// [autonomousDataStoragePercentage] The progress of the current operation on the Autonomous VM cluster, as a percentage.
  /// [autonomousDataStorageSizeInTbs] The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  /// [availableAutonomousDataStorageSizeInTbs] The available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  /// [availableContainerDatabases] The number of Autonomous CDBs that you can create with the currently available storage.
  /// [availableCpus] The number of CPU cores available for allocation to Autonomous Databases.
  /// [cloudExadataInfrastructureArn] Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [cloudExadataInfrastructureId] Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [computeModel] The compute model of the Autonomous VM cluster: ECPU or OCPU.
  /// [cpuCoreCount] The total number of CPU cores in the Autonomous VM cluster.
  /// [cpuCoreCountPerNode] The number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [cpuPercentage] The percentage of total CPU cores currently in use in the Autonomous VM cluster.
  /// [createdAt] The date and time when the Autonomous VM cluster was created.
  /// [dataStorageSizeInGbs] The total data storage allocated to the Autonomous VM cluster, in GB.
  /// [dataStorageSizeInTbs] The total data storage allocated to the Autonomous VM cluster, in TB.
  /// [dbServers] The database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [description] The description of the Autonomous VM cluster.
  /// [displayName] The display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [domain] The domain name of the Autonomous VM cluster.
  /// [exadataStorageInTbsLowestScaledValue] The minimum value to which you can scale down the Exadata storage, in TB.
  /// [hostname] The hostname of the Autonomous VM cluster.
  /// [isMtlsEnabledVmCluster] Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [licenseModel] The license model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  /// [maintenanceWindow] The maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [maxAcdsLowestScaledValue] The minimum value to which you can scale down the maximum number of Autonomous CDBs.
  /// [memoryPerOracleComputeUnitInGbs] The amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  /// [memorySizeInGbs] The total amount of memory allocated to the Autonomous VM cluster, in gigabytes(GB).
  /// [nodeCount] The number of database server nodes in the Autonomous VM cluster.
  /// [nonProvisionableAutonomousContainerDatabases] The number of Autonomous CDBs that can't be provisioned because of resource constraints.
  /// [ociResourceAnchorName] The name of the OCI resource anchor associated with this Autonomous VM cluster.
  /// [ociUrl] The URL for accessing the OCI console page for this Autonomous VM cluster.
  /// [ocid] The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  /// [odbNetworkArn] ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [odbNetworkId] Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [odbNodeStorageSizeInGbs] The local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  /// [percentProgress] The progress of the current operation on the Autonomous VM cluster, as a percentage.
  /// [provisionableAutonomousContainerDatabases] The number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  /// [provisionedAutonomousContainerDatabases] The number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  /// [provisionedCpus] The number of CPUs provisioned in the Autonomous VM cluster.
  /// [reclaimableCpus] The number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservedCpus] The number of CPU cores reserved for system operations and redundancy.
  /// [scanListenerPortNonTls] The SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  /// [scanListenerPortTls] The SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  /// [shape] The shape of the Exadata infrastructure for the Autonomous VM cluster.
  /// [status] The status of the Autonomous VM cluster. Possible values include CREATING, AVAILABLE, UPDATING, DELETING, DELETED, FAILED.
  /// [statusReason] Additional information about the current status of the Autonomous VM cluster.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] The combined set of user-defined and provider-defined tags.
  /// [timeDatabaseSslCertificateExpires] The expiration date and time of the database SSL certificate.
  /// [timeOrdsCertificateExpires] The expiration date and time of the ORDS certificate.
  /// [timeZone] The time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [timeouts] Optional.
  /// [totalContainerDatabases] The total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  CloudAutonomousVmClusterState({
    this.arn,
    this.autonomousDataStoragePercentage,
    this.autonomousDataStorageSizeInTbs,
    this.availableAutonomousDataStorageSizeInTbs,
    this.availableContainerDatabases,
    this.availableCpus,
    this.cloudExadataInfrastructureArn,
    this.cloudExadataInfrastructureId,
    this.computeModel,
    this.cpuCoreCount,
    this.cpuCoreCountPerNode,
    this.cpuPercentage,
    this.createdAt,
    this.dataStorageSizeInGbs,
    this.dataStorageSizeInTbs,
    this.dbServers,
    this.description,
    this.displayName,
    this.domain,
    this.exadataStorageInTbsLowestScaledValue,
    this.hostname,
    this.isMtlsEnabledVmCluster,
    this.licenseModel,
    this.maintenanceWindow,
    this.maxAcdsLowestScaledValue,
    this.memoryPerOracleComputeUnitInGbs,
    this.memorySizeInGbs,
    this.nodeCount,
    this.nonProvisionableAutonomousContainerDatabases,
    this.ociResourceAnchorName,
    this.ociUrl,
    this.ocid,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.odbNodeStorageSizeInGbs,
    this.percentProgress,
    this.provisionableAutonomousContainerDatabases,
    this.provisionedAutonomousContainerDatabases,
    this.provisionedCpus,
    this.reclaimableCpus,
    this.region,
    this.reservedCpus,
    this.scanListenerPortNonTls,
    this.scanListenerPortTls,
    this.shape,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.timeDatabaseSslCertificateExpires,
    this.timeOrdsCertificateExpires,
    this.timeZone,
    this.timeouts,
    this.totalContainerDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autonomousDataStoragePercentage': ?autonomousDataStoragePercentage,
      'autonomousDataStorageSizeInTbs': ?autonomousDataStorageSizeInTbs,
      'availableAutonomousDataStorageSizeInTbs': ?availableAutonomousDataStorageSizeInTbs,
      'availableContainerDatabases': ?availableContainerDatabases,
      'availableCpus': ?availableCpus,
      'cloudExadataInfrastructureArn': ?cloudExadataInfrastructureArn,
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'computeModel': ?computeModel,
      'cpuCoreCount': ?cpuCoreCount,
      'cpuCoreCountPerNode': ?cpuCoreCountPerNode,
      'cpuPercentage': ?cpuPercentage,
      'createdAt': ?createdAt,
      'dataStorageSizeInGbs': ?dataStorageSizeInGbs,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'dbServers': ?dbServers,
      'description': ?description,
      'displayName': ?displayName,
      'domain': ?domain,
      'exadataStorageInTbsLowestScaledValue': ?exadataStorageInTbsLowestScaledValue,
      'hostname': ?hostname,
      'isMtlsEnabledVmCluster': ?isMtlsEnabledVmCluster,
      'licenseModel': ?licenseModel,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<CloudAutonomousVmClusterMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'maxAcdsLowestScaledValue': ?maxAcdsLowestScaledValue,
      'memoryPerOracleComputeUnitInGbs': ?memoryPerOracleComputeUnitInGbs,
      'memorySizeInGbs': ?memorySizeInGbs,
      'nodeCount': ?nodeCount,
      'nonProvisionableAutonomousContainerDatabases': ?nonProvisionableAutonomousContainerDatabases,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'odbNodeStorageSizeInGbs': ?odbNodeStorageSizeInGbs,
      'percentProgress': ?percentProgress,
      'provisionableAutonomousContainerDatabases': ?provisionableAutonomousContainerDatabases,
      'provisionedAutonomousContainerDatabases': ?provisionedAutonomousContainerDatabases,
      'provisionedCpus': ?provisionedCpus,
      'reclaimableCpus': ?reclaimableCpus,
      'region': ?region,
      'reservedCpus': ?reservedCpus,
      'scanListenerPortNonTls': ?scanListenerPortNonTls,
      'scanListenerPortTls': ?scanListenerPortTls,
      'shape': ?shape,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeDatabaseSslCertificateExpires': ?timeDatabaseSslCertificateExpires,
      'timeOrdsCertificateExpires': ?timeOrdsCertificateExpires,
      'timeZone': ?timeZone,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CloudAutonomousVmClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'totalContainerDatabases': ?totalContainerDatabases,
    };
  }

  factory CloudAutonomousVmClusterState.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autonomousDataStoragePercentage: map['autonomousDataStoragePercentage'] == null ? null : ((map['autonomousDataStoragePercentage'] as double).input()).input(),
      autonomousDataStorageSizeInTbs: map['autonomousDataStorageSizeInTbs'] == null ? null : ((map['autonomousDataStorageSizeInTbs'] as double).input()).input(),
      availableAutonomousDataStorageSizeInTbs: map['availableAutonomousDataStorageSizeInTbs'] == null ? null : ((map['availableAutonomousDataStorageSizeInTbs'] as double).input()).input(),
      availableContainerDatabases: map['availableContainerDatabases'] == null ? null : ((map['availableContainerDatabases'] as int).input()).input(),
      availableCpus: map['availableCpus'] == null ? null : ((map['availableCpus'] as double).input()).input(),
      cloudExadataInfrastructureArn: map['cloudExadataInfrastructureArn'] == null ? null : ((map['cloudExadataInfrastructureArn'] as String).input()).input(),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : ((map['cloudExadataInfrastructureId'] as String).input()).input(),
      computeModel: map['computeModel'] == null ? null : ((map['computeModel'] as String).input()).input(),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : ((map['cpuCoreCount'] as int).input()).input(),
      cpuCoreCountPerNode: map['cpuCoreCountPerNode'] == null ? null : ((map['cpuCoreCountPerNode'] as int).input()).input(),
      cpuPercentage: map['cpuPercentage'] == null ? null : ((map['cpuPercentage'] as double).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      dataStorageSizeInGbs: map['dataStorageSizeInGbs'] == null ? null : ((map['dataStorageSizeInGbs'] as double).input()).input(),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : ((map['dataStorageSizeInTbs'] as double).input()).input(),
      dbServers: map['dbServers'] == null ? null : (((map['dbServers'] as List).cast<String>()).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      domain: map['domain'] == null ? null : ((map['domain'] as String).input()).input(),
      exadataStorageInTbsLowestScaledValue: map['exadataStorageInTbsLowestScaledValue'] == null ? null : ((map['exadataStorageInTbsLowestScaledValue'] as double).input()).input(),
      hostname: map['hostname'] == null ? null : ((map['hostname'] as String).input()).input(),
      isMtlsEnabledVmCluster: map['isMtlsEnabledVmCluster'] == null ? null : ((map['isMtlsEnabledVmCluster'] as bool).input()).input(),
      licenseModel: map['licenseModel'] == null ? null : ((map['licenseModel'] as String).input()).input(),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : ((CloudAutonomousVmClusterMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())).input()).input(),
      maxAcdsLowestScaledValue: map['maxAcdsLowestScaledValue'] == null ? null : ((map['maxAcdsLowestScaledValue'] as int).input()).input(),
      memoryPerOracleComputeUnitInGbs: map['memoryPerOracleComputeUnitInGbs'] == null ? null : ((map['memoryPerOracleComputeUnitInGbs'] as int).input()).input(),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : ((map['memorySizeInGbs'] as int).input()).input(),
      nodeCount: map['nodeCount'] == null ? null : ((map['nodeCount'] as int).input()).input(),
      nonProvisionableAutonomousContainerDatabases: map['nonProvisionableAutonomousContainerDatabases'] == null ? null : ((map['nonProvisionableAutonomousContainerDatabases'] as int).input()).input(),
      ociResourceAnchorName: map['ociResourceAnchorName'] == null ? null : ((map['ociResourceAnchorName'] as String).input()).input(),
      ociUrl: map['ociUrl'] == null ? null : ((map['ociUrl'] as String).input()).input(),
      ocid: map['ocid'] == null ? null : ((map['ocid'] as String).input()).input(),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : ((map['odbNetworkArn'] as String).input()).input(),
      odbNetworkId: map['odbNetworkId'] == null ? null : ((map['odbNetworkId'] as String).input()).input(),
      odbNodeStorageSizeInGbs: map['odbNodeStorageSizeInGbs'] == null ? null : ((map['odbNodeStorageSizeInGbs'] as int).input()).input(),
      percentProgress: map['percentProgress'] == null ? null : ((map['percentProgress'] as double).input()).input(),
      provisionableAutonomousContainerDatabases: map['provisionableAutonomousContainerDatabases'] == null ? null : ((map['provisionableAutonomousContainerDatabases'] as int).input()).input(),
      provisionedAutonomousContainerDatabases: map['provisionedAutonomousContainerDatabases'] == null ? null : ((map['provisionedAutonomousContainerDatabases'] as int).input()).input(),
      provisionedCpus: map['provisionedCpus'] == null ? null : ((map['provisionedCpus'] as double).input()).input(),
      reclaimableCpus: map['reclaimableCpus'] == null ? null : ((map['reclaimableCpus'] as double).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      reservedCpus: map['reservedCpus'] == null ? null : ((map['reservedCpus'] as double).input()).input(),
      scanListenerPortNonTls: map['scanListenerPortNonTls'] == null ? null : ((map['scanListenerPortNonTls'] as int).input()).input(),
      scanListenerPortTls: map['scanListenerPortTls'] == null ? null : ((map['scanListenerPortTls'] as int).input()).input(),
      shape: map['shape'] == null ? null : ((map['shape'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusReason: map['statusReason'] == null ? null : ((map['statusReason'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeDatabaseSslCertificateExpires: map['timeDatabaseSslCertificateExpires'] == null ? null : ((map['timeDatabaseSslCertificateExpires'] as String).input()).input(),
      timeOrdsCertificateExpires: map['timeOrdsCertificateExpires'] == null ? null : ((map['timeOrdsCertificateExpires'] as String).input()).input(),
      timeZone: map['timeZone'] == null ? null : ((map['timeZone'] as String).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((CloudAutonomousVmClusterTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
      totalContainerDatabases: map['totalContainerDatabases'] == null ? null : ((map['totalContainerDatabases'] as int).input()).input(),
    );
  }
}

