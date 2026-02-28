// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_file_system_disk_iops_configuration.dart';

/// {@template pulumi_fsx_ontap_file_system_ontap_file_system_args_doc}
/// The set of arguments for OntapFileSystem.
/// {@endtemplate}
/// {@macro pulumi_fsx_ontap_file_system_ontap_file_system_args_doc}
class OntapFileSystemArgs {
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  final pulumi.Input<String> deploymentType;
  /// The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  final pulumi.Input<OntapFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
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

  /// Creates a new [OntapFileSystemArgs].
  /// [automaticBackupRetentionDays] The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  /// [dailyAutomaticBackupStartTime] A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  /// [deploymentType] The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  /// [diskIopsConfiguration] The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  /// [endpointIpAddressRange] Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  /// [fsxAdminPassword] The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  /// [haPairs] The number of ha_pairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  /// [preferredSubnetId] The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableIds] Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  /// [securityGroupIds] A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [storageCapacity] The storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deployment_type `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deployment_type `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  /// [storageType] The filesystem storage type. defaults to `SSD`.
  /// [subnetIds] A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughputCapacity] Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  /// [throughputCapacityPerHaPair] Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughput_capacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `ha_pairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `ha_pairs` is greater than 1. This parameter is only supported when specifying the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  /// [weeklyMaintenanceStartTime] The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  OntapFileSystemArgs({
    int? automaticBackupRetentionDays,
    String? dailyAutomaticBackupStartTime,
    required String deploymentType,
    OntapFileSystemDiskIopsConfiguration? diskIopsConfiguration,
    String? endpointIpAddressRange,
    String? fsxAdminPassword,
    int? haPairs,
    String? kmsKeyId,
    required String preferredSubnetId,
    String? region,
    List<String>? routeTableIds,
    List<String>? securityGroupIds,
    required int storageCapacity,
    String? storageType,
    required List<String> subnetIds,
    Map<String, String>? tags,
    int? throughputCapacity,
    int? throughputCapacityPerHaPair,
    String? weeklyMaintenanceStartTime,
  }) :
      automaticBackupRetentionDays = pulumi.Input.asOptionalInput<int>(automaticBackupRetentionDays),
      dailyAutomaticBackupStartTime = pulumi.Input.asOptionalInput<String>(dailyAutomaticBackupStartTime),
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      diskIopsConfiguration = pulumi.Input.asOptionalInput<OntapFileSystemDiskIopsConfiguration>(diskIopsConfiguration),
      endpointIpAddressRange = pulumi.Input.asOptionalInput<String>(endpointIpAddressRange),
      fsxAdminPassword = pulumi.Input.asOptionalInput<String>(fsxAdminPassword),
      haPairs = pulumi.Input.asOptionalInput<int>(haPairs),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      preferredSubnetId = pulumi.Input.asInput<String>(preferredSubnetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableIds = pulumi.Input.asOptionalInput<List<String>>(routeTableIds),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      storageCapacity = pulumi.Input.asInput<int>(storageCapacity),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      throughputCapacity = pulumi.Input.asOptionalInput<int>(throughputCapacity),
      throughputCapacityPerHaPair = pulumi.Input.asOptionalInput<int>(throughputCapacityPerHaPair),
      weeklyMaintenanceStartTime = pulumi.Input.asOptionalInput<String>(weeklyMaintenanceStartTime);

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
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : map['automaticBackupRetentionDays'] as int,
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : map['dailyAutomaticBackupStartTime'] as String,
      deploymentType: map['deploymentType'] as String,
      diskIopsConfiguration: map['diskIopsConfiguration'] == null ? null : OntapFileSystemDiskIopsConfiguration.fromMap((map['diskIopsConfiguration'] as Map).cast<String, dynamic>()),
      endpointIpAddressRange: map['endpointIpAddressRange'] == null ? null : map['endpointIpAddressRange'] as String,
      fsxAdminPassword: map['fsxAdminPassword'] == null ? null : map['fsxAdminPassword'] as String,
      haPairs: map['haPairs'] == null ? null : map['haPairs'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      preferredSubnetId: map['preferredSubnetId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeTableIds: map['routeTableIds'] == null ? null : (map['routeTableIds'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      storageCapacity: map['storageCapacity'] as int,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      throughputCapacity: map['throughputCapacity'] == null ? null : map['throughputCapacity'] as int,
      throughputCapacityPerHaPair: map['throughputCapacityPerHaPair'] == null ? null : map['throughputCapacityPerHaPair'] as int,
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : map['weeklyMaintenanceStartTime'] as String,
    );
  }
}

