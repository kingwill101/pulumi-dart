// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_file_system_disk_iops_configuration.dart';

/// {@template pulumi_fsx_ontap_file_system_ontap_file_system_args_doc}
/// The set of arguments for OntapFileSystem.
/// {@endtemplate}
/// {@macro pulumi_fsx_ontap_file_system_ontap_file_system_args_doc}
class OntapFileSystemArgs {
  /// Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automaticBackupRetentionDays` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// Filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  final pulumi.Input<String> deploymentType;
  /// SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See `diskIopsConfiguration` below.
  final pulumi.Input<OntapFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
  /// IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.\* range. Note that the 198.19.\* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  final pulumi.Input<String>? endpointIpAddressRange;
  /// ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  final pulumi.Input<String>? fsxAdminPassword;
  /// Number of haPairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  final pulumi.Input<int>? haPairs;
  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  final pulumi.Input<String>? networkType;
  /// ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  final pulumi.Input<String> preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final pulumi.Input<List<String>>? routeTableIds;
  /// List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deploymentType `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deploymentType `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  final pulumi.Input<int> storageCapacity;
  /// Filesystem storage type. Defaults to `SSD`.
  final pulumi.Input<String>? storageType;
  /// List of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  final pulumi.Input<List<String>> subnetIds;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  final pulumi.Input<int>? throughputCapacity;
  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughputCapacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `haPairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `haPairs` is greater than 1. This parameter is only supported when specifying the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  final pulumi.Input<int>? throughputCapacityPerHaPair;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [OntapFileSystemArgs].
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  /// [dailyAutomaticBackupStartTime] Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automaticBackupRetentionDays` to be set.
  /// [deploymentType] Filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  /// [diskIopsConfiguration] SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See `diskIopsConfiguration` below.
  /// [endpointIpAddressRange] IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.\* range. Note that the 198.19.\* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  /// [fsxAdminPassword] ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  /// [haPairs] Number of haPairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  /// [networkType] Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  /// [preferredSubnetId] ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableIds] VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  /// [securityGroupIds] List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [storageCapacity] Storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deploymentType `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deploymentType `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  /// [storageType] Filesystem storage type. Defaults to `SSD`.
  /// [subnetIds] List of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughputCapacity] Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  /// [throughputCapacityPerHaPair] Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughputCapacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `haPairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `haPairs` is greater than 1. This parameter is only supported when specifying the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const OntapFileSystemArgs({
    this.automaticBackupRetentionDays,
    this.dailyAutomaticBackupStartTime,
    required this.deploymentType,
    this.diskIopsConfiguration,
    this.endpointIpAddressRange,
    this.fsxAdminPassword,
    this.haPairs,
    this.kmsKeyId,
    this.networkType,
    required this.preferredSubnetId,
    this.region,
    this.routeTableIds,
    this.securityGroupIds,
    required this.storageCapacity,
    this.storageType,
    required this.subnetIds,
    this.tags,
    this.throughputCapacity,
    this.throughputCapacityPerHaPair,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'deploymentType': deploymentType,
      'diskIopsConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfiguration, (value) => value.toMap()),
      'endpointIpAddressRange': ?endpointIpAddressRange,
      'fsxAdminPassword': ?fsxAdminPassword,
      'haPairs': ?haPairs,
      'kmsKeyId': ?kmsKeyId,
      'networkType': ?networkType,
      'preferredSubnetId': preferredSubnetId,
      'region': ?region,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'storageCapacity': storageCapacity,
      'storageType': ?storageType,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'throughputCapacity': ?throughputCapacity,
      'throughputCapacityPerHaPair': ?throughputCapacityPerHaPair,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory OntapFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemArgs(
      automaticBackupRetentionDays: (() { final guardedValue = map['automaticBackupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dailyAutomaticBackupStartTime: (() { final guardedValue = map['dailyAutomaticBackupStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      diskIopsConfiguration: (() { final guardedValue = map['diskIopsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointIpAddressRange: (() { final guardedValue = map['endpointIpAddressRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fsxAdminPassword: (() { final guardedValue = map['fsxAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haPairs: (() { final guardedValue = map['haPairs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredSubnetId: pulumi.Input.fromValue(map['preferredSubnetId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableIds: (() { final guardedValue = map['routeTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageCapacity: pulumi.Input.fromValue(map['storageCapacity'] as int),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputCapacity: (() { final guardedValue = map['throughputCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      throughputCapacityPerHaPair: (() { final guardedValue = map['throughputCapacityPerHaPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
