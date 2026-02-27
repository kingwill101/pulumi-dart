// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_autonomous_vm_cluster_maintenance_window/cloud_autonomous_vm_cluster_maintenance_window.dart';
import '../cloud_autonomous_vm_cluster_timeouts/cloud_autonomous_vm_cluster_timeouts.dart';

/// The set of arguments for CloudAutonomousVmCluster.
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
  final pulumi.Input<CloudAutonomousVmClusterMaintenanceWindow>
      maintenanceWindow;

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
    final map = <String, dynamic>{};
    map['autonomousDataStorageSizeInTbs'] = autonomousDataStorageSizeInTbs;
    final cloudExadataInfrastructureArnValue = cloudExadataInfrastructureArn;
    if (cloudExadataInfrastructureArnValue != null) {
      map['cloudExadataInfrastructureArn'] = cloudExadataInfrastructureArnValue;
    }
    final cloudExadataInfrastructureIdValue = cloudExadataInfrastructureId;
    if (cloudExadataInfrastructureIdValue != null) {
      map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureIdValue;
    }
    map['cpuCoreCountPerNode'] = cpuCoreCountPerNode;
    map['dbServers'] = dbServers;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final isMtlsEnabledVmClusterValue = isMtlsEnabledVmCluster;
    if (isMtlsEnabledVmClusterValue != null) {
      map['isMtlsEnabledVmCluster'] = isMtlsEnabledVmClusterValue;
    }
    final licenseModelValue = licenseModel;
    if (licenseModelValue != null) {
      map['licenseModel'] = licenseModelValue;
    }
    map['maintenanceWindow'] = pulumi.Input.mapInputValue<
        CloudAutonomousVmClusterMaintenanceWindow,
        Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap());
    map['memoryPerOracleComputeUnitInGbs'] = memoryPerOracleComputeUnitInGbs;
    final odbNetworkArnValue = odbNetworkArn;
    if (odbNetworkArnValue != null) {
      map['odbNetworkArn'] = odbNetworkArnValue;
    }
    final odbNetworkIdValue = odbNetworkId;
    if (odbNetworkIdValue != null) {
      map['odbNetworkId'] = odbNetworkIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scanListenerPortNonTls'] = scanListenerPortNonTls;
    map['scanListenerPortTls'] = scanListenerPortTls;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          CloudAutonomousVmClusterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    map['totalContainerDatabases'] = totalContainerDatabases;
    return map;
  }

  factory CloudAutonomousVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterArgs(
      autonomousDataStorageSizeInTbs:
          pulumi.Input.asInput<double>(map['autonomousDataStorageSizeInTbs']),
      cloudExadataInfrastructureArn: pulumi.Input.asOptionalInput<String>(
          map['cloudExadataInfrastructureArn']),
      cloudExadataInfrastructureId: pulumi.Input.asOptionalInput<String>(
          map['cloudExadataInfrastructureId']),
      cpuCoreCountPerNode:
          pulumi.Input.asInput<int>(map['cpuCoreCountPerNode']),
      dbServers: pulumi.Input.asInput<List<String>>(map['dbServers']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      isMtlsEnabledVmCluster:
          pulumi.Input.asOptionalInput<bool>(map['isMtlsEnabledVmCluster']),
      licenseModel: pulumi.Input.asOptionalInput<String>(map['licenseModel']),
      maintenanceWindow:
          pulumi.Input.asInput<CloudAutonomousVmClusterMaintenanceWindow>(
              map['maintenanceWindow']),
      memoryPerOracleComputeUnitInGbs:
          pulumi.Input.asInput<int>(map['memoryPerOracleComputeUnitInGbs']),
      odbNetworkArn: pulumi.Input.asOptionalInput<String>(map['odbNetworkArn']),
      odbNetworkId: pulumi.Input.asOptionalInput<String>(map['odbNetworkId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scanListenerPortNonTls:
          pulumi.Input.asInput<int>(map['scanListenerPortNonTls']),
      scanListenerPortTls:
          pulumi.Input.asInput<int>(map['scanListenerPortTls']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
      timeouts: pulumi.Input.asOptionalInput<CloudAutonomousVmClusterTimeouts>(
          map['timeouts']),
      totalContainerDatabases:
          pulumi.Input.asInput<int>(map['totalContainerDatabases']),
    );
  }
}
