// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../ontap_file_system_disk_iops_configuration/ontap_file_system_disk_iops_configuration.dart';

/// The set of arguments for OntapFileSystem.
class OntapFileSystemArgs {
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final pulumi.Input<int>? automaticBackupRetentionDays;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;

  /// The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  final pulumi.Input<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  final pulumi.Input<OntapFileSystemDiskIopsConfiguration>?
      diskIopsConfiguration;

  /// Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  ///
  /// >  **Note:** The 198.19.* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  final pulumi.Input<String>? endpointIpAddressRange;

  /// The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  final pulumi.Input<String>? fsxAdminPassword;

  /// The number of ha_pairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  final pulumi.Input<int>? haPairs;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;

  /// The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  final pulumi.Input<String> preferredSubnetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final pulumi.Input<List<String>>? routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// The storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deployment_type `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deployment_type `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  final pulumi.Input<int> storageCapacity;

  /// The filesystem storage type. defaults to `SSD`.
  final pulumi.Input<String>? storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  final pulumi.Input<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  final pulumi.Input<int>? throughputCapacity;

  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughput_capacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `ha_pairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `ha_pairs` is greater than 1. This parameter is only supported when specifying the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  final pulumi.Input<int>? throughputCapacityPerHaPair;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  OntapFileSystemArgs({
    this.automaticBackupRetentionDays,
    this.dailyAutomaticBackupStartTime,
    required this.deploymentType,
    this.diskIopsConfiguration,
    this.endpointIpAddressRange,
    this.fsxAdminPassword,
    this.haPairs,
    this.kmsKeyId,
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
    final map = <String, dynamic>{};
    final automaticBackupRetentionDaysValue = automaticBackupRetentionDays;
    if (automaticBackupRetentionDaysValue != null) {
      map['automaticBackupRetentionDays'] = automaticBackupRetentionDaysValue;
    }
    final dailyAutomaticBackupStartTimeValue = dailyAutomaticBackupStartTime;
    if (dailyAutomaticBackupStartTimeValue != null) {
      map['dailyAutomaticBackupStartTime'] = dailyAutomaticBackupStartTimeValue;
    }
    map['deploymentType'] = deploymentType;
    final diskIopsConfigurationValue = diskIopsConfiguration;
    if (diskIopsConfigurationValue != null) {
      map['diskIopsConfiguration'] = pulumi.Input.mapOptionalInputValue<
              OntapFileSystemDiskIopsConfiguration, Map<String, dynamic>>(
          diskIopsConfigurationValue, (value) => value.toMap());
    }
    final endpointIpAddressRangeValue = endpointIpAddressRange;
    if (endpointIpAddressRangeValue != null) {
      map['endpointIpAddressRange'] = endpointIpAddressRangeValue;
    }
    final fsxAdminPasswordValue = fsxAdminPassword;
    if (fsxAdminPasswordValue != null) {
      map['fsxAdminPassword'] = fsxAdminPasswordValue;
    }
    final haPairsValue = haPairs;
    if (haPairsValue != null) {
      map['haPairs'] = haPairsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    map['preferredSubnetId'] = preferredSubnetId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final routeTableIdsValue = routeTableIds;
    if (routeTableIdsValue != null) {
      map['routeTableIds'] = routeTableIdsValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['storageCapacity'] = storageCapacity;
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final throughputCapacityValue = throughputCapacity;
    if (throughputCapacityValue != null) {
      map['throughputCapacity'] = throughputCapacityValue;
    }
    final throughputCapacityPerHaPairValue = throughputCapacityPerHaPair;
    if (throughputCapacityPerHaPairValue != null) {
      map['throughputCapacityPerHaPair'] = throughputCapacityPerHaPairValue;
    }
    final weeklyMaintenanceStartTimeValue = weeklyMaintenanceStartTime;
    if (weeklyMaintenanceStartTimeValue != null) {
      map['weeklyMaintenanceStartTime'] = weeklyMaintenanceStartTimeValue;
    }
    return map;
  }

  factory OntapFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemArgs(
      automaticBackupRetentionDays: pulumi.Input.asOptionalInput<int>(
          map['automaticBackupRetentionDays']),
      dailyAutomaticBackupStartTime: pulumi.Input.asOptionalInput<String>(
          map['dailyAutomaticBackupStartTime']),
      deploymentType: pulumi.Input.asInput<String>(map['deploymentType']),
      diskIopsConfiguration:
          pulumi.Input.asOptionalInput<OntapFileSystemDiskIopsConfiguration>(
              map['diskIopsConfiguration']),
      endpointIpAddressRange:
          pulumi.Input.asOptionalInput<String>(map['endpointIpAddressRange']),
      fsxAdminPassword:
          pulumi.Input.asOptionalInput<String>(map['fsxAdminPassword']),
      haPairs: pulumi.Input.asOptionalInput<int>(map['haPairs']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      preferredSubnetId: pulumi.Input.asInput<String>(map['preferredSubnetId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeTableIds:
          pulumi.Input.asOptionalInput<List<String>>(map['routeTableIds']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      storageCapacity: pulumi.Input.asInput<int>(map['storageCapacity']),
      storageType: pulumi.Input.asOptionalInput<String>(map['storageType']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputCapacity:
          pulumi.Input.asOptionalInput<int>(map['throughputCapacity']),
      throughputCapacityPerHaPair:
          pulumi.Input.asOptionalInput<int>(map['throughputCapacityPerHaPair']),
      weeklyMaintenanceStartTime: pulumi.Input.asOptionalInput<String>(
          map['weeklyMaintenanceStartTime']),
    );
  }
}
