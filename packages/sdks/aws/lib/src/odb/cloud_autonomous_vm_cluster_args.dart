// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_autonomous_vm_cluster_maintenance_window.dart';
import 'cloud_autonomous_vm_cluster_timeouts.dart';

/// {@template pulumi_odb_cloud_autonomous_vm_cluster_cloud_autonomous_vm_cluster_args_doc}
/// The set of arguments for CloudAutonomousVmCluster.
/// {@endtemplate}
/// {@macro pulumi_odb_cloud_autonomous_vm_cluster_cloud_autonomous_vm_cluster_args_doc}
class CloudAutonomousVmClusterArgs {
  /// The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  final pulumi.Input<double> autonomousDataStorageSizeInTbs;
  /// Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureArn;
  /// Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// The number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<int> cpuCoreCountPerNode;
  /// The database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<List<String>> dbServers;
  /// The description of the Autonomous VM cluster.
  final pulumi.Input<String>? description;
  /// The display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String> displayName;
  /// Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<bool>? isMtlsEnabledVmCluster;
  /// The license model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? licenseModel;
  /// The maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<CloudAutonomousVmClusterMaintenanceWindow> maintenanceWindow;
  /// The amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  final pulumi.Input<int> memoryPerOracleComputeUnitInGbs;
  /// ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  final pulumi.Input<String>? odbNetworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  final pulumi.Input<int> scanListenerPortNonTls;
  /// The SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  final pulumi.Input<int> scanListenerPortTls;
  /// A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String>? timeZone;
  final pulumi.Input<CloudAutonomousVmClusterTimeouts>? timeouts;
  /// The total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  final pulumi.Input<int> totalContainerDatabases;

  /// Creates a new [CloudAutonomousVmClusterArgs].
  /// [autonomousDataStorageSizeInTbs] The data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  /// [cloudExadataInfrastructureArn] Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [cloudExadataInfrastructureId] Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [cpuCoreCountPerNode] The number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [dbServers] The database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [description] The description of the Autonomous VM cluster.
  /// [displayName] The display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [isMtlsEnabledVmCluster] Indicates whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [licenseModel] The license model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  /// [maintenanceWindow] The maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [memoryPerOracleComputeUnitInGbs] The amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  /// [odbNetworkArn] ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [odbNetworkId] Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloud_exadata_infrastructure_id` and `odb_network_id` or `cloud_exadata_infrastructure_arn` and `odb_network_arn` must be used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scanListenerPortNonTls] The SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  /// [scanListenerPortTls] The SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  /// [tags] A map of tags to assign to the exadata infrastructure. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeZone] The time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [timeouts] Optional.
  /// [totalContainerDatabases] The total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  CloudAutonomousVmClusterArgs({
    required this.autonomousDataStorageSizeInTbs,
    this.cloudExadataInfrastructureArn,
    this.cloudExadataInfrastructureId,
    required this.cpuCoreCountPerNode,
    required this.dbServers,
    this.description,
    required this.displayName,
    this.isMtlsEnabledVmCluster,
    this.licenseModel,
    required this.maintenanceWindow,
    required this.memoryPerOracleComputeUnitInGbs,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.region,
    required this.scanListenerPortNonTls,
    required this.scanListenerPortTls,
    this.tags,
    this.timeZone,
    this.timeouts,
    required this.totalContainerDatabases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDataStorageSizeInTbs': autonomousDataStorageSizeInTbs,
      'cloudExadataInfrastructureArn': ?cloudExadataInfrastructureArn,
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'cpuCoreCountPerNode': cpuCoreCountPerNode,
      'dbServers': dbServers,
      'description': ?description,
      'displayName': displayName,
      'isMtlsEnabledVmCluster': ?isMtlsEnabledVmCluster,
      'licenseModel': ?licenseModel,
      'maintenanceWindow': pulumi.Input.mapInputValue<CloudAutonomousVmClusterMaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'memoryPerOracleComputeUnitInGbs': memoryPerOracleComputeUnitInGbs,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'region': ?region,
      'scanListenerPortNonTls': scanListenerPortNonTls,
      'scanListenerPortTls': scanListenerPortTls,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CloudAutonomousVmClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'totalContainerDatabases': totalContainerDatabases,
    };
  }

  factory CloudAutonomousVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterArgs(
      autonomousDataStorageSizeInTbs: (map['autonomousDataStorageSizeInTbs'] as double).input(),
      cloudExadataInfrastructureArn: map['cloudExadataInfrastructureArn'] == null ? null : (map['cloudExadataInfrastructureArn'] as String).input(),
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : (map['cloudExadataInfrastructureId'] as String).input(),
      cpuCoreCountPerNode: (map['cpuCoreCountPerNode'] as int).input(),
      dbServers: ((map['dbServers'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      isMtlsEnabledVmCluster: map['isMtlsEnabledVmCluster'] == null ? null : (map['isMtlsEnabledVmCluster'] as bool).input(),
      licenseModel: map['licenseModel'] == null ? null : (map['licenseModel'] as String).input(),
      maintenanceWindow: (CloudAutonomousVmClusterMaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())).input(),
      memoryPerOracleComputeUnitInGbs: (map['memoryPerOracleComputeUnitInGbs'] as int).input(),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : (map['odbNetworkArn'] as String).input(),
      odbNetworkId: map['odbNetworkId'] == null ? null : (map['odbNetworkId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      scanListenerPortNonTls: (map['scanListenerPortNonTls'] as int).input(),
      scanListenerPortTls: (map['scanListenerPortTls'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (CloudAutonomousVmClusterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      totalContainerDatabases: (map['totalContainerDatabases'] as int).input(),
    );
  }
}

