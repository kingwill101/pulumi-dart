import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_autonomous_vm_cluster_maintenance_window/cloud_autonomous_vm_cluster_maintenance_window.dart';
import '../cloud_autonomous_vm_cluster_timeouts/cloud_autonomous_vm_cluster_timeouts.dart';
import 'cloud_autonomous_vm_cluster_args.dart';

/// Resource managing cloud autonomous vm cluster in AWS for Oracle Database@AWS.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import cloud autonomous vm cluster `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/cloudAutonomousVmCluster:CloudAutonomousVmCluster example example
/// ```
class CloudAutonomousVmCluster extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the Exadata infrastructure.
  late final pulumi.Output<String> arn;

  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  late final pulumi.Output<double> autonomousDataStoragePercentage;

  /// The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  late final pulumi.Output<double> autonomousDataStorageSizeInTbs;

  /// The available data storage space for Autonomous Databases in the Autonomous VM cluster, in TB.
  late final pulumi.Output<double> availableAutonomousDataStorageSizeInTbs;

  /// The number of Autonomous CDBs that you can create with the currently available storage.
  late final pulumi.Output<int> availableContainerDatabases;

  /// The number of CPU cores available for allocation to Autonomous Databases.
  late final pulumi.Output<double> availableCpus;

  /// Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> cloudExadataInfrastructureArn;

  /// Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> cloudExadataInfrastructureId;

  /// The compute model of the Autonomous VM cluster: ECPU or OCPU.
  late final pulumi.Output<String> computeModel;

  /// The total number of CPU cores in the Autonomous VM cluster.
  late final pulumi.Output<int> cpuCoreCount;

  /// The number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> cpuCoreCountPerNode;

  /// The percentage of total CPU cores currently in use in the Autonomous VM cluster.
  late final pulumi.Output<double> cpuPercentage;

  /// The date and time when the Autonomous VM cluster was created.
  late final pulumi.Output<String> createdAt;

  /// The total data storage allocated to the Autonomous VM cluster, in GB.
  late final pulumi.Output<double> dataStorageSizeInGbs;

  /// The total data storage allocated to the Autonomous VM cluster, in TB.
  late final pulumi.Output<double> dataStorageSizeInTbs;

  /// The database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<List<String>> dbServers;

  /// The description of the Autonomous VM cluster.
  late final pulumi.Output<String?> description;

  /// The display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> displayName;

  /// The domain name of the Autonomous VM cluster.
  late final pulumi.Output<String> domain;

  /// The minimum value to which you can scale down the Exadata storage, in TB.
  late final pulumi.Output<double> exadataStorageInTbsLowestScaledValue;

  /// The hostname of the Autonomous VM cluster.
  late final pulumi.Output<String> hostname;

  /// Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<bool> isMtlsEnabledVmCluster;

  /// The license model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> licenseModel;

  /// The maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<CloudAutonomousVmClusterMaintenanceWindow>
      maintenanceWindow;

  /// The minimum value to which you can scale down the maximum number of Autonomous CDBs.
  late final pulumi.Output<int> maxAcdsLowestScaledValue;

  /// The amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> memoryPerOracleComputeUnitInGbs;

  /// The total amount of memory allocated to the Autonomous VM cluster, in gigabytes(GB).
  late final pulumi.Output<int> memorySizeInGbs;

  /// The number of database server nodes in the Autonomous VM cluster.
  late final pulumi.Output<int> nodeCount;

  /// The number of Autonomous CDBs that can't be provisioned because of resource constraints.
  late final pulumi.Output<int> nonProvisionableAutonomousContainerDatabases;

  /// The name of the OCI resource anchor associated with this Autonomous VM cluster.
  late final pulumi.Output<String> ociResourceAnchorName;

  /// The URL for accessing the OCI console page for this Autonomous VM cluster.
  late final pulumi.Output<String> ociUrl;

  /// The Oracle Cloud Identifier (OCID) of the Autonomous VM cluster.
  late final pulumi.Output<String> ocid;

  /// ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> odbNetworkArn;

  /// Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  late final pulumi.Output<String> odbNetworkId;

  /// The local node storage allocated to the Autonomous VM cluster, in gigabytes (GB).
  late final pulumi.Output<int> odbNodeStorageSizeInGbs;

  /// The progress of the current operation on the Autonomous VM cluster, as a percentage.
  late final pulumi.Output<double> percentProgress;

  /// The number of Autonomous CDBs that can be provisioned in the Autonomous VM cluster.
  late final pulumi.Output<int> provisionableAutonomousContainerDatabases;

  /// The number of Autonomous CDBs currently provisioned in the Autonomous VM cluster.
  late final pulumi.Output<int> provisionedAutonomousContainerDatabases;

  /// The number of CPUs provisioned in the Autonomous VM cluster.
  late final pulumi.Output<double> provisionedCpus;

  /// The number of CPU cores that can be reclaimed from terminated or scaled-down Autonomous Databases.
  late final pulumi.Output<double> reclaimableCpus;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of CPU cores reserved for system operations and redundancy.
  late final pulumi.Output<double> reservedCpus;

  /// The SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> scanListenerPortNonTls;

  /// The SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> scanListenerPortTls;

  /// The shape of the Exadata infrastructure for the Autonomous VM cluster.
  late final pulumi.Output<String> shape;

  /// The status of the Autonomous VM cluster. Possible values include CREATING, AVAILABLE, UPDATING, DELETING, DELETED, FAILED.
  late final pulumi.Output<String> status;

  /// Additional information about the current status of the Autonomous VM cluster.
  late final pulumi.Output<String> statusReason;

  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The combined set of user-defined and provider-defined tags.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The expiration date and time of the database SSL certificate.
  late final pulumi.Output<String> timeDatabaseSslCertificateExpires;

  /// The expiration date and time of the ORDS certificate.
  late final pulumi.Output<String> timeOrdsCertificateExpires;

  /// The time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> timeZone;
  late final pulumi.Output<CloudAutonomousVmClusterTimeouts?> timeouts;

  /// The total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  late final pulumi.Output<int> totalContainerDatabases;

  CloudAutonomousVmCluster(
    String name, {
    CloudAutonomousVmClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/cloudAutonomousVmCluster:CloudAutonomousVmCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autonomousDataStoragePercentage =
        registerOutput<double>('autonomousDataStoragePercentage');
    this.autonomousDataStorageSizeInTbs =
        registerOutput<double>('autonomousDataStorageSizeInTbs');
    this.availableAutonomousDataStorageSizeInTbs =
        registerOutput<double>('availableAutonomousDataStorageSizeInTbs');
    this.availableContainerDatabases =
        registerOutput<int>('availableContainerDatabases');
    this.availableCpus = registerOutput<double>('availableCpus');
    this.cloudExadataInfrastructureArn =
        registerOutput<String>('cloudExadataInfrastructureArn');
    this.cloudExadataInfrastructureId =
        registerOutput<String>('cloudExadataInfrastructureId');
    this.computeModel = registerOutput<String>('computeModel');
    this.cpuCoreCount = registerOutput<int>('cpuCoreCount');
    this.cpuCoreCountPerNode = registerOutput<int>('cpuCoreCountPerNode');
    this.cpuPercentage = registerOutput<double>('cpuPercentage');
    this.createdAt = registerOutput<String>('createdAt');
    this.dataStorageSizeInGbs = registerOutput<double>('dataStorageSizeInGbs');
    this.dataStorageSizeInTbs = registerOutput<double>('dataStorageSizeInTbs');
    this.dbServers = registerOutput<List<String>>('dbServers');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.domain = registerOutput<String>('domain');
    this.exadataStorageInTbsLowestScaledValue =
        registerOutput<double>('exadataStorageInTbsLowestScaledValue');
    this.hostname = registerOutput<String>('hostname');
    this.isMtlsEnabledVmCluster =
        registerOutput<bool>('isMtlsEnabledVmCluster');
    this.licenseModel = registerOutput<String>('licenseModel');
    this.maintenanceWindow =
        registerOutput<CloudAutonomousVmClusterMaintenanceWindow>(
            'maintenanceWindow');
    this.maxAcdsLowestScaledValue =
        registerOutput<int>('maxAcdsLowestScaledValue');
    this.memoryPerOracleComputeUnitInGbs =
        registerOutput<int>('memoryPerOracleComputeUnitInGbs');
    this.memorySizeInGbs = registerOutput<int>('memorySizeInGbs');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nonProvisionableAutonomousContainerDatabases =
        registerOutput<int>('nonProvisionableAutonomousContainerDatabases');
    this.ociResourceAnchorName =
        registerOutput<String>('ociResourceAnchorName');
    this.ociUrl = registerOutput<String>('ociUrl');
    this.ocid = registerOutput<String>('ocid');
    this.odbNetworkArn = registerOutput<String>('odbNetworkArn');
    this.odbNetworkId = registerOutput<String>('odbNetworkId');
    this.odbNodeStorageSizeInGbs =
        registerOutput<int>('odbNodeStorageSizeInGbs');
    this.percentProgress = registerOutput<double>('percentProgress');
    this.provisionableAutonomousContainerDatabases =
        registerOutput<int>('provisionableAutonomousContainerDatabases');
    this.provisionedAutonomousContainerDatabases =
        registerOutput<int>('provisionedAutonomousContainerDatabases');
    this.provisionedCpus = registerOutput<double>('provisionedCpus');
    this.reclaimableCpus = registerOutput<double>('reclaimableCpus');
    this.region = registerOutput<String>('region');
    this.reservedCpus = registerOutput<double>('reservedCpus');
    this.scanListenerPortNonTls = registerOutput<int>('scanListenerPortNonTls');
    this.scanListenerPortTls = registerOutput<int>('scanListenerPortTls');
    this.shape = registerOutput<String>('shape');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeDatabaseSslCertificateExpires =
        registerOutput<String>('timeDatabaseSslCertificateExpires');
    this.timeOrdsCertificateExpires =
        registerOutput<String>('timeOrdsCertificateExpires');
    this.timeZone = registerOutput<String>('timeZone');
    this.timeouts =
        registerOutput<CloudAutonomousVmClusterTimeouts?>('timeouts');
    this.totalContainerDatabases =
        registerOutput<int>('totalContainerDatabases');
  }
}
