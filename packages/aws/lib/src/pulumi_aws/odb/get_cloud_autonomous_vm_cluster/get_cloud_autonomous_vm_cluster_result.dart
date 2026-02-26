// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cloud_autonomous_vm_cluster_maintenance_window/get_cloud_autonomous_vm_cluster_maintenance_window.dart';

/// Result data returned by getCloudAutonomousVmCluster.
class GetCloudAutonomousVmClusterResult {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  final String arn;

  /// The percentage of data storage currently in use for Autonomous Databases in the Autonomous VM cluster.
  final double autonomousDataStoragePercentage;

  /// The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB.
  final double autonomousDataStorageSizeInTbs;

  /// The available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  final double availableAutonomousDataStorageSizeInTbs;

  /// The number of Autonomous CDBs that you can create with the currently available storage.
  final int availableContainerDatabases;

  /// The number of CPU cores available for allocation to Autonomous Databases.
  final double availableCpus;

  /// Cloud exadata infrastructure ARN associated with this cloud autonomous VM cluster.
  final String cloudExadataInfrastructureArn;

  /// Cloud exadata infrastructure id associated with this cloud autonomous VM cluster.
  final String cloudExadataInfrastructureId;

  /// The compute model of the Autonomous VM cluster: ECPU or OCPU.
  final String computeModel;

  /// The total number of CPU cores in the Autonomous VM cluster.
  final int cpuCoreCount;

  /// The number of CPU cores enabled per node in the Autonomous VM cluster.
  final int cpuCoreCountPerNode;

  /// he percentage of total CPU cores currently in use in the Autonomous VM cluster.
  final double cpuPercentage;

  /// The date and time when the Autonomous VM cluster was created.
  final String createdAt;

  /// The total data storage allocated to the Autonomous VM cluster, in GB.
  final double dataStorageSizeInGbs;

  /// The total data storage allocated to the Autonomous VM cluster, in TB.
  final double dataStorageSizeInTbs;

  /// The list of database servers associated with the Autonomous VM cluster.
  final List<String> dbServers;

  /// The user-provided description of the Autonomous VM cluster.
  final String description;

  /// The display name of the Autonomous VM cluster.
  final String displayName;

  /// The domain name of the Autonomous VM cluster.
  final String domain;

  /// The minimum value to which you can scale down the Exadata storage, in TB.
  final double exadataStorageInTbsLowestScaledValue;

  /// The hostname of the Autonomous VM cluster.
  final String hostname;
  final String id;

  /// Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster.
  final bool isMtlsEnabledVmCluster;

  /// The Oracle license model that applies to the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE.
  final String licenseModel;

  /// The maintenance window for the Autonomous VM cluster.
  final List<GetCloudAutonomousVmClusterMaintenanceWindow> maintenanceWindows;

  /// The minimum value to which you can scale down the maximum number of Autonomous CDBs.
  final int maxAcdsLowestScaledValue;

  /// The amount of memory allocated per Oracle Compute Unit, in GB.
  final int memoryPerOracleComputeUnitInGbs;

  /// The total amount of memory allocated to the Autonomous VM cluster, in gigabytes (GB).
  final int memorySizeInGbs;

  /// The number of database server nodes in the Autonomous VM cluster.
  final int nodeCount;

  /// The number of Autonomous CDBs that can't be provisioned because of resource  constraints.
  final int nonProvisionableAutonomousContainerDatabases;

  /// The name of the OCI resource anchor associated with this Autonomous VM cluster.
  final String ociResourceAnchorName;

  /// The URL for accessing the OCI console page for this Autonomous VM cluster.
  final String ociUrl;

  /// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  final String ocid;

  /// The arn of the ODB network associated with this Autonomous VM cluster.
  final String odbNetworkArn;

  /// The unique identifier of the ODB network associated with this Autonomous VM cluster.
  final String odbNetworkId;

  /// The local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  final int odbNodeStorageSizeInGbs;

  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  final double percentProgress;

  /// The number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  final int provisionableAutonomousContainerDatabases;

  /// The number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  final int provisionedAutonomousContainerDatabases;

  /// The number of CPU cores currently provisioned in the Autonomous VM cluster.
  final double provisionedCpus;

  /// The number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  final double reclaimableCpus;
  final String region;

  /// The number of CPU cores reserved for system operations and redundancy.
  final double reservedCpus;

  /// The SCAN listener port for non-TLS (TCP) protocol. The default is 1521.
  final int scanListenerPortNonTls;

  /// The SCAN listener port for TLS (TCP) protocol. The default is 2484.
  final int scanListenerPortTls;

  /// The shape of the Exadata infrastructure for the Autonomous VM cluster.
  final String shape;

  /// The status of the Autonomous VM cluster.
  final String status;

  /// Additional information about the current status of the Autonomous VM cluster.
  final String statusReason;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String> tags;

  /// The expiration date and time of the database SSL certificate.
  final String timeDatabaseSslCertificateExpires;

  /// The expiration date and time of the Oracle REST Data Services (ORDS)certificate.
  final String timeOrdsCertificateExpires;

  /// The time zone of the Autonomous VM cluster.
  final String timeZone;

  /// The total number of Autonomous Container Databases that can be created with the allocated local storage.
  final int totalContainerDatabases;

  GetCloudAutonomousVmClusterResult({
    required this.arn,
    required this.autonomousDataStoragePercentage,
    required this.autonomousDataStorageSizeInTbs,
    required this.availableAutonomousDataStorageSizeInTbs,
    required this.availableContainerDatabases,
    required this.availableCpus,
    required this.cloudExadataInfrastructureArn,
    required this.cloudExadataInfrastructureId,
    required this.computeModel,
    required this.cpuCoreCount,
    required this.cpuCoreCountPerNode,
    required this.cpuPercentage,
    required this.createdAt,
    required this.dataStorageSizeInGbs,
    required this.dataStorageSizeInTbs,
    required this.dbServers,
    required this.description,
    required this.displayName,
    required this.domain,
    required this.exadataStorageInTbsLowestScaledValue,
    required this.hostname,
    required this.id,
    required this.isMtlsEnabledVmCluster,
    required this.licenseModel,
    required this.maintenanceWindows,
    required this.maxAcdsLowestScaledValue,
    required this.memoryPerOracleComputeUnitInGbs,
    required this.memorySizeInGbs,
    required this.nodeCount,
    required this.nonProvisionableAutonomousContainerDatabases,
    required this.ociResourceAnchorName,
    required this.ociUrl,
    required this.ocid,
    required this.odbNetworkArn,
    required this.odbNetworkId,
    required this.odbNodeStorageSizeInGbs,
    required this.percentProgress,
    required this.provisionableAutonomousContainerDatabases,
    required this.provisionedAutonomousContainerDatabases,
    required this.provisionedCpus,
    required this.reclaimableCpus,
    required this.region,
    required this.reservedCpus,
    required this.scanListenerPortNonTls,
    required this.scanListenerPortTls,
    required this.shape,
    required this.status,
    required this.statusReason,
    required this.tags,
    required this.timeDatabaseSslCertificateExpires,
    required this.timeOrdsCertificateExpires,
    required this.timeZone,
    required this.totalContainerDatabases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['autonomousDataStoragePercentage'] = autonomousDataStoragePercentage;
    map['autonomousDataStorageSizeInTbs'] = autonomousDataStorageSizeInTbs;
    map['availableAutonomousDataStorageSizeInTbs'] =
        availableAutonomousDataStorageSizeInTbs;
    map['availableContainerDatabases'] = availableContainerDatabases;
    map['availableCpus'] = availableCpus;
    map['cloudExadataInfrastructureArn'] = cloudExadataInfrastructureArn;
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    map['computeModel'] = computeModel;
    map['cpuCoreCount'] = cpuCoreCount;
    map['cpuCoreCountPerNode'] = cpuCoreCountPerNode;
    map['cpuPercentage'] = cpuPercentage;
    map['createdAt'] = createdAt;
    map['dataStorageSizeInGbs'] = dataStorageSizeInGbs;
    map['dataStorageSizeInTbs'] = dataStorageSizeInTbs;
    map['dbServers'] = dbServers;
    map['description'] = description;
    map['displayName'] = displayName;
    map['domain'] = domain;
    map['exadataStorageInTbsLowestScaledValue'] =
        exadataStorageInTbsLowestScaledValue;
    map['hostname'] = hostname;
    map['id'] = id;
    map['isMtlsEnabledVmCluster'] = isMtlsEnabledVmCluster;
    map['licenseModel'] = licenseModel;
    map['maintenanceWindows'] = Input.encodeList<
        GetCloudAutonomousVmClusterMaintenanceWindow,
        Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap());
    map['maxAcdsLowestScaledValue'] = maxAcdsLowestScaledValue;
    map['memoryPerOracleComputeUnitInGbs'] = memoryPerOracleComputeUnitInGbs;
    map['memorySizeInGbs'] = memorySizeInGbs;
    map['nodeCount'] = nodeCount;
    map['nonProvisionableAutonomousContainerDatabases'] =
        nonProvisionableAutonomousContainerDatabases;
    map['ociResourceAnchorName'] = ociResourceAnchorName;
    map['ociUrl'] = ociUrl;
    map['ocid'] = ocid;
    map['odbNetworkArn'] = odbNetworkArn;
    map['odbNetworkId'] = odbNetworkId;
    map['odbNodeStorageSizeInGbs'] = odbNodeStorageSizeInGbs;
    map['percentProgress'] = percentProgress;
    map['provisionableAutonomousContainerDatabases'] =
        provisionableAutonomousContainerDatabases;
    map['provisionedAutonomousContainerDatabases'] =
        provisionedAutonomousContainerDatabases;
    map['provisionedCpus'] = provisionedCpus;
    map['reclaimableCpus'] = reclaimableCpus;
    map['region'] = region;
    map['reservedCpus'] = reservedCpus;
    map['scanListenerPortNonTls'] = scanListenerPortNonTls;
    map['scanListenerPortTls'] = scanListenerPortTls;
    map['shape'] = shape;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['tags'] = tags;
    map['timeDatabaseSslCertificateExpires'] =
        timeDatabaseSslCertificateExpires;
    map['timeOrdsCertificateExpires'] = timeOrdsCertificateExpires;
    map['timeZone'] = timeZone;
    map['totalContainerDatabases'] = totalContainerDatabases;
    return map;
  }

  factory GetCloudAutonomousVmClusterResult.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClusterResult(
      arn: map['arn'] as String,
      autonomousDataStoragePercentage:
          map['autonomousDataStoragePercentage'] as double,
      autonomousDataStorageSizeInTbs:
          map['autonomousDataStorageSizeInTbs'] as double,
      availableAutonomousDataStorageSizeInTbs:
          map['availableAutonomousDataStorageSizeInTbs'] as double,
      availableContainerDatabases: map['availableContainerDatabases'] as int,
      availableCpus: map['availableCpus'] as double,
      cloudExadataInfrastructureArn:
          map['cloudExadataInfrastructureArn'] as String,
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      computeModel: map['computeModel'] as String,
      cpuCoreCount: map['cpuCoreCount'] as int,
      cpuCoreCountPerNode: map['cpuCoreCountPerNode'] as int,
      cpuPercentage: map['cpuPercentage'] as double,
      createdAt: map['createdAt'] as String,
      dataStorageSizeInGbs: map['dataStorageSizeInGbs'] as double,
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] as double,
      dbServers: (map['dbServers'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      domain: map['domain'] as String,
      exadataStorageInTbsLowestScaledValue:
          map['exadataStorageInTbsLowestScaledValue'] as double,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      isMtlsEnabledVmCluster: map['isMtlsEnabledVmCluster'] as bool,
      licenseModel: map['licenseModel'] as String,
      maintenanceWindows:
          Input.decodeList<GetCloudAutonomousVmClusterMaintenanceWindow>(
              map['maintenanceWindows'],
              (value) => GetCloudAutonomousVmClusterMaintenanceWindow.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxAcdsLowestScaledValue: map['maxAcdsLowestScaledValue'] as int,
      memoryPerOracleComputeUnitInGbs:
          map['memoryPerOracleComputeUnitInGbs'] as int,
      memorySizeInGbs: map['memorySizeInGbs'] as int,
      nodeCount: map['nodeCount'] as int,
      nonProvisionableAutonomousContainerDatabases:
          map['nonProvisionableAutonomousContainerDatabases'] as int,
      ociResourceAnchorName: map['ociResourceAnchorName'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      odbNetworkArn: map['odbNetworkArn'] as String,
      odbNetworkId: map['odbNetworkId'] as String,
      odbNodeStorageSizeInGbs: map['odbNodeStorageSizeInGbs'] as int,
      percentProgress: map['percentProgress'] as double,
      provisionableAutonomousContainerDatabases:
          map['provisionableAutonomousContainerDatabases'] as int,
      provisionedAutonomousContainerDatabases:
          map['provisionedAutonomousContainerDatabases'] as int,
      provisionedCpus: map['provisionedCpus'] as double,
      reclaimableCpus: map['reclaimableCpus'] as double,
      region: map['region'] as String,
      reservedCpus: map['reservedCpus'] as double,
      scanListenerPortNonTls: map['scanListenerPortNonTls'] as int,
      scanListenerPortTls: map['scanListenerPortTls'] as int,
      shape: map['shape'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeDatabaseSslCertificateExpires:
          map['timeDatabaseSslCertificateExpires'] as String,
      timeOrdsCertificateExpires: map['timeOrdsCertificateExpires'] as String,
      timeZone: map['timeZone'] as String,
      totalContainerDatabases: map['totalContainerDatabases'] as int,
    );
  }
}
