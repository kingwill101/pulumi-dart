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
    pulumi.Output<String>? arn,
    pulumi.Output<double>? autonomousDataStoragePercentage,
    pulumi.Output<double>? autonomousDataStorageSizeInTbs,
    pulumi.Output<double>? availableAutonomousDataStorageSizeInTbs,
    pulumi.Output<int>? availableContainerDatabases,
    pulumi.Output<double>? availableCpus,
    pulumi.Output<String>? cloudExadataInfrastructureArn,
    pulumi.Output<String>? cloudExadataInfrastructureId,
    pulumi.Output<String>? computeModel,
    pulumi.Output<int>? cpuCoreCount,
    pulumi.Output<int>? cpuCoreCountPerNode,
    pulumi.Output<double>? cpuPercentage,
    pulumi.Output<String>? createdAt,
    pulumi.Output<double>? dataStorageSizeInGbs,
    pulumi.Output<double>? dataStorageSizeInTbs,
    pulumi.Output<List<String>>? dbServers,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? domain,
    pulumi.Output<double>? exadataStorageInTbsLowestScaledValue,
    pulumi.Output<String>? hostname,
    pulumi.Output<bool>? isMtlsEnabledVmCluster,
    pulumi.Output<String>? licenseModel,
    pulumi.Output<CloudAutonomousVmClusterMaintenanceWindow>? maintenanceWindow,
    pulumi.Output<int>? maxAcdsLowestScaledValue,
    pulumi.Output<int>? memoryPerOracleComputeUnitInGbs,
    pulumi.Output<int>? memorySizeInGbs,
    pulumi.Output<int>? nodeCount,
    pulumi.Output<int>? nonProvisionableAutonomousContainerDatabases,
    pulumi.Output<String>? ociResourceAnchorName,
    pulumi.Output<String>? ociUrl,
    pulumi.Output<String>? ocid,
    pulumi.Output<String>? odbNetworkArn,
    pulumi.Output<String>? odbNetworkId,
    pulumi.Output<int>? odbNodeStorageSizeInGbs,
    pulumi.Output<double>? percentProgress,
    pulumi.Output<int>? provisionableAutonomousContainerDatabases,
    pulumi.Output<int>? provisionedAutonomousContainerDatabases,
    pulumi.Output<double>? provisionedCpus,
    pulumi.Output<double>? reclaimableCpus,
    pulumi.Output<String>? region,
    pulumi.Output<double>? reservedCpus,
    pulumi.Output<int>? scanListenerPortNonTls,
    pulumi.Output<int>? scanListenerPortTls,
    pulumi.Output<String>? shape,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? timeDatabaseSslCertificateExpires,
    pulumi.Output<String>? timeOrdsCertificateExpires,
    pulumi.Output<String>? timeZone,
    pulumi.Output<CloudAutonomousVmClusterTimeouts>? timeouts,
    pulumi.Output<int>? totalContainerDatabases,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autonomousDataStoragePercentage = pulumi.Input.asOptionalInput<double>(autonomousDataStoragePercentage),
      autonomousDataStorageSizeInTbs = pulumi.Input.asOptionalInput<double>(autonomousDataStorageSizeInTbs),
      availableAutonomousDataStorageSizeInTbs = pulumi.Input.asOptionalInput<double>(availableAutonomousDataStorageSizeInTbs),
      availableContainerDatabases = pulumi.Input.asOptionalInput<int>(availableContainerDatabases),
      availableCpus = pulumi.Input.asOptionalInput<double>(availableCpus),
      cloudExadataInfrastructureArn = pulumi.Input.asOptionalInput<String>(cloudExadataInfrastructureArn),
      cloudExadataInfrastructureId = pulumi.Input.asOptionalInput<String>(cloudExadataInfrastructureId),
      computeModel = pulumi.Input.asOptionalInput<String>(computeModel),
      cpuCoreCount = pulumi.Input.asOptionalInput<int>(cpuCoreCount),
      cpuCoreCountPerNode = pulumi.Input.asOptionalInput<int>(cpuCoreCountPerNode),
      cpuPercentage = pulumi.Input.asOptionalInput<double>(cpuPercentage),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      dataStorageSizeInGbs = pulumi.Input.asOptionalInput<double>(dataStorageSizeInGbs),
      dataStorageSizeInTbs = pulumi.Input.asOptionalInput<double>(dataStorageSizeInTbs),
      dbServers = pulumi.Input.asOptionalInput<List<String>>(dbServers),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      exadataStorageInTbsLowestScaledValue = pulumi.Input.asOptionalInput<double>(exadataStorageInTbsLowestScaledValue),
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      isMtlsEnabledVmCluster = pulumi.Input.asOptionalInput<bool>(isMtlsEnabledVmCluster),
      licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
      maintenanceWindow = pulumi.Input.asOptionalInput<CloudAutonomousVmClusterMaintenanceWindow>(maintenanceWindow),
      maxAcdsLowestScaledValue = pulumi.Input.asOptionalInput<int>(maxAcdsLowestScaledValue),
      memoryPerOracleComputeUnitInGbs = pulumi.Input.asOptionalInput<int>(memoryPerOracleComputeUnitInGbs),
      memorySizeInGbs = pulumi.Input.asOptionalInput<int>(memorySizeInGbs),
      nodeCount = pulumi.Input.asOptionalInput<int>(nodeCount),
      nonProvisionableAutonomousContainerDatabases = pulumi.Input.asOptionalInput<int>(nonProvisionableAutonomousContainerDatabases),
      ociResourceAnchorName = pulumi.Input.asOptionalInput<String>(ociResourceAnchorName),
      ociUrl = pulumi.Input.asOptionalInput<String>(ociUrl),
      ocid = pulumi.Input.asOptionalInput<String>(ocid),
      odbNetworkArn = pulumi.Input.asOptionalInput<String>(odbNetworkArn),
      odbNetworkId = pulumi.Input.asOptionalInput<String>(odbNetworkId),
      odbNodeStorageSizeInGbs = pulumi.Input.asOptionalInput<int>(odbNodeStorageSizeInGbs),
      percentProgress = pulumi.Input.asOptionalInput<double>(percentProgress),
      provisionableAutonomousContainerDatabases = pulumi.Input.asOptionalInput<int>(provisionableAutonomousContainerDatabases),
      provisionedAutonomousContainerDatabases = pulumi.Input.asOptionalInput<int>(provisionedAutonomousContainerDatabases),
      provisionedCpus = pulumi.Input.asOptionalInput<double>(provisionedCpus),
      reclaimableCpus = pulumi.Input.asOptionalInput<double>(reclaimableCpus),
      region = pulumi.Input.asOptionalInput<String>(region),
      reservedCpus = pulumi.Input.asOptionalInput<double>(reservedCpus),
      scanListenerPortNonTls = pulumi.Input.asOptionalInput<int>(scanListenerPortNonTls),
      scanListenerPortTls = pulumi.Input.asOptionalInput<int>(scanListenerPortTls),
      shape = pulumi.Input.asOptionalInput<String>(shape),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeDatabaseSslCertificateExpires = pulumi.Input.asOptionalInput<String>(timeDatabaseSslCertificateExpires),
      timeOrdsCertificateExpires = pulumi.Input.asOptionalInput<String>(timeOrdsCertificateExpires),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      timeouts = pulumi.Input.asOptionalInput<CloudAutonomousVmClusterTimeouts>(timeouts),
      totalContainerDatabases = pulumi.Input.asOptionalInput<int>(totalContainerDatabases);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autonomousDataStoragePercentage: map['autonomousDataStoragePercentage'] == null ? null : pulumi.Output.create<double>(map['autonomousDataStoragePercentage'] as double),
      autonomousDataStorageSizeInTbs: map['autonomousDataStorageSizeInTbs'] == null ? null : pulumi.Output.create<double>(map['autonomousDataStorageSizeInTbs'] as double),
      availableAutonomousDataStorageSizeInTbs: map['availableAutonomousDataStorageSizeInTbs'] == null ? null : pulumi.Output.create<double>(map['availableAutonomousDataStorageSizeInTbs'] as double),
      availableContainerDatabases: map['availableContainerDatabases'] == null ? null : pulumi.Output.create<int>(map['availableContainerDatabases'] as int),
      availableCpus: map['availableCpus'] == null ? null : pulumi.Output.create<double>(map['availableCpus'] as double),
      cloudExadataInfrastructureArn: map['cloudExadataInfrastructureArn'] == null ? null : pulumi.Output.create<String>(map['cloudExadataInfrastructureArn'] as String),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : pulumi.Output.create<String>(map['cloudExadataInfrastructureId'] as String),
      computeModel: map['computeModel'] == null ? null : pulumi.Output.create<String>(map['computeModel'] as String),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : pulumi.Output.create<int>(map['cpuCoreCount'] as int),
      cpuCoreCountPerNode: map['cpuCoreCountPerNode'] == null ? null : pulumi.Output.create<int>(map['cpuCoreCountPerNode'] as int),
      cpuPercentage: map['cpuPercentage'] == null ? null : pulumi.Output.create<double>(map['cpuPercentage'] as double),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      dataStorageSizeInGbs: map['dataStorageSizeInGbs'] == null ? null : pulumi.Output.create<double>(map['dataStorageSizeInGbs'] as double),
      dataStorageSizeInTbs: map['dataStorageSizeInTbs'] == null ? null : pulumi.Output.create<double>(map['dataStorageSizeInTbs'] as double),
      dbServers: map['dbServers'] == null ? null : pulumi.Output.create<List<String>>((map['dbServers'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      exadataStorageInTbsLowestScaledValue: map['exadataStorageInTbsLowestScaledValue'] == null ? null : pulumi.Output.create<double>(map['exadataStorageInTbsLowestScaledValue'] as double),
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      isMtlsEnabledVmCluster: map['isMtlsEnabledVmCluster'] == null ? null : pulumi.Output.create<bool>(map['isMtlsEnabledVmCluster'] as bool),
      licenseModel: map['licenseModel'] == null ? null : pulumi.Output.create<String>(map['licenseModel'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<CloudAutonomousVmClusterMaintenanceWindow>(CloudAutonomousVmClusterMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      maxAcdsLowestScaledValue: map['maxAcdsLowestScaledValue'] == null ? null : pulumi.Output.create<int>(map['maxAcdsLowestScaledValue'] as int),
      memoryPerOracleComputeUnitInGbs: map['memoryPerOracleComputeUnitInGbs'] == null ? null : pulumi.Output.create<int>(map['memoryPerOracleComputeUnitInGbs'] as int),
      memorySizeInGbs: map['memorySizeInGbs'] == null ? null : pulumi.Output.create<int>(map['memorySizeInGbs'] as int),
      nodeCount: map['nodeCount'] == null ? null : pulumi.Output.create<int>(map['nodeCount'] as int),
      nonProvisionableAutonomousContainerDatabases: map['nonProvisionableAutonomousContainerDatabases'] == null ? null : pulumi.Output.create<int>(map['nonProvisionableAutonomousContainerDatabases'] as int),
      ociResourceAnchorName: map['ociResourceAnchorName'] == null ? null : pulumi.Output.create<String>(map['ociResourceAnchorName'] as String),
      ociUrl: map['ociUrl'] == null ? null : pulumi.Output.create<String>(map['ociUrl'] as String),
      ocid: map['ocid'] == null ? null : pulumi.Output.create<String>(map['ocid'] as String),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : pulumi.Output.create<String>(map['odbNetworkArn'] as String),
      odbNetworkId: map['odbNetworkId'] == null ? null : pulumi.Output.create<String>(map['odbNetworkId'] as String),
      odbNodeStorageSizeInGbs: map['odbNodeStorageSizeInGbs'] == null ? null : pulumi.Output.create<int>(map['odbNodeStorageSizeInGbs'] as int),
      percentProgress: map['percentProgress'] == null ? null : pulumi.Output.create<double>(map['percentProgress'] as double),
      provisionableAutonomousContainerDatabases: map['provisionableAutonomousContainerDatabases'] == null ? null : pulumi.Output.create<int>(map['provisionableAutonomousContainerDatabases'] as int),
      provisionedAutonomousContainerDatabases: map['provisionedAutonomousContainerDatabases'] == null ? null : pulumi.Output.create<int>(map['provisionedAutonomousContainerDatabases'] as int),
      provisionedCpus: map['provisionedCpus'] == null ? null : pulumi.Output.create<double>(map['provisionedCpus'] as double),
      reclaimableCpus: map['reclaimableCpus'] == null ? null : pulumi.Output.create<double>(map['reclaimableCpus'] as double),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      reservedCpus: map['reservedCpus'] == null ? null : pulumi.Output.create<double>(map['reservedCpus'] as double),
      scanListenerPortNonTls: map['scanListenerPortNonTls'] == null ? null : pulumi.Output.create<int>(map['scanListenerPortNonTls'] as int),
      scanListenerPortTls: map['scanListenerPortTls'] == null ? null : pulumi.Output.create<int>(map['scanListenerPortTls'] as int),
      shape: map['shape'] == null ? null : pulumi.Output.create<String>(map['shape'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeDatabaseSslCertificateExpires: map['timeDatabaseSslCertificateExpires'] == null ? null : pulumi.Output.create<String>(map['timeDatabaseSslCertificateExpires'] as String),
      timeOrdsCertificateExpires: map['timeOrdsCertificateExpires'] == null ? null : pulumi.Output.create<String>(map['timeOrdsCertificateExpires'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CloudAutonomousVmClusterTimeouts>(CloudAutonomousVmClusterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      totalContainerDatabases: map['totalContainerDatabases'] == null ? null : pulumi.Output.create<int>(map['totalContainerDatabases'] as int),
    );
  }
}

