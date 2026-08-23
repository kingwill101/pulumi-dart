// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ontap_file_system_disk_iops_configuration.dart';
import 'get_ontap_file_system_endpoint.dart';

/// Result data returned by getOntapFileSystem.
class GetOntapFileSystemResult {
  /// Amazon Resource Name of the file system.
  final String arn;
  /// Number of days to retain automatic backups.
  final int automaticBackupRetentionDays;
  /// Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final String dailyAutomaticBackupStartTime;
  /// File system deployment type.
  final String deploymentType;
  /// SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system, specifying the number of provisioned IOPS and the provision mode. See Disk IOPS Below.
  final List<GetOntapFileSystemDiskIopsConfiguration> diskIopsConfigurations;
  /// DNS name for the file system.
  final String dnsName;
  /// (Multi-AZ only) IP address range in which the endpoints to access your file system exist.
  final String endpointIpAddressRange;
  /// Management and Intercluster FileSystemEndpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See FileSystemEndpoints below.
  final List<GetOntapFileSystemEndpoint> endpoints;
  /// Number of HA pairs for the file system.
  final int haPairs;
  /// Identifier of the file system (e.g. `fs-12345678`).
  final String id;
  /// ARN for the KMS Key to encrypt the file system at rest.
  final String kmsKeyId;
  /// IDs of the elastic network interfaces from which a specific file system is accessible.
  final List<String> networkInterfaceIds;
  /// Network type (`IPV4` or `DUAL`).
  final String networkType;
  /// AWS account identifier that created the file system.
  final String ownerId;
  /// Subnet in which you want the preferred file server to be located.
  final String preferredSubnetId;
  final String region;
  /// (Multi-AZ only) VPC route tables in which your file system's endpoints exist.
  final List<String> routeTableIds;
  /// Storage capacity of the file system in gibibytes (GiB).
  final int storageCapacity;
  /// Type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  final String storageType;
  /// IDs of the subnets that the file system is accessible from. For the MULTI_AZ_1 file system deployment type, there are two subnet IDs, one for the preferred file server and one for the standby file server. The preferred file server subnet identified in the `preferredSubnetId` property.
  final List<String> subnetIds;
  /// Tags associated with the file system.
  final Map<String, String> tags;
  /// Sustained throughput of an Amazon FSx file system in Megabytes per second (MBps). If the file system uses multiple HA pairs this will equal throuthputCapacityPerHaPair x ha_pairs
  final int throughputCapacity;
  /// Sustained throughput of each HA pair for an Amazon FSx file system in Megabytes per second (MBps).
  final int throughputCapacityPerHaPair;
  /// ID of the primary virtual private cloud (VPC) for the file system.
  final String vpcId;
  /// Preferred start time (in `D:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final String weeklyMaintenanceStartTime;

  /// Creates a new [GetOntapFileSystemResult].
  /// [arn] Amazon Resource Name of the file system.
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups.
  /// [dailyAutomaticBackupStartTime] Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  /// [deploymentType] File system deployment type.
  /// [diskIopsConfigurations] SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system, specifying the number of provisioned IOPS and the provision mode. See Disk IOPS Below.
  /// [dnsName] DNS name for the file system.
  /// [endpointIpAddressRange] (Multi-AZ only) IP address range in which the endpoints to access your file system exist.
  /// [endpoints] Management and Intercluster FileSystemEndpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See FileSystemEndpoints below.
  /// [haPairs] Number of HA pairs for the file system.
  /// [id] Identifier of the file system (e.g. `fs-12345678`).
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest.
  /// [networkInterfaceIds] IDs of the elastic network interfaces from which a specific file system is accessible.
  /// [networkType] Network type (`IPV4` or `DUAL`).
  /// [ownerId] AWS account identifier that created the file system.
  /// [preferredSubnetId] Subnet in which you want the preferred file server to be located.
  /// [region] Required.
  /// [routeTableIds] (Multi-AZ only) VPC route tables in which your file system's endpoints exist.
  /// [storageCapacity] Storage capacity of the file system in gibibytes (GiB).
  /// [storageType] Type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  /// [subnetIds] IDs of the subnets that the file system is accessible from. For the MULTI_AZ_1 file system deployment type, there are two subnet IDs, one for the preferred file server and one for the standby file server. The preferred file server subnet identified in the `preferredSubnetId` property.
  /// [tags] Tags associated with the file system.
  /// [throughputCapacity] Sustained throughput of an Amazon FSx file system in Megabytes per second (MBps). If the file system uses multiple HA pairs this will equal throuthputCapacityPerHaPair x ha_pairs
  /// [throughputCapacityPerHaPair] Sustained throughput of each HA pair for an Amazon FSx file system in Megabytes per second (MBps).
  /// [vpcId] ID of the primary virtual private cloud (VPC) for the file system.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `D:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const GetOntapFileSystemResult({
    required this.arn,
    required this.automaticBackupRetentionDays,
    required this.dailyAutomaticBackupStartTime,
    required this.deploymentType,
    required this.diskIopsConfigurations,
    required this.dnsName,
    required this.endpointIpAddressRange,
    required this.endpoints,
    required this.haPairs,
    required this.id,
    required this.kmsKeyId,
    required this.networkInterfaceIds,
    required this.networkType,
    required this.ownerId,
    required this.preferredSubnetId,
    required this.region,
    required this.routeTableIds,
    required this.storageCapacity,
    required this.storageType,
    required this.subnetIds,
    required this.tags,
    required this.throughputCapacity,
    required this.throughputCapacityPerHaPair,
    required this.vpcId,
    required this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'automaticBackupRetentionDays': automaticBackupRetentionDays,
      'dailyAutomaticBackupStartTime': dailyAutomaticBackupStartTime,
      'deploymentType': deploymentType,
      'diskIopsConfigurations': pulumi.Input.encodeList<GetOntapFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfigurations, (value) => value.toMap()),
      'dnsName': dnsName,
      'endpointIpAddressRange': endpointIpAddressRange,
      'endpoints': pulumi.Input.encodeList<GetOntapFileSystemEndpoint, Map<String, dynamic>>(endpoints, (value) => value.toMap()),
      'haPairs': haPairs,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'networkInterfaceIds': networkInterfaceIds,
      'networkType': networkType,
      'ownerId': ownerId,
      'preferredSubnetId': preferredSubnetId,
      'region': region,
      'routeTableIds': routeTableIds,
      'storageCapacity': storageCapacity,
      'storageType': storageType,
      'subnetIds': subnetIds,
      'tags': tags,
      'throughputCapacity': throughputCapacity,
      'throughputCapacityPerHaPair': throughputCapacityPerHaPair,
      'vpcId': vpcId,
      'weeklyMaintenanceStartTime': weeklyMaintenanceStartTime,
    };
  }

  factory GetOntapFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetOntapFileSystemResult(
      arn: map['arn'] as String,
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] as int,
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] as String,
      deploymentType: map['deploymentType'] as String,
      diskIopsConfigurations: pulumi.Input.decodeList<GetOntapFileSystemDiskIopsConfiguration>(map['diskIopsConfigurations']!, (value) => GetOntapFileSystemDiskIopsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] as String,
      endpointIpAddressRange: map['endpointIpAddressRange'] as String,
      endpoints: pulumi.Input.decodeList<GetOntapFileSystemEndpoint>(map['endpoints']!, (value) => GetOntapFileSystemEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      haPairs: map['haPairs'] as int,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      networkInterfaceIds: (map['networkInterfaceIds'] as List).cast<String>(),
      networkType: map['networkType'] as String,
      ownerId: map['ownerId'] as String,
      preferredSubnetId: map['preferredSubnetId'] as String,
      region: map['region'] as String,
      routeTableIds: (map['routeTableIds'] as List).cast<String>(),
      storageCapacity: map['storageCapacity'] as int,
      storageType: map['storageType'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      throughputCapacity: map['throughputCapacity'] as int,
      throughputCapacityPerHaPair: map['throughputCapacityPerHaPair'] as int,
      vpcId: map['vpcId'] as String,
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] as String,
    );
  }
}
