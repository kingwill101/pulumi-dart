// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../ontap_file_system_disk_iops_configuration/ontap_file_system_disk_iops_configuration.dart';

/// The set of arguments for OntapFileSystem.
class OntapFileSystemArgs {
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final Input<int>? automaticBackupRetentionDays;

  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires <span pulumi-lang-nodejs="`automaticBackupRetentionDays`" pulumi-lang-dotnet="`AutomaticBackupRetentionDays`" pulumi-lang-go="`automaticBackupRetentionDays`" pulumi-lang-python="`automatic_backup_retention_days`" pulumi-lang-yaml="`automaticBackupRetentionDays`" pulumi-lang-java="`automaticBackupRetentionDays`">`automatic_backup_retention_days`</span> to be set.
  final Input<String>? dailyAutomaticBackupStartTime;

  /// The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  final Input<String> deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  final Input<OntapFileSystemDiskIopsConfiguration>? diskIopsConfiguration;

  /// Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  ///
  /// >  **Note:** The 198.19.* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  final Input<String>? endpointIpAddressRange;

  /// The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  final Input<String>? fsxAdminPassword;

  /// The number of<span pulumi-lang-nodejs=" haPairs " pulumi-lang-dotnet=" HaPairs " pulumi-lang-go=" haPairs " pulumi-lang-python=" ha_pairs " pulumi-lang-yaml=" haPairs " pulumi-lang-java=" haPairs "> ha_pairs </span>to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  final Input<int>? haPairs;

  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final Input<String>? kmsKeyId;

  /// The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  final Input<String> preferredSubnetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final Input<List<String>>? routeTableIds;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final Input<List<String>>? securityGroupIds;

  /// The storage capacity (GiB) of the file system. Valid values between <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> and <span pulumi-lang-nodejs="`196608`" pulumi-lang-dotnet="`196608`" pulumi-lang-go="`196608`" pulumi-lang-python="`196608`" pulumi-lang-yaml="`196608`" pulumi-lang-java="`196608`">`196608`</span> for file systems with<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>`SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> and <span pulumi-lang-nodejs="`524288`" pulumi-lang-dotnet="`524288`" pulumi-lang-go="`524288`" pulumi-lang-python="`524288`" pulumi-lang-yaml="`524288`" pulumi-lang-java="`524288`">`524288`</span> for `MULTI_AZ_2`. Valid values between <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> (<span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span> per ha pair) and <span pulumi-lang-nodejs="`1048576`" pulumi-lang-dotnet="`1048576`" pulumi-lang-go="`1048576`" pulumi-lang-python="`1048576`" pulumi-lang-yaml="`1048576`" pulumi-lang-java="`1048576`">`1048576`</span> for file systems with<span pulumi-lang-nodejs=" deploymentType " pulumi-lang-dotnet=" DeploymentType " pulumi-lang-go=" deploymentType " pulumi-lang-python=" deployment_type " pulumi-lang-yaml=" deploymentType " pulumi-lang-java=" deploymentType "> deployment_type </span>`SINGLE_AZ_2`. For `SINGLE_AZ_2`, the <span pulumi-lang-nodejs="`1048576`" pulumi-lang-dotnet="`1048576`" pulumi-lang-go="`1048576`" pulumi-lang-python="`1048576`" pulumi-lang-yaml="`1048576`" pulumi-lang-java="`1048576`">`1048576`</span> (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is <span pulumi-lang-nodejs="`524288`" pulumi-lang-dotnet="`524288`" pulumi-lang-go="`524288`" pulumi-lang-python="`524288`" pulumi-lang-yaml="`524288`" pulumi-lang-java="`524288`">`524288`</span> (512TB) when using 1 ha_pair.
  final Input<int> storageCapacity;

  /// The filesystem storage type. defaults to `SSD`.
  final Input<String>? storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>, and <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span>. This parameter is only supported when not using the<span pulumi-lang-nodejs=" haPairs " pulumi-lang-dotnet=" HaPairs " pulumi-lang-go=" haPairs " pulumi-lang-python=" ha_pairs " pulumi-lang-yaml=" haPairs " pulumi-lang-java=" haPairs "> ha_pairs </span>parameter. Either<span pulumi-lang-nodejs=" throughputCapacity " pulumi-lang-dotnet=" ThroughputCapacity " pulumi-lang-go=" throughputCapacity " pulumi-lang-python=" throughput_capacity " pulumi-lang-yaml=" throughputCapacity " pulumi-lang-java=" throughputCapacity "> throughput_capacity </span>or<span pulumi-lang-nodejs=" throughputCapacityPerHaPair " pulumi-lang-dotnet=" ThroughputCapacityPerHaPair " pulumi-lang-go=" throughputCapacityPerHaPair " pulumi-lang-python=" throughput_capacity_per_ha_pair " pulumi-lang-yaml=" throughputCapacityPerHaPair " pulumi-lang-java=" throughputCapacityPerHaPair "> throughput_capacity_per_ha_pair </span>must be specified.
  final Input<int>? throughputCapacity;

  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to <span pulumi-lang-nodejs="`throughputCapacity`" pulumi-lang-dotnet="`ThroughputCapacity`" pulumi-lang-go="`throughputCapacity`" pulumi-lang-python="`throughput_capacity`" pulumi-lang-yaml="`throughputCapacity`" pulumi-lang-java="`throughputCapacity`">`throughput_capacity`</span> which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are <span pulumi-lang-nodejs="`128`" pulumi-lang-dotnet="`128`" pulumi-lang-go="`128`" pulumi-lang-python="`128`" pulumi-lang-yaml="`128`" pulumi-lang-java="`128`">`128`</span>, <span pulumi-lang-nodejs="`256`" pulumi-lang-dotnet="`256`" pulumi-lang-go="`256`" pulumi-lang-python="`256`" pulumi-lang-yaml="`256`" pulumi-lang-java="`256`">`256`</span>, <span pulumi-lang-nodejs="`512`" pulumi-lang-dotnet="`512`" pulumi-lang-go="`512`" pulumi-lang-python="`512`" pulumi-lang-yaml="`512`" pulumi-lang-java="`512`">`512`</span>, <span pulumi-lang-nodejs="`1024`" pulumi-lang-dotnet="`1024`" pulumi-lang-go="`1024`" pulumi-lang-python="`1024`" pulumi-lang-yaml="`1024`" pulumi-lang-java="`1024`">`1024`</span>, <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>, and <span pulumi-lang-nodejs="`4096`" pulumi-lang-dotnet="`4096`" pulumi-lang-go="`4096`" pulumi-lang-python="`4096`" pulumi-lang-yaml="`4096`" pulumi-lang-java="`4096`">`4096`</span>. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are <span pulumi-lang-nodejs="`384`" pulumi-lang-dotnet="`384`" pulumi-lang-go="`384`" pulumi-lang-python="`384`" pulumi-lang-yaml="`384`" pulumi-lang-java="`384`">`384`</span>,<span pulumi-lang-nodejs="`768`" pulumi-lang-dotnet="`768`" pulumi-lang-go="`768`" pulumi-lang-python="`768`" pulumi-lang-yaml="`768`" pulumi-lang-java="`768`">`768`</span>,<span pulumi-lang-nodejs="`1536`" pulumi-lang-dotnet="`1536`" pulumi-lang-go="`1536`" pulumi-lang-python="`1536`" pulumi-lang-yaml="`1536`" pulumi-lang-java="`1536`">`1536`</span>,<span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span>,<span pulumi-lang-nodejs="`6144`" pulumi-lang-dotnet="`6144`" pulumi-lang-go="`6144`" pulumi-lang-python="`6144`" pulumi-lang-yaml="`6144`" pulumi-lang-java="`6144`">`6144`</span> where <span pulumi-lang-nodejs="`haPairs`" pulumi-lang-dotnet="`HaPairs`" pulumi-lang-go="`haPairs`" pulumi-lang-python="`ha_pairs`" pulumi-lang-yaml="`haPairs`" pulumi-lang-java="`haPairs`">`ha_pairs`</span> is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Valid values for deployment type `SINGLE_AZ_2` are <span pulumi-lang-nodejs="`1536`" pulumi-lang-dotnet="`1536`" pulumi-lang-go="`1536`" pulumi-lang-python="`1536`" pulumi-lang-yaml="`1536`" pulumi-lang-java="`1536`">`1536`</span>, <span pulumi-lang-nodejs="`3072`" pulumi-lang-dotnet="`3072`" pulumi-lang-go="`3072`" pulumi-lang-python="`3072`" pulumi-lang-yaml="`3072`" pulumi-lang-java="`3072`">`3072`</span>, and <span pulumi-lang-nodejs="`6144`" pulumi-lang-dotnet="`6144`" pulumi-lang-go="`6144`" pulumi-lang-python="`6144`" pulumi-lang-yaml="`6144`" pulumi-lang-java="`6144`">`6144`</span> where <span pulumi-lang-nodejs="`haPairs`" pulumi-lang-dotnet="`HaPairs`" pulumi-lang-go="`haPairs`" pulumi-lang-python="`ha_pairs`" pulumi-lang-yaml="`haPairs`" pulumi-lang-java="`haPairs`">`ha_pairs`</span> is greater than 1. This parameter is only supported when specifying the<span pulumi-lang-nodejs=" haPairs " pulumi-lang-dotnet=" HaPairs " pulumi-lang-go=" haPairs " pulumi-lang-python=" ha_pairs " pulumi-lang-yaml=" haPairs " pulumi-lang-java=" haPairs "> ha_pairs </span>parameter. Either<span pulumi-lang-nodejs=" throughputCapacity " pulumi-lang-dotnet=" ThroughputCapacity " pulumi-lang-go=" throughputCapacity " pulumi-lang-python=" throughput_capacity " pulumi-lang-yaml=" throughputCapacity " pulumi-lang-java=" throughputCapacity "> throughput_capacity </span>or<span pulumi-lang-nodejs=" throughputCapacityPerHaPair " pulumi-lang-dotnet=" ThroughputCapacityPerHaPair " pulumi-lang-go=" throughputCapacityPerHaPair " pulumi-lang-python=" throughput_capacity_per_ha_pair " pulumi-lang-yaml=" throughputCapacityPerHaPair " pulumi-lang-java=" throughputCapacityPerHaPair "> throughput_capacity_per_ha_pair </span>must be specified.
  final Input<int>? throughputCapacityPerHaPair;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final Input<String>? weeklyMaintenanceStartTime;

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
      map['diskIopsConfiguration'] = Input.mapOptionalInputValue<
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
      automaticBackupRetentionDays:
          Input.asOptionalInput<int>(map['automaticBackupRetentionDays']),
      dailyAutomaticBackupStartTime:
          Input.asOptionalInput<String>(map['dailyAutomaticBackupStartTime']),
      deploymentType: Input.asInput<String>(map['deploymentType']),
      diskIopsConfiguration:
          Input.asOptionalInput<OntapFileSystemDiskIopsConfiguration>(
              map['diskIopsConfiguration']),
      endpointIpAddressRange:
          Input.asOptionalInput<String>(map['endpointIpAddressRange']),
      fsxAdminPassword: Input.asOptionalInput<String>(map['fsxAdminPassword']),
      haPairs: Input.asOptionalInput<int>(map['haPairs']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      preferredSubnetId: Input.asInput<String>(map['preferredSubnetId']),
      region: Input.asOptionalInput<String>(map['region']),
      routeTableIds: Input.asOptionalInput<List<String>>(map['routeTableIds']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      storageCapacity: Input.asInput<int>(map['storageCapacity']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputCapacity: Input.asOptionalInput<int>(map['throughputCapacity']),
      throughputCapacityPerHaPair:
          Input.asOptionalInput<int>(map['throughputCapacityPerHaPair']),
      weeklyMaintenanceStartTime:
          Input.asOptionalInput<String>(map['weeklyMaintenanceStartTime']),
    );
  }
}
