// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_autonomous_vm_cluster_maintenance_window.dart';

/// Result data returned by getCloudAutonomousVmCluster.
class GetCloudAutonomousVmClusterResult {
  /// ARN for the Exadata infrastructure.
  final String? arn;
  /// Percentage of data storage currently in use for Autonomous Databases in the Autonomous VM cluster.
  final double? autonomousDataStoragePercentage;
  /// Data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB.
  final double? autonomousDataStorageSizeInTbs;
  /// Available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  final double? availableAutonomousDataStorageSizeInTbs;
  /// Number of Autonomous CDBs that you can create with the currently available storage.
  final int? availableContainerDatabases;
  /// Number of CPU cores available for allocation to Autonomous Databases.
  final double? availableCpus;
  /// Cloud exadata infrastructure ARN associated with this cloud autonomous VM cluster.
  final String? cloudExadataInfrastructureArn;
  /// Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  final String? cloudExadataInfrastructureId;
  /// Compute model of the Autonomous VM cluster: ECPU or OCPU.
  final String? computeModel;
  /// Total number of CPU cores in the Autonomous VM cluster.
  final int? cpuCoreCount;
  /// Number of CPU cores enabled per node in the Autonomous VM cluster.
  final int? cpuCoreCountPerNode;
  /// Percentage of total CPU cores currently in use in the Autonomous VM cluster.
  final double? cpuPercentage;
  /// Date and time when the Autonomous VM cluster was created.
  final String? createdAt;
  /// Total data storage allocated to the Autonomous VM cluster, in GB.
  final double? dataStorageSizeInGbs;
  /// Total data storage allocated to the Autonomous VM cluster, in TB.
  final double? dataStorageSizeInTbs;
  /// List of database servers associated with the Autonomous VM cluster.
  final List<String>? dbServers;
  /// User-provided description of the Autonomous VM cluster.
  final String? description;
  /// Display name of the Autonomous VM cluster.
  final String? displayName;
  /// Domain name of the Autonomous VM cluster.
  final String? domain;
  /// Minimum value to which you can scale down the Exadata storage, in TB.
  final double? exadataStorageInTbsLowestScaledValue;
  /// Hostname of the Autonomous VM cluster.
  final String? hostname;
  final String? id;
  /// Whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster.
  final bool? isMtlsEnabledVmCluster;
  /// Oracle license model that applies to the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE.
  final String? licenseModel;
  /// Maintenance window for the Autonomous VM cluster.
  final List<GetCloudAutonomousVmClusterMaintenanceWindow>? maintenanceWindows;
  /// Minimum value to which you can scale down the maximum number of Autonomous CDBs.
  final int? maxAcdsLowestScaledValue;
  /// Amount of memory allocated per Oracle Compute Unit, in GB.
  final int? memoryPerOracleComputeUnitInGbs;
  /// Total amount of memory allocated to the Autonomous VM cluster, in gigabytes (GB).
  final int? memorySizeInGbs;
  /// Number of database server nodes in the Autonomous VM cluster.
  final int? nodeCount;
  /// Number of Autonomous CDBs that can't be provisioned because of resource constraints.
  final int? nonProvisionableAutonomousContainerDatabases;
  /// Name of the OCI resource anchor associated with this Autonomous VM cluster.
  final String? ociResourceAnchorName;
  /// URL for accessing the OCI console page for this Autonomous VM cluster.
  final String? ociUrl;
  /// Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final String? ocid;
  /// ARN of the ODB network associated with this Autonomous VM cluster.
  final String? odbNetworkArn;
  /// Unique identifier of the ODB network associated with this Autonomous VM cluster.
  final String? odbNetworkId;
  /// Local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  final int? odbNodeStorageSizeInGbs;
  /// Progress of the current operation on the Autonomous VM cluster, as a percentage.
  final double? percentProgress;
  /// Number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  final int? provisionableAutonomousContainerDatabases;
  /// Number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  final int? provisionedAutonomousContainerDatabases;
  /// Number of CPU cores currently provisioned in the Autonomous VM cluster.
  final double? provisionedCpus;
  /// Number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  final double? reclaimableCpus;
  final String? region;
  /// Number of CPU cores reserved for system operations and redundancy.
  final double? reservedCpus;
  /// SCAN listener port for non-TLS (TCP) protocol. The default is 1521.
  final int? scanListenerPortNonTls;
  /// SCAN listener port for TLS (TCP) protocol. The default is 2484.
  final int? scanListenerPortTls;
  /// Shape of the Exadata infrastructure for the Autonomous VM cluster.
  final String? shape;
  /// Status of the Autonomous VM cluster.
  final String? status;
  /// Additional information about the current status of the Autonomous VM cluster.
  final String? statusReason;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;
  /// Expiration date and time of the database SSL certificate.
  final String? timeDatabaseSslCertificateExpires;
  /// Expiration date and time of the Oracle REST Data Services (ORDS) certificate.
  final String? timeOrdsCertificateExpires;
  /// Time zone of the Autonomous VM cluster.
  final String? timeZone;
  /// Total number of Autonomous Container Databases that can be created with the allocated local storage.
  final int? totalContainerDatabases;

  /// Creates a new [GetCloudAutonomousVmClusterResult].
  /// [arn] ARN for the Exadata infrastructure.
  /// [autonomousDataStoragePercentage] Percentage of data storage currently in use for Autonomous Databases in the Autonomous VM cluster.
  /// [autonomousDataStorageSizeInTbs] Data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB.
  /// [availableAutonomousDataStorageSizeInTbs] Available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  /// [availableContainerDatabases] Number of Autonomous CDBs that you can create with the currently available storage.
  /// [availableCpus] Number of CPU cores available for allocation to Autonomous Databases.
  /// [cloudExadataInfrastructureArn] Cloud exadata infrastructure ARN associated with this cloud autonomous VM cluster.
  /// [cloudExadataInfrastructureId] Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  /// [computeModel] Compute model of the Autonomous VM cluster: ECPU or OCPU.
  /// [cpuCoreCount] Total number of CPU cores in the Autonomous VM cluster.
  /// [cpuCoreCountPerNode] Number of CPU cores enabled per node in the Autonomous VM cluster.
  /// [cpuPercentage] Percentage of total CPU cores currently in use in the Autonomous VM cluster.
  /// [createdAt] Date and time when the Autonomous VM cluster was created.
  /// [dataStorageSizeInGbs] Total data storage allocated to the Autonomous VM cluster, in GB.
  /// [dataStorageSizeInTbs] Total data storage allocated to the Autonomous VM cluster, in TB.
  /// [dbServers] List of database servers associated with the Autonomous VM cluster.
  /// [description] User-provided description of the Autonomous VM cluster.
  /// [displayName] Display name of the Autonomous VM cluster.
  /// [domain] Domain name of the Autonomous VM cluster.
  /// [exadataStorageInTbsLowestScaledValue] Minimum value to which you can scale down the Exadata storage, in TB.
  /// [hostname] Hostname of the Autonomous VM cluster.
  /// [id] Optional.
  /// [isMtlsEnabledVmCluster] Whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster.
  /// [licenseModel] Oracle license model that applies to the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE.
  /// [maintenanceWindows] Maintenance window for the Autonomous VM cluster.
  /// [maxAcdsLowestScaledValue] Minimum value to which you can scale down the maximum number of Autonomous CDBs.
  /// [memoryPerOracleComputeUnitInGbs] Amount of memory allocated per Oracle Compute Unit, in GB.
  /// [memorySizeInGbs] Total amount of memory allocated to the Autonomous VM cluster, in gigabytes (GB).
  /// [nodeCount] Number of database server nodes in the Autonomous VM cluster.
  /// [nonProvisionableAutonomousContainerDatabases] Number of Autonomous CDBs that can't be provisioned because of resource constraints.
  /// [ociResourceAnchorName] Name of the OCI resource anchor associated with this Autonomous VM cluster.
  /// [ociUrl] URL for accessing the OCI console page for this Autonomous VM cluster.
  /// [ocid] Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  /// [odbNetworkArn] ARN of the ODB network associated with this Autonomous VM cluster.
  /// [odbNetworkId] Unique identifier of the ODB network associated with this Autonomous VM cluster.
  /// [odbNodeStorageSizeInGbs] Local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  /// [percentProgress] Progress of the current operation on the Autonomous VM cluster, as a percentage.
  /// [provisionableAutonomousContainerDatabases] Number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  /// [provisionedAutonomousContainerDatabases] Number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  /// [provisionedCpus] Number of CPU cores currently provisioned in the Autonomous VM cluster.
  /// [reclaimableCpus] Number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  /// [region] Optional.
  /// [reservedCpus] Number of CPU cores reserved for system operations and redundancy.
  /// [scanListenerPortNonTls] SCAN listener port for non-TLS (TCP) protocol. The default is 1521.
  /// [scanListenerPortTls] SCAN listener port for TLS (TCP) protocol. The default is 2484.
  /// [shape] Shape of the Exadata infrastructure for the Autonomous VM cluster.
  /// [status] Status of the Autonomous VM cluster.
  /// [statusReason] Additional information about the current status of the Autonomous VM cluster.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeDatabaseSslCertificateExpires] Expiration date and time of the database SSL certificate.
  /// [timeOrdsCertificateExpires] Expiration date and time of the Oracle REST Data Services (ORDS) certificate.
  /// [timeZone] Time zone of the Autonomous VM cluster.
  /// [totalContainerDatabases] Total number of Autonomous Container Databases that can be created with the allocated local storage.
  const GetCloudAutonomousVmClusterResult({
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
    this.id,
    this.isMtlsEnabledVmCluster,
    this.licenseModel,
    this.maintenanceWindows,
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
    this.timeDatabaseSslCertificateExpires,
    this.timeOrdsCertificateExpires,
    this.timeZone,
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
      'id': ?id,
      'isMtlsEnabledVmCluster': ?isMtlsEnabledVmCluster,
      'licenseModel': ?licenseModel,
      'maintenanceWindows': ?(() { final guardedValue = maintenanceWindows; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudAutonomousVmClusterMaintenanceWindow, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
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
      'timeDatabaseSslCertificateExpires': ?timeDatabaseSslCertificateExpires,
      'timeOrdsCertificateExpires': ?timeOrdsCertificateExpires,
      'timeZone': ?timeZone,
      'totalContainerDatabases': ?totalContainerDatabases,
    };
  }

  factory GetCloudAutonomousVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autonomousDataStoragePercentage: (() { final guardedValue = map['autonomousDataStoragePercentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      autonomousDataStorageSizeInTbs: (() { final guardedValue = map['autonomousDataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      availableAutonomousDataStorageSizeInTbs: (() { final guardedValue = map['availableAutonomousDataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      availableContainerDatabases: (() { final guardedValue = map['availableContainerDatabases']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      availableCpus: (() { final guardedValue = map['availableCpus']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      cpuCoreCountPerNode: (() { final guardedValue = map['cpuCoreCountPerNode']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      cpuPercentage: (() { final guardedValue = map['cpuPercentage']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataStorageSizeInGbs: (() { final guardedValue = map['dataStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exadataStorageInTbsLowestScaledValue: (() { final guardedValue = map['exadataStorageInTbsLowestScaledValue']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isMtlsEnabledVmCluster: (() { final guardedValue = map['isMtlsEnabledVmCluster']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindows: (() { final guardedValue = map['maintenanceWindows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudAutonomousVmClusterMaintenanceWindow>(guardedValue, (value) => GetCloudAutonomousVmClusterMaintenanceWindow.fromMap((value as Map).cast<String, dynamic>())); })(),
      maxAcdsLowestScaledValue: (() { final guardedValue = map['maxAcdsLowestScaledValue']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memoryPerOracleComputeUnitInGbs: (() { final guardedValue = map['memoryPerOracleComputeUnitInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      nonProvisionableAutonomousContainerDatabases: (() { final guardedValue = map['nonProvisionableAutonomousContainerDatabases']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNodeStorageSizeInGbs: (() { final guardedValue = map['odbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      provisionableAutonomousContainerDatabases: (() { final guardedValue = map['provisionableAutonomousContainerDatabases']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      provisionedAutonomousContainerDatabases: (() { final guardedValue = map['provisionedAutonomousContainerDatabases']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      provisionedCpus: (() { final guardedValue = map['provisionedCpus']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      reclaimableCpus: (() { final guardedValue = map['reclaimableCpus']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservedCpus: (() { final guardedValue = map['reservedCpus']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      scanListenerPortNonTls: (() { final guardedValue = map['scanListenerPortNonTls']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      scanListenerPortTls: (() { final guardedValue = map['scanListenerPortTls']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeDatabaseSslCertificateExpires: (() { final guardedValue = map['timeDatabaseSslCertificateExpires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeOrdsCertificateExpires: (() { final guardedValue = map['timeOrdsCertificateExpires']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalContainerDatabases: (() { final guardedValue = map['totalContainerDatabases']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
