// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_capacity_reservation_specification.dart';
import 'instance_cpu_options.dart';
import 'instance_credit_specification.dart';
import 'instance_ebs_block_device.dart';
import 'instance_enclave_options.dart';
import 'instance_ephemeral_block_device.dart';
import 'instance_instance_market_options.dart';
import 'instance_launch_template.dart';
import 'instance_maintenance_options.dart';
import 'instance_metadata_options.dart';
import 'instance_network_interface.dart';
import 'instance_primary_network_interface.dart';
import 'instance_private_dns_name_options.dart';
import 'instance_root_block_device.dart';
import 'instance_secondary_network_interface.dart';

/// {@template pulumi_ec2_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_ec2_instance_instance_args_doc}
class InstanceArgs {
  /// AMI to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  final pulumi.Input<String?>? ami;
  /// Whether to associate a public IP address with an instance in a VPC.
  final pulumi.Input<bool?>? associatePublicIpAddress;
  /// AZ to start the instance in.
  final pulumi.Input<String?>? availabilityZone;
  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  final pulumi.Input<InstanceCapacityReservationSpecification?>? capacityReservationSpecification;
  /// The CPU options for the instance. See CPU Options below for more details.
  final pulumi.Input<InstanceCpuOptions?>? cpuOptions;
  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  final pulumi.Input<InstanceCreditSpecification?>? creditSpecification;
  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  final pulumi.Input<bool?>? disableApiStop;
  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  final pulumi.Input<bool?>? disableApiTermination;
  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  final pulumi.Input<List<InstanceEbsBlockDevice>?>? ebsBlockDevices;
  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  final pulumi.Input<bool?>? ebsOptimized;
  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enablePrimaryIpv6` after it has been enabled forces recreation of the instance.
  final pulumi.Input<bool?>? enablePrimaryIpv6;
  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  final pulumi.Input<InstanceEnclaveOptions?>? enclaveOptions;
  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  final pulumi.Input<List<InstanceEphemeralBlockDevice>?>? ephemeralBlockDevices;
  /// Destroys instance even if `disableApiTermination` or `disableApiStop` is set to `true`. Defaults to `false`. Once this parameter is set to `true`, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool?>? forceDestroy;
  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `passwordData` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final pulumi.Input<bool?>? getPasswordData;
  /// If true, the launched EC2 instance will support hibernation.
  final pulumi.Input<bool?>? hibernation;
  /// ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  final pulumi.Input<String?>? hostId;
  /// ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the `tenancy` parameter or set it to `host`.
  final pulumi.Input<String?>? hostResourceGroupArn;
  /// IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  final pulumi.Input<dynamic>? iamInstanceProfile;
  /// Shutdown behavior for the instance. Amazon defaults this to `stop` for EBS-backed instances and `terminate` for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  final pulumi.Input<String?>? instanceInitiatedShutdownBehavior;
  /// Describes the market (purchasing) option for the instances. See Market Options below for details on attributes.
  final pulumi.Input<InstanceInstanceMarketOptions?>? instanceMarketOptions;
  /// Instance type to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instanceType` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  final pulumi.Input<dynamic>? instanceType;
  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  final pulumi.Input<int?>? ipv6AddressCount;
  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  final pulumi.Input<List<String>?>? ipv6Addresses;
  /// Key name of the Key Pair to use for the instance; which can be managed using the `aws.ec2.KeyPair` resource.
  final pulumi.Input<String?>? keyName;
  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  final pulumi.Input<InstanceLaunchTemplate?>? launchTemplate;
  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  final pulumi.Input<InstanceMaintenanceOptions?>? maintenanceOptions;
  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  final pulumi.Input<InstanceMetadataOptions?>? metadataOptions;
  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  final pulumi.Input<bool?>? monitoring;
  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  final pulumi.Input<List<InstanceNetworkInterface>?>? networkInterfaces;
  /// Placement Group to start the instance in. Conflicts with `placementGroupId`.
  final pulumi.Input<String?>? placementGroup;
  /// Placement Group ID to start the instance in. Conflicts with `placementGroup`.
  final pulumi.Input<String?>? placementGroupId;
  /// Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  final pulumi.Input<int?>? placementPartitionNumber;
  /// The primary network interface. See Primary Network Interface below.
  final pulumi.Input<InstancePrimaryNetworkInterface?>? primaryNetworkInterface;
  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final pulumi.Input<InstancePrivateDnsNameOptions?>? privateDnsNameOptions;
  /// Private IP address to associate with the instance in a VPC.
  final pulumi.Input<String?>? privateIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  final pulumi.Input<InstanceRootBlockDevice?>? rootBlockDevice;
  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  final pulumi.Input<List<InstanceSecondaryNetworkInterface>?>? secondaryNetworkInterfaces;
  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `networkInterface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  final pulumi.Input<List<String>?>? secondaryPrivateIps;
  /// List of security group names to associate with.
  ///
  /// &gt; **NOTE:** If you are creating Instances in a VPC, use `vpcSecurityGroupIds` instead.
  final pulumi.Input<List<String>?>? securityGroups;
  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  final pulumi.Input<bool?>? sourceDestCheck;
  /// VPC Subnet ID to launch in.
  final pulumi.Input<String?>? subnetId;
  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  final pulumi.Input<dynamic>? tenancy;
  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `userDataBase64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final pulumi.Input<String?>? userData;
  /// Can be used instead of `userData` to pass base64-encoded binary data directly. Use this instead of `userData` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final pulumi.Input<String?>? userDataBase64;
  /// When used in combination with `userData` or `userDataBase64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  final pulumi.Input<bool?>? userDataReplaceOnChange;
  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// &gt; **NOTE:** Do not use `volumeTags` if you plan to manage block device tags outside the `aws.ec2.Instance` configuration, such as using `tags` in an `aws.ebs.Volume` resource attached via `aws.ec2.VolumeAttachment`. Doing so will result in resource cycling and inconsistent behavior.
  final pulumi.Input<Map<String, String>?>? volumeTags;
  /// List of security group IDs to associate with.
  final pulumi.Input<List<String>?>? vpcSecurityGroupIds;

  /// Creates a new [InstanceArgs].
  /// [ami] AMI to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  /// [associatePublicIpAddress] Whether to associate a public IP address with an instance in a VPC.
  /// [availabilityZone] AZ to start the instance in.
  /// [capacityReservationSpecification] Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  /// [cpuOptions] The CPU options for the instance. See CPU Options below for more details.
  /// [creditSpecification] Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  /// [disableApiStop] If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  /// [disableApiTermination] If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  /// [ebsBlockDevices] One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  /// [ebsOptimized] If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  /// [enablePrimaryIpv6] Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enablePrimaryIpv6` after it has been enabled forces recreation of the instance.
  /// [enclaveOptions] Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  /// [ephemeralBlockDevices] One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  /// [forceDestroy] Destroys instance even if `disableApiTermination` or `disableApiStop` is set to `true`. Defaults to `false`. Once this parameter is set to `true`, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [getPasswordData] If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `passwordData` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  /// [hibernation] If true, the launched EC2 instance will support hibernation.
  /// [hostId] ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  /// [hostResourceGroupArn] ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the `tenancy` parameter or set it to `host`.
  /// [iamInstanceProfile] IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  /// [instanceInitiatedShutdownBehavior] Shutdown behavior for the instance. Amazon defaults this to `stop` for EBS-backed instances and `terminate` for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  /// [instanceMarketOptions] Describes the market (purchasing) option for the instances. See Market Options below for details on attributes.
  /// [instanceType] Instance type to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instanceType` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  /// [ipv6AddressCount] Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  /// [ipv6Addresses] Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  /// [keyName] Key name of the Key Pair to use for the instance; which can be managed using the `aws.ec2.KeyPair` resource.
  /// [launchTemplate] Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  /// [maintenanceOptions] Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  /// [metadataOptions] Customize the metadata options of the instance. See Metadata Options below for more details.
  /// [monitoring] If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  /// [networkInterfaces] Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  /// [placementGroup] Placement Group to start the instance in. Conflicts with `placementGroupId`.
  /// [placementGroupId] Placement Group ID to start the instance in. Conflicts with `placementGroup`.
  /// [placementPartitionNumber] Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  /// [primaryNetworkInterface] The primary network interface. See Primary Network Interface below.
  /// [privateDnsNameOptions] Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  /// [privateIp] Private IP address to associate with the instance in a VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootBlockDevice] Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  /// [secondaryNetworkInterfaces] One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  /// [secondaryPrivateIps] List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `networkInterface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  /// [securityGroups] List of security group names to associate with.
  /// [sourceDestCheck] Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  /// [subnetId] VPC Subnet ID to launch in.
  /// [tags] Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenancy] Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  /// [userData] User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `userDataBase64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataBase64] Can be used instead of `userData` to pass base64-encoded binary data directly. Use this instead of `userData` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataReplaceOnChange] When used in combination with `userData` or `userDataBase64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  /// [volumeTags] Map of tags to assign, at instance-creation time, to root and EBS volumes.
  /// [vpcSecurityGroupIds] List of security group IDs to associate with.
  const InstanceArgs({
    this.ami,
    this.associatePublicIpAddress,
    this.availabilityZone,
    this.capacityReservationSpecification,
    this.cpuOptions,
    this.creditSpecification,
    this.disableApiStop,
    this.disableApiTermination,
    this.ebsBlockDevices,
    this.ebsOptimized,
    this.enablePrimaryIpv6,
    this.enclaveOptions,
    this.ephemeralBlockDevices,
    this.forceDestroy,
    this.getPasswordData,
    this.hibernation,
    this.hostId,
    this.hostResourceGroupArn,
    this.iamInstanceProfile,
    this.instanceInitiatedShutdownBehavior,
    this.instanceMarketOptions,
    this.instanceType,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.keyName,
    this.launchTemplate,
    this.maintenanceOptions,
    this.metadataOptions,
    this.monitoring,
    this.networkInterfaces,
    this.placementGroup,
    this.placementGroupId,
    this.placementPartitionNumber,
    this.primaryNetworkInterface,
    this.privateDnsNameOptions,
    this.privateIp,
    this.region,
    this.rootBlockDevice,
    this.secondaryNetworkInterfaces,
    this.secondaryPrivateIps,
    this.securityGroups,
    this.sourceDestCheck,
    this.subnetId,
    this.tags,
    this.tenancy,
    this.userData,
    this.userDataBase64,
    this.userDataReplaceOnChange,
    this.volumeTags,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ami': ?ami,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'availabilityZone': ?availabilityZone,
      'capacityReservationSpecification': ?pulumi.Input.mapOptionalInputValue<InstanceCapacityReservationSpecification, Map<String, dynamic>>(capacityReservationSpecification, (value) => value.toMap()),
      'cpuOptions': ?pulumi.Input.mapOptionalInputValue<InstanceCpuOptions, Map<String, dynamic>>(cpuOptions, (value) => value.toMap()),
      'creditSpecification': ?pulumi.Input.mapOptionalInputValue<InstanceCreditSpecification, Map<String, dynamic>>(creditSpecification, (value) => value.toMap()),
      'disableApiStop': ?disableApiStop,
      'disableApiTermination': ?disableApiTermination,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<InstanceEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<InstanceEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ebsOptimized': ?ebsOptimized,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'enclaveOptions': ?pulumi.Input.mapOptionalInputValue<InstanceEnclaveOptions, Map<String, dynamic>>(enclaveOptions, (value) => value.toMap()),
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<InstanceEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<InstanceEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'getPasswordData': ?getPasswordData,
      'hibernation': ?hibernation,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'iamInstanceProfile': ?iamInstanceProfile,
      'instanceInitiatedShutdownBehavior': ?instanceInitiatedShutdownBehavior,
      'instanceMarketOptions': ?pulumi.Input.mapOptionalInputValue<InstanceInstanceMarketOptions, Map<String, dynamic>>(instanceMarketOptions, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'keyName': ?keyName,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<InstanceLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'maintenanceOptions': ?pulumi.Input.mapOptionalInputValue<InstanceMaintenanceOptions, Map<String, dynamic>>(maintenanceOptions, (value) => value.toMap()),
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<InstanceMetadataOptions, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'monitoring': ?monitoring,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<InstanceNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementGroup': ?placementGroup,
      'placementGroupId': ?placementGroupId,
      'placementPartitionNumber': ?placementPartitionNumber,
      'primaryNetworkInterface': ?pulumi.Input.mapOptionalInputValue<InstancePrimaryNetworkInterface, Map<String, dynamic>>(primaryNetworkInterface, (value) => value.toMap()),
      'privateDnsNameOptions': ?pulumi.Input.mapOptionalInputValue<InstancePrivateDnsNameOptions, Map<String, dynamic>>(privateDnsNameOptions, (value) => value.toMap()),
      'privateIp': ?privateIp,
      'region': ?region,
      'rootBlockDevice': ?pulumi.Input.mapOptionalInputValue<InstanceRootBlockDevice, Map<String, dynamic>>(rootBlockDevice, (value) => value.toMap()),
      'secondaryNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceSecondaryNetworkInterface>, List<Map<String, dynamic>>>(secondaryNetworkInterfaces, (value) => pulumi.Input.encodeList<InstanceSecondaryNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryPrivateIps': ?secondaryPrivateIps,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenancy': ?tenancy,
      'userData': ?userData,
      'userDataBase64': ?userDataBase64,
      'userDataReplaceOnChange': ?userDataReplaceOnChange,
      'volumeTags': ?volumeTags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      ami: (() { final guardedValue = map['ami']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationSpecification: (() { final guardedValue = map['capacityReservationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuOptions: (() { final guardedValue = map['cpuOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creditSpecification: (() { final guardedValue = map['creditSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceCreditSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableApiStop: (() { final guardedValue = map['disableApiStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableApiTermination: (() { final guardedValue = map['disableApiTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceEbsBlockDevice>(guardedValue, (value) => InstanceEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrimaryIpv6: (() { final guardedValue = map['enablePrimaryIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enclaveOptions: (() { final guardedValue = map['enclaveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceEnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceEphemeralBlockDevice>(guardedValue, (value) => InstanceEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      getPasswordData: (() { final guardedValue = map['getPasswordData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hibernation: (() { final guardedValue = map['hibernation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostResourceGroupArn: (() { final guardedValue = map['hostResourceGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      instanceInitiatedShutdownBehavior: (() { final guardedValue = map['instanceInitiatedShutdownBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceMarketOptions: (() { final guardedValue = map['instanceMarketOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceInstanceMarketOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ipv6AddressCount: (() { final guardedValue = map['ipv6AddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceOptions: (() { final guardedValue = map['maintenanceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceNetworkInterface>(guardedValue, (value) => InstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementPartitionNumber: (() { final guardedValue = map['placementPartitionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      primaryNetworkInterface: (() { final guardedValue = map['primaryNetworkInterface']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePrimaryNetworkInterface.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateDnsNameOptions: (() { final guardedValue = map['privateDnsNameOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePrivateDnsNameOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootBlockDevice: (() { final guardedValue = map['rootBlockDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceRootBlockDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryNetworkInterfaces: (() { final guardedValue = map['secondaryNetworkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSecondaryNetworkInterface>(guardedValue, (value) => InstanceSecondaryNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondaryPrivateIps: (() { final guardedValue = map['secondaryPrivateIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceDestCheck: (() { final guardedValue = map['sourceDestCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataBase64: (() { final guardedValue = map['userDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataReplaceOnChange: (() { final guardedValue = map['userDataReplaceOnChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      volumeTags: (() { final guardedValue = map['volumeTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
