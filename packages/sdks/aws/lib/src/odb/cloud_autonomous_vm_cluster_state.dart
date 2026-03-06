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
      autonomousDataStoragePercentage: (() { final guardedValue = map['autonomousDataStoragePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      autonomousDataStorageSizeInTbs: (() { final guardedValue = map['autonomousDataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      availableAutonomousDataStorageSizeInTbs: (() { final guardedValue = map['availableAutonomousDataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      availableContainerDatabases: (() { final guardedValue = map['availableContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      availableCpus: (() { final guardedValue = map['availableCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuCoreCountPerNode: (() { final guardedValue = map['cpuCoreCountPerNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuPercentage: (() { final guardedValue = map['cpuPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataStorageSizeInGbs: (() { final guardedValue = map['dataStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dbServers: (() { final guardedValue = map['dbServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exadataStorageInTbsLowestScaledValue: (() { final guardedValue = map['exadataStorageInTbsLowestScaledValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isMtlsEnabledVmCluster: (() { final guardedValue = map['isMtlsEnabledVmCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAutonomousVmClusterMaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxAcdsLowestScaledValue: (() { final guardedValue = map['maxAcdsLowestScaledValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memoryPerOracleComputeUnitInGbs: (() { final guardedValue = map['memoryPerOracleComputeUnitInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      memorySizeInGbs: (() { final guardedValue = map['memorySizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nonProvisionableAutonomousContainerDatabases: (() { final guardedValue = map['nonProvisionableAutonomousContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNodeStorageSizeInGbs: (() { final guardedValue = map['odbNodeStorageSizeInGbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      provisionableAutonomousContainerDatabases: (() { final guardedValue = map['provisionableAutonomousContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedAutonomousContainerDatabases: (() { final guardedValue = map['provisionedAutonomousContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      provisionedCpus: (() { final guardedValue = map['provisionedCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      reclaimableCpus: (() { final guardedValue = map['reclaimableCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedCpus: (() { final guardedValue = map['reservedCpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      scanListenerPortNonTls: (() { final guardedValue = map['scanListenerPortNonTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scanListenerPortTls: (() { final guardedValue = map['scanListenerPortTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeDatabaseSslCertificateExpires: (() { final guardedValue = map['timeDatabaseSslCertificateExpires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeOrdsCertificateExpires: (() { final guardedValue = map['timeOrdsCertificateExpires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAutonomousVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalContainerDatabases: (() { final guardedValue = map['totalContainerDatabases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

