// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_file_system_disk_iops_configuration.dart';
import 'ontap_file_system_endpoint.dart';

/// Input properties used for looking up and filtering OntapFileSystem resources.
class OntapFileSystemState {
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? arn;
  /// Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automaticBackupRetentionDays` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// Filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  final pulumi.Input<String>? deploymentType;
  /// SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See `diskIopsConfiguration` below.
  final pulumi.Input<OntapFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
  /// Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final pulumi.Input<String>? dnsName;
  /// IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.\* range. Note that the 198.19.\* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  final pulumi.Input<String>? endpointIpAddressRange;
  /// Endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See `endpoints` below.
  final pulumi.Input<List<OntapFileSystemEndpoint>>? endpoints;
  /// ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  final pulumi.Input<String>? fsxAdminPassword;
  /// Number of haPairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  final pulumi.Input<int>? haPairs;
  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  final pulumi.Input<String>? networkType;
  /// AWS account identifier that created the file system.
  final pulumi.Input<String>? ownerId;
  /// ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  final pulumi.Input<String>? preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final pulumi.Input<List<String>>? routeTableIds;
  /// List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deploymentType `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deploymentType `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  final pulumi.Input<int>? storageCapacity;
  /// Filesystem storage type. Defaults to `SSD`.
  final pulumi.Input<String>? storageType;
  /// List of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  final pulumi.Input<int>? throughputCapacity;
  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughputCapacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `haPairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `haPairs` is greater than 1. This parameter is only supported when specifying the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  final pulumi.Input<int>? throughputCapacityPerHaPair;
  /// Identifier of the Virtual Private Cloud for the file system.
  final pulumi.Input<String>? vpcId;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [OntapFileSystemState].
  /// [arn] Amazon Resource Name of the file system.
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  /// [dailyAutomaticBackupStartTime] Recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automaticBackupRetentionDays` to be set.
  /// [deploymentType] Filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  /// [diskIopsConfiguration] SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See `diskIopsConfiguration` below.
  /// [dnsName] Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  /// [endpointIpAddressRange] IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.\* range. Note that the 198.19.\* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  /// [endpoints] Endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See `endpoints` below.
  /// [fsxAdminPassword] ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  /// [haPairs] Number of haPairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  /// [networkInterfaceIds] Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  /// [networkType] Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  /// [ownerId] AWS account identifier that created the file system.
  /// [preferredSubnetId] ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableIds] VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  /// [securityGroupIds] List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [storageCapacity] Storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deploymentType `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deploymentType `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  /// [storageType] Filesystem storage type. Defaults to `SSD`.
  /// [subnetIds] List of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [throughputCapacity] Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  /// [throughputCapacityPerHaPair] Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughputCapacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `haPairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `haPairs` is greater than 1. This parameter is only supported when specifying the haPairs parameter. Either throughputCapacity or throughputCapacityPerHaPair must be specified.
  /// [vpcId] Identifier of the Virtual Private Cloud for the file system.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const OntapFileSystemState({
    this.arn,
    this.automaticBackupRetentionDays,
    this.dailyAutomaticBackupStartTime,
    this.deploymentType,
    this.diskIopsConfiguration,
    this.dnsName,
    this.endpointIpAddressRange,
    this.endpoints,
    this.fsxAdminPassword,
    this.haPairs,
    this.kmsKeyId,
    this.networkInterfaceIds,
    this.networkType,
    this.ownerId,
    this.preferredSubnetId,
    this.region,
    this.routeTableIds,
    this.securityGroupIds,
    this.storageCapacity,
    this.storageType,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.throughputCapacity,
    this.throughputCapacityPerHaPair,
    this.vpcId,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'deploymentType': ?deploymentType,
      'diskIopsConfiguration': ?pulumi.Input.mapOptionalInputValue<OntapFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfiguration, (value) => value.toMap()),
      'dnsName': ?dnsName,
      'endpointIpAddressRange': ?endpointIpAddressRange,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<OntapFileSystemEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<OntapFileSystemEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fsxAdminPassword': ?fsxAdminPassword,
      'haPairs': ?haPairs,
      'kmsKeyId': ?kmsKeyId,
      'networkInterfaceIds': ?networkInterfaceIds,
      'networkType': ?networkType,
      'ownerId': ?ownerId,
      'preferredSubnetId': ?preferredSubnetId,
      'region': ?region,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'storageCapacity': ?storageCapacity,
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throughputCapacity': ?throughputCapacity,
      'throughputCapacityPerHaPair': ?throughputCapacityPerHaPair,
      'vpcId': ?vpcId,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory OntapFileSystemState.fromMap(Map<String, dynamic> map) {
    return OntapFileSystemState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automaticBackupRetentionDays: (() { final guardedValue = map['automaticBackupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dailyAutomaticBackupStartTime: (() { final guardedValue = map['dailyAutomaticBackupStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIopsConfiguration: (() { final guardedValue = map['diskIopsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OntapFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointIpAddressRange: (() { final guardedValue = map['endpointIpAddressRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OntapFileSystemEndpoint>(guardedValue, (value) => OntapFileSystemEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fsxAdminPassword: (() { final guardedValue = map['fsxAdminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haPairs: (() { final guardedValue = map['haPairs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredSubnetId: (() { final guardedValue = map['preferredSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableIds: (() { final guardedValue = map['routeTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      storageCapacity: (() { final guardedValue = map['storageCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputCapacity: (() { final guardedValue = map['throughputCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      throughputCapacityPerHaPair: (() { final guardedValue = map['throughputCapacityPerHaPair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
