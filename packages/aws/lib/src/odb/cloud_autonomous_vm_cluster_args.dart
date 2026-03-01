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
    required double autonomousDataStorageSizeInTbs,
    String? cloudExadataInfrastructureArn,
    String? cloudExadataInfrastructureId,
    required int cpuCoreCountPerNode,
    required List<String> dbServers,
    String? description,
    required String displayName,
    bool? isMtlsEnabledVmCluster,
    String? licenseModel,
    required CloudAutonomousVmClusterMaintenanceWindow maintenanceWindow,
    required int memoryPerOracleComputeUnitInGbs,
    String? odbNetworkArn,
    String? odbNetworkId,
    String? region,
    required int scanListenerPortNonTls,
    required int scanListenerPortTls,
    Map<String, String>? tags,
    String? timeZone,
    CloudAutonomousVmClusterTimeouts? timeouts,
    required int totalContainerDatabases,
  }) : autonomousDataStorageSizeInTbs = pulumi.Input.asInput<double>(
         autonomousDataStorageSizeInTbs,
       ),
       cloudExadataInfrastructureArn = pulumi.Input.asOptionalInput<String>(
         cloudExadataInfrastructureArn,
       ),
       cloudExadataInfrastructureId = pulumi.Input.asOptionalInput<String>(
         cloudExadataInfrastructureId,
       ),
       cpuCoreCountPerNode = pulumi.Input.asInput<int>(cpuCoreCountPerNode),
       dbServers = pulumi.Input.asInput<List<String>>(dbServers),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asInput<String>(displayName),
       isMtlsEnabledVmCluster = pulumi.Input.asOptionalInput<bool>(
         isMtlsEnabledVmCluster,
       ),
       licenseModel = pulumi.Input.asOptionalInput<String>(licenseModel),
       maintenanceWindow =
           pulumi.Input.asInput<CloudAutonomousVmClusterMaintenanceWindow>(
             maintenanceWindow,
           ),
       memoryPerOracleComputeUnitInGbs = pulumi.Input.asInput<int>(
         memoryPerOracleComputeUnitInGbs,
       ),
       odbNetworkArn = pulumi.Input.asOptionalInput<String>(odbNetworkArn),
       odbNetworkId = pulumi.Input.asOptionalInput<String>(odbNetworkId),
       region = pulumi.Input.asOptionalInput<String>(region),
       scanListenerPortNonTls = pulumi.Input.asInput<int>(
         scanListenerPortNonTls,
       ),
       scanListenerPortTls = pulumi.Input.asInput<int>(scanListenerPortTls),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
       timeouts = pulumi
           .Input.asOptionalInput<CloudAutonomousVmClusterTimeouts>(timeouts),
       totalContainerDatabases = pulumi.Input.asInput<int>(
         totalContainerDatabases,
       );

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
      'maintenanceWindow':
          pulumi.Input.mapInputValue<
            CloudAutonomousVmClusterMaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'memoryPerOracleComputeUnitInGbs': memoryPerOracleComputeUnitInGbs,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'region': ?region,
      'scanListenerPortNonTls': scanListenerPortNonTls,
      'scanListenerPortTls': scanListenerPortTls,
      'tags': ?tags,
      'timeZone': ?timeZone,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            CloudAutonomousVmClusterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'totalContainerDatabases': totalContainerDatabases,
    };
  }

  factory CloudAutonomousVmClusterArgs.fromMap(Map<String, dynamic> map) {
    return CloudAutonomousVmClusterArgs(
      autonomousDataStorageSizeInTbs:
          map['autonomousDataStorageSizeInTbs'] as double,
      cloudExadataInfrastructureArn:
          map['cloudExadataInfrastructureArn'] == null
          ? null
          : map['cloudExadataInfrastructureArn'] as String,
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null
          ? null
          : map['cloudExadataInfrastructureId'] as String,
      cpuCoreCountPerNode: map['cpuCoreCountPerNode'] as int,
      dbServers: (map['dbServers'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] as String,
      isMtlsEnabledVmCluster: map['isMtlsEnabledVmCluster'] == null
          ? null
          : map['isMtlsEnabledVmCluster'] as bool,
      licenseModel: map['licenseModel'] == null
          ? null
          : map['licenseModel'] as String,
      maintenanceWindow: CloudAutonomousVmClusterMaintenanceWindow.fromMap(
        (map['maintenanceWindow'] as Map).cast<String, dynamic>(),
      ),
      memoryPerOracleComputeUnitInGbs:
          map['memoryPerOracleComputeUnitInGbs'] as int,
      odbNetworkArn: map['odbNetworkArn'] == null
          ? null
          : map['odbNetworkArn'] as String,
      odbNetworkId: map['odbNetworkId'] == null
          ? null
          : map['odbNetworkId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scanListenerPortNonTls: map['scanListenerPortNonTls'] as int,
      scanListenerPortTls: map['scanListenerPortTls'] as int,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      timeouts: map['timeouts'] == null
          ? null
          : CloudAutonomousVmClusterTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      totalContainerDatabases: map['totalContainerDatabases'] as int,
    );
  }
}
