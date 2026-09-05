// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_autonomous_vm_cluster_maintenance_window.dart';
import 'cloud_autonomous_vm_cluster_timeouts.dart';

/// {@template pulumi_odb_cloud_autonomous_vm_cluster_cloud_autonomous_vm_cluster_args_doc}
/// The set of arguments for CloudAutonomousVmCluster.
/// {@endtemplate}
/// {@macro pulumi_odb_cloud_autonomous_vm_cluster_cloud_autonomous_vm_cluster_args_doc}
class CloudAutonomousVmClusterArgs {
  /// Data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  final pulumi.Input<double> autonomousDataStorageSizeInTbs;
  /// Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? cloudExadataInfrastructureArn;
  /// Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? cloudExadataInfrastructureId;
  /// Number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<int> cpuCoreCountPerNode;
  /// Database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<List<String>> dbServers;
  /// Description of the Autonomous VM cluster.
  final pulumi.Input<String?>? description;
  /// Display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String> displayName;
  /// Whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<bool?>? isMtlsEnabledVmCluster;
  /// License model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? licenseModel;
  /// Maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<CloudAutonomousVmClusterMaintenanceWindow> maintenanceWindow;
  /// Amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  final pulumi.Input<int> memoryPerOracleComputeUnitInGbs;
  /// ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? odbNetworkArn;
  /// Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  final pulumi.Input<String?>? odbNetworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  final pulumi.Input<int> scanListenerPortNonTls;
  /// SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  final pulumi.Input<int> scanListenerPortTls;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  final pulumi.Input<String?>? timeZone;
  final pulumi.Input<CloudAutonomousVmClusterTimeouts?>? timeouts;
  /// Total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> totalContainerDatabases;

  /// Creates a new [CloudAutonomousVmClusterArgs].
  /// [autonomousDataStorageSizeInTbs] Data storage size allocated for Autonomous Databases in the Autonomous VM cluster, in TB. Changing this will force terraform to create new resource.
  /// [cloudExadataInfrastructureArn] Exadata infrastructure ARN. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [cloudExadataInfrastructureId] Exadata infrastructure id. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [cpuCoreCountPerNode] Number of CPU cores enabled per node in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [dbServers] Database servers in the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [description] Description of the Autonomous VM cluster.
  /// [displayName] Display name of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [isMtlsEnabledVmCluster] Whether mutual TLS (mTLS) authentication is enabled for the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [licenseModel] License model for the Autonomous VM cluster. Valid values are LICENSE_INCLUDED or BRING_YOUR_OWN_LICENSE. Changing this will force terraform to create new resource.
  /// [maintenanceWindow] Maintenance window of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [memoryPerOracleComputeUnitInGbs] Amount of memory allocated per Oracle Compute Unit, in GB. Changing this will force terraform to create new resource.
  /// [odbNetworkArn] ARN of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [odbNetworkId] Unique identifier of the ODB network associated with this Autonomous VM Cluster. Changing this will force Terraform to create a new resource. Changing this will create a new resource. Either the combination of `cloudExadataInfrastructureId` and `odbNetworkId` or `cloudExadataInfrastructureArn` and `odbNetworkArn` must be used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scanListenerPortNonTls] SCAN listener port for non-TLS (TCP) protocol. The default is 1521. Changing this will force terraform to create new resource.
  /// [scanListenerPortTls] SCAN listener port for TLS (TCP) protocol. The default is 2484. Changing this will force terraform to create new resource.
  /// [tags] Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeZone] Time zone of the Autonomous VM cluster. Changing this will force terraform to create new resource.
  /// [timeouts] Optional.
  /// [totalContainerDatabases] Total number of Autonomous Container Databases that can be created with the allocated local storage. Changing this will force terraform to create new resource.
  const CloudAutonomousVmClusterArgs({
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
      autonomousDataStorageSizeInTbs: pulumi.Input.fromValue((map['autonomousDataStorageSizeInTbs'] as num).toDouble()),
      cloudExadataInfrastructureArn: (() { final guardedValue = map['cloudExadataInfrastructureArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudExadataInfrastructureId: (() { final guardedValue = map['cloudExadataInfrastructureId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCoreCountPerNode: pulumi.Input.fromValue((map['cpuCoreCountPerNode'] as num).toInt()),
      dbServers: pulumi.Input.fromValue((map['dbServers'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      isMtlsEnabledVmCluster: (() { final guardedValue = map['isMtlsEnabledVmCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: pulumi.Input.fromValue(CloudAutonomousVmClusterMaintenanceWindow.fromMap((map['maintenanceWindow']! as Map).cast<String, dynamic>())),
      memoryPerOracleComputeUnitInGbs: pulumi.Input.fromValue((map['memoryPerOracleComputeUnitInGbs'] as num).toInt()),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanListenerPortNonTls: pulumi.Input.fromValue((map['scanListenerPortNonTls'] as num).toInt()),
      scanListenerPortTls: pulumi.Input.fromValue((map['scanListenerPortTls'] as num).toInt()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudAutonomousVmClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      totalContainerDatabases: pulumi.Input.fromValue((map['totalContainerDatabases'] as num).toInt()),
    );
  }
}
