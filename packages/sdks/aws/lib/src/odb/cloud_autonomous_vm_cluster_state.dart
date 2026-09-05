// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_autonomous_vm_cluster_maintenance_window.dart';
import 'cloud_autonomous_vm_cluster_timeouts.dart';

/// Input properties used for looking up and filtering CloudAutonomousVmCluster resources.
class CloudAutonomousVmClusterState {
  /// ARN for the Exadata infrastructure.
  final pulumi.Input<String?>? arn;
  /// Progress of the current operation on the Autonomous VM cluster, as a percentage.
  final pulumi.Input<double?>? autonomousDataStoragePercentage;
  /// Data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  final pulumi.Input<double?>? autonomousDataStorageSizeInTbs;
  /// Available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  final pulumi.Input<double?>? availableAutonomousDataStorageSizeInTbs;
  /// Number of Autonomous CDBs that you can create with the currently available storage.
  final pulumi.Input<int?>? availableContainerDatabases;
  /// Number of CPU cores available for allocation to Autonomous Databases.
  final pulumi.Input<double?>? availableCpus;
  /// Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? cloudExadataInfrastructureArn;
  /// Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? cloudExadataInfrastructureId;
  /// Compute model of the Autonomous VM cluster: ECPU or OCPU.
  final pulumi.Input<String?>? computeModel;
  /// Total number of CPU cores in the Autonomous VM cluster.
  final pulumi.Input<int?>? cpuCoreCount;
  /// Number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<int?>? cpuCoreCountPerNode;
  /// Percentage of total CPU cores currently in use in the Autonomous VM cluster.
  final pulumi.Input<double?>? cpuPercentage;
  /// Date and time when the Autonomous VM cluster was created.
  final pulumi.Input<String?>? createdAt;
  /// Total data storage allocated to the Autonomous VM cluster, in GB.
  final pulumi.Input<double?>? dataStorageSizeInGbs;
  /// Total data storage allocated to the Autonomous VM cluster, in TB.
  final pulumi.Input<double?>? dataStorageSizeInTbs;
  /// Database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<List<String>?>? dbServers;
  /// Description of the Autonomous VM cluster.
  final pulumi.Input<String?>? description;
  /// Display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? displayName;
  /// Domain name of the Autonomous VM cluster.
  final pulumi.Input<String?>? domain;
  /// Minimum value to which you can scale down the Exadata storage, in TB.
  final pulumi.Input<double?>? exadataStorageInTbsLowestScaledValue;
  /// Hostname of the Autonomous VM cluster.
  final pulumi.Input<String?>? hostname;
  /// Whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<bool?>? isMtlsEnabledVmCluster;
  /// License model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? licenseModel;
  /// Maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<CloudAutonomousVmClusterMaintenanceWindow?>? maintenanceWindow;
  /// Minimum value to which you can scale down the maximum number of Autonomous CDBs.
  final pulumi.Input<int?>? maxAcdsLowestScaledValue;
  /// Amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  final pulumi.Input<int?>? memoryPerOracleComputeUnitInGbs;
  /// Total amount of memory allocated to the Autonomous VM cluster, in gigabytes(GB).
  final pulumi.Input<int?>? memorySizeInGbs;
  /// Number of database server nodes in the Autonomous VM cluster.
  final pulumi.Input<int?>? nodeCount;
  /// Number of Autonomous CDBs that can't be provisioned because of resource constraints.
  final pulumi.Input<int?>? nonProvisionableAutonomousContainerDatabases;
  /// Name of the OCI resource anchor associated with this Autonomous VM cluster.
  final pulumi.Input<String?>? ociResourceAnchorName;
  /// URL for accessing the OCI console page for this Autonomous VM cluster.
  final pulumi.Input<String?>? ociUrl;
  /// Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final pulumi.Input<String?>? ocid;
  /// ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? odbNetworkArn;
  /// Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? odbNetworkId;
  /// Local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  final pulumi.Input<int?>? odbNodeStorageSizeInGbs;
  /// Progress of the current operation on the Autonomous VM cluster, as a percentage.
  final pulumi.Input<double?>? percentProgress;
  /// Number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  final pulumi.Input<int?>? provisionableAutonomousContainerDatabases;
  /// Number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  final pulumi.Input<int?>? provisionedAutonomousContainerDatabases;
  /// Number of CPUs provisioned in the Autonomous VM cluster.
  final pulumi.Input<double?>? provisionedCpus;
  /// Number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  final pulumi.Input<double?>? reclaimableCpus;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Number of CPU cores reserved for system operations and redundancy.
  final pulumi.Input<double?>? reservedCpus;
  /// SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  final pulumi.Input<int?>? scanListenerPortNonTls;
  /// SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  final pulumi.Input<int?>? scanListenerPortTls;
  /// Shape of the Exadata infrastructure for the Autonomous VM cluster.
  final pulumi.Input<String?>? shape;
  /// Status of the Autonomous VM cluster. Possible values include CREATING, AVAILABLE, UPDATING, DELETING, DELETED, FAILED.
  final pulumi.Input<String?>? status;
  /// Additional information about the current status of the Autonomous VM cluster.
  final pulumi.Input<String?>? statusReason;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Combined set of user-defined and provider-defined tags.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Expiration date and time of the database SSL certificate.
  final pulumi.Input<String?>? timeDatabaseSslCertificateExpires;
  /// Expiration date and time of the ORDS certificate.
  final pulumi.Input<String?>? timeOrdsCertificateExpires;
  /// Time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? timeZone;
  final pulumi.Input<CloudAutonomousVmClusterTimeouts?>? timeouts;
  /// Total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int?>? totalContainerDatabases;

  /// Creates a new [CloudAutonomousVmClusterState].
  /// [arn] ARN for the Exadata infrastructure.
  /// [autonomousDataStoragePercentage] Progress of the current operation on the Autonomous VM cluster, as a percentage.
  /// [autonomousDataStorageSizeInTbs] Data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  /// [availableAutonomousDataStorageSizeInTbs] Available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  /// [availableContainerDatabases] Number of Autonomous CDBs that you can create with the currently available storage.
  /// [availableCpus] Number of CPU cores available for allocation to Autonomous Databases.
  /// [cloudExadataInfrastructureArn] Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [cloudExadataInfrastructureId] Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [computeModel] Compute model of the Autonomous VM cluster: ECPU or OCPU.
  /// [cpuCoreCount] Total number of CPU cores in the Autonomous VM cluster.
  /// [cpuCoreCountPerNode] Number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [cpuPercentage] Percentage of total CPU cores currently in use in the Autonomous VM cluster.
  /// [createdAt] Date and time when the Autonomous VM cluster was created.
  /// [dataStorageSizeInGbs] Total data storage allocated to the Autonomous VM cluster, in GB.
  /// [dataStorageSizeInTbs] Total data storage allocated to the Autonomous VM cluster, in TB.
  /// [dbServers] Database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [description] Description of the Autonomous VM cluster.
  /// [displayName] Display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [domain] Domain name of the Autonomous VM cluster.
  /// [exadataStorageInTbsLowestScaledValue] Minimum value to which you can scale down the Exadata storage, in TB.
  /// [hostname] Hostname of the Autonomous VM cluster.
  /// [isMtlsEnabledVmCluster] Whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [licenseModel] License model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  /// [maintenanceWindow] Maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [maxAcdsLowestScaledValue] Minimum value to which you can scale down the maximum number of Autonomous CDBs.
  /// [memoryPerOracleComputeUnitInGbs] Amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  /// [memorySizeInGbs] Total amount of memory allocated to the Autonomous VM cluster, in gigabytes(GB).
  /// [nodeCount] Number of database server nodes in the Autonomous VM cluster.
  /// [nonProvisionableAutonomousContainerDatabases] Number of Autonomous CDBs that can't be provisioned because of resource constraints.
  /// [ociResourceAnchorName] Name of the OCI resource anchor associated with this Autonomous VM cluster.
  /// [ociUrl] URL for accessing the OCI console page for this Autonomous VM cluster.
  /// [ocid] Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  /// [odbNetworkArn] ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [odbNetworkId] Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [odbNodeStorageSizeInGbs] Local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  /// [percentProgress] Progress of the current operation on the Autonomous VM cluster, as a percentage.
  /// [provisionableAutonomousContainerDatabases] Number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  /// [provisionedAutonomousContainerDatabases] Number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  /// [provisionedCpus] Number of CPUs provisioned in the Autonomous VM cluster.
  /// [reclaimableCpus] Number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [reservedCpus] Number of CPU cores reserved for system operations and redundancy.
  /// [scanListenerPortNonTls] SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  /// [scanListenerPortTls] SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  /// [shape] Shape of the Exadata infrastructure for the Autonomous VM cluster.
  /// [status] Status of the Autonomous VM cluster. Possible values include CREATING, AVAILABLE, UPDATING, DELETING, DELETED, FAILED.
  /// [statusReason] Additional information about the current status of the Autonomous VM cluster.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Combined set of user-defined and provider-defined tags.
  /// [timeDatabaseSslCertificateExpires] Expiration date and time of the database SSL certificate.
  /// [timeOrdsCertificateExpires] Expiration date and time of the ORDS certificate.
  /// [timeZone] Time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [timeouts] Optional.
  /// [totalContainerDatabases] Total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  const CloudAutonomousVmClusterState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autonomousDataStoragePercentage: (() { final guardedValue = map['autonomousDataStoragePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      autonomousDataStorageSizeInTbs: (() { final guardedValue = map['autonomousDataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      availableAutonomousDataStorageSizeInTbs: (() { final guardedValue = map['availableAutonomousDataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      availableContainerDatabases: (() { final guardedValue = map['availableContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      availableCpus: (() { final guardedValue = map['availableCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpuCoreCountPerNode: (() { final guardedValue = map['cpuCoreCountPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      cpuPercentage: (() { final guardedValue = map['cpuPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStorageSizeInGbs: (() { final guardedValue = map['dataStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exadataStorageInTbsLowestScaledValue: (() { final guardedValue = map['exadataStorageInTbsLowestScaledValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isMtlsEnabledVmCluster: (() { final guardedValue = map['isMtlsEnabledVmCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAutonomousVmClusterMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxAcdsLowestScaledValue: (() { final guardedValue = map['maxAcdsLowestScaledValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memoryPerOracleComputeUnitInGbs: (() { final guardedValue = map['memoryPerOracleComputeUnitInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nonProvisionableAutonomousContainerDatabases: (() { final guardedValue = map['nonProvisionableAutonomousContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNodeStorageSizeInGbs: (() { final guardedValue = map['odbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      provisionableAutonomousContainerDatabases: (() { final guardedValue = map['provisionableAutonomousContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedAutonomousContainerDatabases: (() { final guardedValue = map['provisionedAutonomousContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      provisionedCpus: (() { final guardedValue = map['provisionedCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      reclaimableCpus: (() { final guardedValue = map['reclaimableCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedCpus: (() { final guardedValue = map['reservedCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      scanListenerPortNonTls: (() { final guardedValue = map['scanListenerPortNonTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      scanListenerPortTls: (() { final guardedValue = map['scanListenerPortTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeDatabaseSslCertificateExpires: (() { final guardedValue = map['timeDatabaseSslCertificateExpires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeOrdsCertificateExpires: (() { final guardedValue = map['timeOrdsCertificateExpires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAutonomousVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalContainerDatabases: (() { final guardedValue = map['totalContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
