// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ontap_file_system_disk_iops_configuration.dart';
import 'ontap_file_system_endpoint.dart';

/// Input properties used for looking up and filtering OntapFileSystem resources.
class OntapFileSystemState {
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? arn;
  /// The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  final pulumi.Input<String>? deploymentType;
  /// The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  final pulumi.Input<OntapFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
  /// The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  final pulumi.Input<String>? dnsName;
  /// Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  ///
  /// >  **Note:** The 198.19.* range is also used by AWS services such as WorkSpaces and AppStream 2.0 for their [management network interfaces](https://docs.aws.amazon.com/appstream2/latest/developerguide/management_ports.html).
  final pulumi.Input<String>? endpointIpAddressRange;
  /// The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  final pulumi.Input<List<OntapFileSystemEndpoint>>? endpoints;
  /// The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  final pulumi.Input<String>? fsxAdminPassword;
  /// The number of ha_pairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  final pulumi.Input<int>? haPairs;
  /// ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// AWS account identifier that created the file system.
  final pulumi.Input<String>? ownerId;
  /// The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  final pulumi.Input<String>? preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  final pulumi.Input<List<String>>? routeTableIds;
  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deployment_type `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deployment_type `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  final pulumi.Input<int>? storageCapacity;
  /// The filesystem storage type. defaults to `SSD`.
  final pulumi.Input<String>? storageType;
  /// A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  final pulumi.Input<int>? throughputCapacity;
  /// Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughput_capacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `ha_pairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `ha_pairs` is greater than 1. This parameter is only supported when specifying the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  final pulumi.Input<int>? throughputCapacityPerHaPair;
  /// Identifier of the Virtual Private Cloud for the file system.
  final pulumi.Input<String>? vpcId;
  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [OntapFileSystemState].
  /// [arn] Amazon Resource Name of the file system.
  /// [automaticBackupRetentionDays] The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days.
  /// [dailyAutomaticBackupStartTime] A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires `automatic_backup_retention_days` to be set.
  /// [deploymentType] The filesystem deployment type. Supports `MULTI_AZ_1`, `MULTI_AZ_2`, `SINGLE_AZ_1`, and `SINGLE_AZ_2`.
  /// [diskIopsConfiguration] The SSD IOPS configuration for the Amazon FSx for NetApp ONTAP file system. See Disk Iops Configuration below.
  /// [dnsName] The Domain Name Service (DNS) name for the file system. You can mount your file system using its DNS name.
  /// [endpointIpAddressRange] Specifies the IP address range in which the endpoints to access your file system will be created. By default, Amazon FSx selects an unused IP address range for you from the 198.19.* range.
  /// [endpoints] The endpoints that are used to access data or to manage the file system using the NetApp ONTAP CLI, REST API, or NetApp SnapMirror. See Endpoints below.
  /// [fsxAdminPassword] The ONTAP administrative password for the fsxadmin user that you can use to administer your file system using the ONTAP CLI and REST API.
  /// [haPairs] The number of ha_pairs to deploy for the file system. Valid value is 1 for `SINGLE_AZ_1` or `MULTI_AZ_1` and `MULTI_AZ_2`. Valid values are 1 through 12 for `SINGLE_AZ_2`.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key.
  /// [networkInterfaceIds] Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface.
  /// [ownerId] AWS account identifier that created the file system.
  /// [preferredSubnetId] The ID for a subnet. A subnet is a range of IP addresses in your virtual private cloud (VPC).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableIds] Specifies the VPC route tables in which your file system's endpoints will be created. You should specify all VPC route tables associated with the subnets in which your clients are located. By default, Amazon FSx selects your VPC's default route table.
  /// [securityGroupIds] A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [storageCapacity] The storage capacity (GiB) of the file system. Valid values between `1024` and `196608` for file systems with deployment_type `SINGLE_AZ_1` and `MULTI_AZ_1`. Valid values are between `1024` and `524288` for `MULTI_AZ_2`. Valid values between `1024` (`1024` per ha pair) and `1048576` for file systems with deployment_type `SINGLE_AZ_2`. For `SINGLE_AZ_2`, the `1048576` (1PB) maximum is only supported when using 2 or more ha_pairs, the maximum is `524288` (512TB) when using 1 ha_pair.
  /// [storageType] The filesystem storage type. defaults to `SSD`.
  /// [subnetIds] A list of IDs for the subnets that the file system will be accessible from. Up to 2 subnets can be provided.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throughputCapacity] Sets the throughput capacity (in MBps) for the file system that you're creating. Valid values are `128`, `256`, `512`, `1024`, `2048`, and `4096`. This parameter is only supported when not using the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  /// [throughputCapacityPerHaPair] Sets the per-HA-pair throughput capacity (in MBps) for the file system that you're creating, as opposed to `throughput_capacity` which specifies the total throughput capacity for the file system. Valid value for `MULTI_AZ_1` and `SINGLE_AZ_1` are `128`, `256`, `512`, `1024`, `2048`, and `4096`. Valid values for deployment type `MULTI_AZ_2` and `SINGLE_AZ_2` are `384`,`768`,`1536`,`3072`,`6144` where `ha_pairs` is `1`. Valid values for deployment type `SINGLE_AZ_2` are `1536`, `3072`, and `6144` where `ha_pairs` is greater than 1. This parameter is only supported when specifying the ha_pairs parameter. Either throughput_capacity or throughput_capacity_per_ha_pair must be specified.
  /// [vpcId] Identifier of the Virtual Private Cloud for the file system.
  /// [weeklyMaintenanceStartTime] The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  OntapFileSystemState({
    pulumi.Output<String>? arn,
    pulumi.Output<int>? automaticBackupRetentionDays,
    pulumi.Output<String>? dailyAutomaticBackupStartTime,
    pulumi.Output<String>? deploymentType,
    pulumi.Output<OntapFileSystemDiskIopsConfiguration>? diskIopsConfiguration,
    pulumi.Output<String>? dnsName,
    pulumi.Output<String>? endpointIpAddressRange,
    pulumi.Output<List<OntapFileSystemEndpoint>>? endpoints,
    pulumi.Output<String>? fsxAdminPassword,
    pulumi.Output<int>? haPairs,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? preferredSubnetId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? routeTableIds,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<int>? storageCapacity,
    pulumi.Output<String>? storageType,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? throughputCapacity,
    pulumi.Output<int>? throughputCapacityPerHaPair,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? weeklyMaintenanceStartTime,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      automaticBackupRetentionDays = pulumi.Input.asOptionalInput<int>(automaticBackupRetentionDays),
      dailyAutomaticBackupStartTime = pulumi.Input.asOptionalInput<String>(dailyAutomaticBackupStartTime),
      deploymentType = pulumi.Input.asOptionalInput<String>(deploymentType),
      diskIopsConfiguration = pulumi.Input.asOptionalInput<OntapFileSystemDiskIopsConfiguration>(diskIopsConfiguration),
      dnsName = pulumi.Input.asOptionalInput<String>(dnsName),
      endpointIpAddressRange = pulumi.Input.asOptionalInput<String>(endpointIpAddressRange),
      endpoints = pulumi.Input.asOptionalInput<List<OntapFileSystemEndpoint>>(endpoints),
      fsxAdminPassword = pulumi.Input.asOptionalInput<String>(fsxAdminPassword),
      haPairs = pulumi.Input.asOptionalInput<int>(haPairs),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      preferredSubnetId = pulumi.Input.asOptionalInput<String>(preferredSubnetId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableIds = pulumi.Input.asOptionalInput<List<String>>(routeTableIds),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      storageCapacity = pulumi.Input.asOptionalInput<int>(storageCapacity),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      throughputCapacity = pulumi.Input.asOptionalInput<int>(throughputCapacity),
      throughputCapacityPerHaPair = pulumi.Input.asOptionalInput<int>(throughputCapacityPerHaPair),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      weeklyMaintenanceStartTime = pulumi.Input.asOptionalInput<String>(weeklyMaintenanceStartTime);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : pulumi.Output.create<int>(map['automaticBackupRetentionDays'] as int),
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : pulumi.Output.create<String>(map['dailyAutomaticBackupStartTime'] as String),
      deploymentType: map['deploymentType'] == null ? null : pulumi.Output.create<String>(map['deploymentType'] as String),
      diskIopsConfiguration: map['diskIopsConfiguration'] == null ? null : pulumi.Output.create<OntapFileSystemDiskIopsConfiguration>(OntapFileSystemDiskIopsConfiguration.fromMap((map['diskIopsConfiguration'] as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] == null ? null : pulumi.Output.create<String>(map['dnsName'] as String),
      endpointIpAddressRange: map['endpointIpAddressRange'] == null ? null : pulumi.Output.create<String>(map['endpointIpAddressRange'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<OntapFileSystemEndpoint>>(pulumi.Input.decodeList<OntapFileSystemEndpoint>(map['endpoints'], (value) => OntapFileSystemEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      fsxAdminPassword: map['fsxAdminPassword'] == null ? null : pulumi.Output.create<String>(map['fsxAdminPassword'] as String),
      haPairs: map['haPairs'] == null ? null : pulumi.Output.create<int>(map['haPairs'] as int),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      preferredSubnetId: map['preferredSubnetId'] == null ? null : pulumi.Output.create<String>(map['preferredSubnetId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableIds: map['routeTableIds'] == null ? null : pulumi.Output.create<List<String>>((map['routeTableIds'] as List).cast<String>()),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      storageCapacity: map['storageCapacity'] == null ? null : pulumi.Output.create<int>(map['storageCapacity'] as int),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      throughputCapacity: map['throughputCapacity'] == null ? null : pulumi.Output.create<int>(map['throughputCapacity'] as int),
      throughputCapacityPerHaPair: map['throughputCapacityPerHaPair'] == null ? null : pulumi.Output.create<int>(map['throughputCapacityPerHaPair'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : pulumi.Output.create<String>(map['weeklyMaintenanceStartTime'] as String),
    );
  }
}

