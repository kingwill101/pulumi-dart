// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_instance_request_capacity_reservation_specification.dart';
import 'spot_instance_request_cpu_options.dart';
import 'spot_instance_request_credit_specification.dart';
import 'spot_instance_request_ebs_block_device.dart';
import 'spot_instance_request_enclave_options.dart';
import 'spot_instance_request_ephemeral_block_device.dart';
import 'spot_instance_request_launch_template.dart';
import 'spot_instance_request_maintenance_options.dart';
import 'spot_instance_request_metadata_options.dart';
import 'spot_instance_request_network_interface.dart';
import 'spot_instance_request_private_dns_name_options.dart';
import 'spot_instance_request_root_block_device.dart';
import 'spot_instance_request_secondary_network_interface.dart';

/// {@template pulumi_ec2_spot_instance_request_spot_instance_request_args_doc}
/// The set of arguments for SpotInstanceRequest.
/// {@endtemplate}
/// {@macro pulumi_ec2_spot_instance_request_spot_instance_request_args_doc}
class SpotInstanceRequestArgs {
  /// AMI to use for the instance. Required unless `launch_template` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  final pulumi.Input<String>? ami;

  /// Whether to associate a public IP address with an instance in a VPC.
  final pulumi.Input<bool>? associatePublicIpAddress;

  /// AZ to start the instance in.
  final pulumi.Input<String>? availabilityZone;

  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  final pulumi.Input<SpotInstanceRequestCapacityReservationSpecification>?
  capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  final pulumi.Input<SpotInstanceRequestCpuOptions>? cpuOptions;

  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  final pulumi.Input<SpotInstanceRequestCreditSpecification>?
  creditSpecification;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  final pulumi.Input<bool>? disableApiStop;

  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  final pulumi.Input<bool>? disableApiTermination;

  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  final pulumi.Input<List<SpotInstanceRequestEbsBlockDevice>>? ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  final pulumi.Input<bool>? ebsOptimized;

  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enable_primary_ipv6` after it has been enabled forces recreation of the instance.
  final pulumi.Input<bool>? enablePrimaryIpv6;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  final pulumi.Input<SpotInstanceRequestEnclaveOptions>? enclaveOptions;

  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  final pulumi.Input<List<SpotInstanceRequestEphemeralBlockDevice>>?
  ephemeralBlockDevices;

  /// Destroys instance even if `disable_api_termination` or `disable_api_stop` is set to `true`. Defaults to `false`. Once this parameter is set to `true`, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final pulumi.Input<bool>? getPasswordData;

  /// If true, the launched EC2 instance will support hibernation.
  final pulumi.Input<bool>? hibernation;

  /// ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  final pulumi.Input<String>? hostId;

  /// ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the `tenancy` parameter or set it to `host`.
  final pulumi.Input<String>? hostResourceGroupArn;

  /// IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  final pulumi.Input<String>? iamInstanceProfile;

  /// Shutdown behavior for the instance. Amazon defaults this to `stop` for EBS-backed instances and `terminate` for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  final pulumi.Input<String>? instanceInitiatedShutdownBehavior;

  /// Indicates Spot instance behavior when it is interrupted. Valid values are `terminate`, `stop`, or `hibernate`. Default value is `terminate`.
  final pulumi.Input<String>? instanceInterruptionBehavior;

  /// Instance type to use for the instance. Required unless `launch_template` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instance_type` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  final pulumi.Input<String>? instanceType;

  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  final pulumi.Input<int>? ipv6AddressCount;

  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  final pulumi.Input<List<String>>? ipv6Addresses;

  /// Key name of the Key Pair to use for the instance; which can be managed using the `aws.ec2.KeyPair` resource.
  final pulumi.Input<String>? keyName;

  /// A launch group is a group of spot instances that launch together and terminate together.
  /// If left empty instances are launched and terminated individually.
  final pulumi.Input<String>? launchGroup;

  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  final pulumi.Input<SpotInstanceRequestLaunchTemplate>? launchTemplate;

  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  final pulumi.Input<SpotInstanceRequestMaintenanceOptions>? maintenanceOptions;

  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  final pulumi.Input<SpotInstanceRequestMetadataOptions>? metadataOptions;

  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  final pulumi.Input<bool>? monitoring;

  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  final pulumi.Input<List<SpotInstanceRequestNetworkInterface>>?
  networkInterfaces;

  /// Placement Group to start the instance in. Conflicts with `placement_group_id`.
  final pulumi.Input<String>? placementGroup;

  /// Placement Group ID to start the instance in. Conflicts with `placement_group`.
  final pulumi.Input<String>? placementGroupId;

  /// Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  final pulumi.Input<int>? placementPartitionNumber;

  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final pulumi.Input<SpotInstanceRequestPrivateDnsNameOptions>?
  privateDnsNameOptions;

  /// Private IP address to associate with the instance in a VPC.
  final pulumi.Input<String>? privateIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  final pulumi.Input<SpotInstanceRequestRootBlockDevice>? rootBlockDevice;

  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  final pulumi.Input<List<SpotInstanceRequestSecondaryNetworkInterface>>?
  secondaryNetworkInterfaces;

  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `network_interface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  final pulumi.Input<List<String>>? secondaryPrivateIps;

  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use `vpc_security_group_ids` instead.
  final pulumi.Input<List<String>>? securityGroups;

  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  final pulumi.Input<bool>? sourceDestCheck;

  /// The maximum price to request on the spot market.
  final pulumi.Input<String>? spotPrice;

  /// If set to `one-time`, after
  /// the instance is terminated, the spot request will be closed.
  final pulumi.Input<String>? spotType;

  /// VPC Subnet ID to launch in.
  final pulumi.Input<String>? subnetId;

  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  final pulumi.Input<String>? tenancy;

  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final pulumi.Input<String>? userData;

  /// Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final pulumi.Input<String>? userDataBase64;

  /// When used in combination with `user_data` or `user_data_base64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  final pulumi.Input<bool>? userDataReplaceOnChange;

  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final pulumi.Input<String>? validFrom;

  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  final pulumi.Input<String>? validUntil;

  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// > **NOTE:** Do not use `volume_tags` if you plan to manage block device tags outside the `aws.ec2.Instance` configuration, such as using `tags` in an `aws.ebs.Volume` resource attached via `aws.ec2.VolumeAttachment`. Doing so will result in resource cycling and inconsistent behavior.
  final pulumi.Input<Map<String, String>>? volumeTags;

  /// List of security group IDs to associate with.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  final pulumi.Input<bool>? waitForFulfillment;

  /// Creates a new [SpotInstanceRequestArgs].
  /// [ami] AMI to use for the instance. Required unless `launch_template` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  /// [associatePublicIpAddress] Whether to associate a public IP address with an instance in a VPC.
  /// [availabilityZone] AZ to start the instance in.
  /// [capacityReservationSpecification] Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  /// [cpuOptions] The CPU options for the instance. See CPU Options below for more details.
  /// [creditSpecification] Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  /// [disableApiStop] If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  /// [disableApiTermination] If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  /// [ebsBlockDevices] One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  /// [ebsOptimized] If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  /// [enablePrimaryIpv6] Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enable_primary_ipv6` after it has been enabled forces recreation of the instance.
  /// [enclaveOptions] Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  /// [ephemeralBlockDevices] One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  /// [forceDestroy] Destroys instance even if `disable_api_termination` or `disable_api_stop` is set to `true`. Defaults to `false`. Once this parameter is set to `true`, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  /// [getPasswordData] If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  /// [hibernation] If true, the launched EC2 instance will support hibernation.
  /// [hostId] ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  /// [hostResourceGroupArn] ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the `tenancy` parameter or set it to `host`.
  /// [iamInstanceProfile] IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  /// [instanceInitiatedShutdownBehavior] Shutdown behavior for the instance. Amazon defaults this to `stop` for EBS-backed instances and `terminate` for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  /// [instanceInterruptionBehavior] Indicates Spot instance behavior when it is interrupted. Valid values are `terminate`, `stop`, or `hibernate`. Default value is `terminate`.
  /// [instanceType] Instance type to use for the instance. Required unless `launch_template` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instance_type` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  /// [ipv6AddressCount] Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  /// [ipv6Addresses] Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  /// [keyName] Key name of the Key Pair to use for the instance; which can be managed using the `aws.ec2.KeyPair` resource.
  /// [launchGroup] A launch group is a group of spot instances that launch together and terminate together.
  /// [launchTemplate] Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  /// [maintenanceOptions] Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  /// [metadataOptions] Customize the metadata options of the instance. See Metadata Options below for more details.
  /// [monitoring] If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  /// [networkInterfaces] Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  /// [placementGroup] Placement Group to start the instance in. Conflicts with `placement_group_id`.
  /// [placementGroupId] Placement Group ID to start the instance in. Conflicts with `placement_group`.
  /// [placementPartitionNumber] Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  /// [privateDnsNameOptions] Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  /// [privateIp] Private IP address to associate with the instance in a VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootBlockDevice] Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  /// [secondaryNetworkInterfaces] One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  /// [secondaryPrivateIps] List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `network_interface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  /// [securityGroups] List of security group names to associate with.
  /// [sourceDestCheck] Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  /// [spotPrice] The maximum price to request on the spot market.
  /// [spotType] If set to `one-time`, after
  /// [subnetId] VPC Subnet ID to launch in.
  /// [tags] Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tenancy] Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  /// [userData] User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataBase64] Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataReplaceOnChange] When used in combination with `user_data` or `user_data_base64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  /// [validFrom] The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  /// [volumeTags] Map of tags to assign, at instance-creation time, to root and EBS volumes.
  /// [vpcSecurityGroupIds] List of security group IDs to associate with.
  /// [waitForFulfillment] If set, this provider will
  SpotInstanceRequestArgs({
    String? ami,
    bool? associatePublicIpAddress,
    String? availabilityZone,
    SpotInstanceRequestCapacityReservationSpecification?
    capacityReservationSpecification,
    SpotInstanceRequestCpuOptions? cpuOptions,
    SpotInstanceRequestCreditSpecification? creditSpecification,
    bool? disableApiStop,
    bool? disableApiTermination,
    List<SpotInstanceRequestEbsBlockDevice>? ebsBlockDevices,
    bool? ebsOptimized,
    bool? enablePrimaryIpv6,
    SpotInstanceRequestEnclaveOptions? enclaveOptions,
    List<SpotInstanceRequestEphemeralBlockDevice>? ephemeralBlockDevices,
    bool? forceDestroy,
    bool? getPasswordData,
    bool? hibernation,
    String? hostId,
    String? hostResourceGroupArn,
    String? iamInstanceProfile,
    String? instanceInitiatedShutdownBehavior,
    String? instanceInterruptionBehavior,
    String? instanceType,
    int? ipv6AddressCount,
    List<String>? ipv6Addresses,
    String? keyName,
    String? launchGroup,
    SpotInstanceRequestLaunchTemplate? launchTemplate,
    SpotInstanceRequestMaintenanceOptions? maintenanceOptions,
    SpotInstanceRequestMetadataOptions? metadataOptions,
    bool? monitoring,
    List<SpotInstanceRequestNetworkInterface>? networkInterfaces,
    String? placementGroup,
    String? placementGroupId,
    int? placementPartitionNumber,
    SpotInstanceRequestPrivateDnsNameOptions? privateDnsNameOptions,
    String? privateIp,
    String? region,
    SpotInstanceRequestRootBlockDevice? rootBlockDevice,
    List<SpotInstanceRequestSecondaryNetworkInterface>?
    secondaryNetworkInterfaces,
    List<String>? secondaryPrivateIps,
    List<String>? securityGroups,
    bool? sourceDestCheck,
    String? spotPrice,
    String? spotType,
    String? subnetId,
    Map<String, String>? tags,
    String? tenancy,
    String? userData,
    String? userDataBase64,
    bool? userDataReplaceOnChange,
    String? validFrom,
    String? validUntil,
    Map<String, String>? volumeTags,
    List<String>? vpcSecurityGroupIds,
    bool? waitForFulfillment,
  }) : ami = pulumi.Input.asOptionalInput<String>(ami),
       associatePublicIpAddress = pulumi.Input.asOptionalInput<bool>(
         associatePublicIpAddress,
       ),
       availabilityZone = pulumi.Input.asOptionalInput<String>(
         availabilityZone,
       ),
       capacityReservationSpecification =
           pulumi.Input.asOptionalInput<
             SpotInstanceRequestCapacityReservationSpecification
           >(capacityReservationSpecification),
       cpuOptions = pulumi.Input.asOptionalInput<SpotInstanceRequestCpuOptions>(
         cpuOptions,
       ),
       creditSpecification =
           pulumi.Input.asOptionalInput<SpotInstanceRequestCreditSpecification>(
             creditSpecification,
           ),
       disableApiStop = pulumi.Input.asOptionalInput<bool>(disableApiStop),
       disableApiTermination = pulumi.Input.asOptionalInput<bool>(
         disableApiTermination,
       ),
       ebsBlockDevices =
           pulumi.Input.asOptionalInput<
             List<SpotInstanceRequestEbsBlockDevice>
           >(ebsBlockDevices),
       ebsOptimized = pulumi.Input.asOptionalInput<bool>(ebsOptimized),
       enablePrimaryIpv6 = pulumi.Input.asOptionalInput<bool>(
         enablePrimaryIpv6,
       ),
       enclaveOptions =
           pulumi.Input.asOptionalInput<SpotInstanceRequestEnclaveOptions>(
             enclaveOptions,
           ),
       ephemeralBlockDevices =
           pulumi.Input.asOptionalInput<
             List<SpotInstanceRequestEphemeralBlockDevice>
           >(ephemeralBlockDevices),
       forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
       getPasswordData = pulumi.Input.asOptionalInput<bool>(getPasswordData),
       hibernation = pulumi.Input.asOptionalInput<bool>(hibernation),
       hostId = pulumi.Input.asOptionalInput<String>(hostId),
       hostResourceGroupArn = pulumi.Input.asOptionalInput<String>(
         hostResourceGroupArn,
       ),
       iamInstanceProfile = pulumi.Input.asOptionalInput<String>(
         iamInstanceProfile,
       ),
       instanceInitiatedShutdownBehavior = pulumi.Input.asOptionalInput<String>(
         instanceInitiatedShutdownBehavior,
       ),
       instanceInterruptionBehavior = pulumi.Input.asOptionalInput<String>(
         instanceInterruptionBehavior,
       ),
       instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
       ipv6AddressCount = pulumi.Input.asOptionalInput<int>(ipv6AddressCount),
       ipv6Addresses = pulumi.Input.asOptionalInput<List<String>>(
         ipv6Addresses,
       ),
       keyName = pulumi.Input.asOptionalInput<String>(keyName),
       launchGroup = pulumi.Input.asOptionalInput<String>(launchGroup),
       launchTemplate =
           pulumi.Input.asOptionalInput<SpotInstanceRequestLaunchTemplate>(
             launchTemplate,
           ),
       maintenanceOptions =
           pulumi.Input.asOptionalInput<SpotInstanceRequestMaintenanceOptions>(
             maintenanceOptions,
           ),
       metadataOptions =
           pulumi.Input.asOptionalInput<SpotInstanceRequestMetadataOptions>(
             metadataOptions,
           ),
       monitoring = pulumi.Input.asOptionalInput<bool>(monitoring),
       networkInterfaces =
           pulumi.Input.asOptionalInput<
             List<SpotInstanceRequestNetworkInterface>
           >(networkInterfaces),
       placementGroup = pulumi.Input.asOptionalInput<String>(placementGroup),
       placementGroupId = pulumi.Input.asOptionalInput<String>(
         placementGroupId,
       ),
       placementPartitionNumber = pulumi.Input.asOptionalInput<int>(
         placementPartitionNumber,
       ),
       privateDnsNameOptions =
           pulumi.Input.asOptionalInput<
             SpotInstanceRequestPrivateDnsNameOptions
           >(privateDnsNameOptions),
       privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
       region = pulumi.Input.asOptionalInput<String>(region),
       rootBlockDevice =
           pulumi.Input.asOptionalInput<SpotInstanceRequestRootBlockDevice>(
             rootBlockDevice,
           ),
       secondaryNetworkInterfaces =
           pulumi.Input.asOptionalInput<
             List<SpotInstanceRequestSecondaryNetworkInterface>
           >(secondaryNetworkInterfaces),
       secondaryPrivateIps = pulumi.Input.asOptionalInput<List<String>>(
         secondaryPrivateIps,
       ),
       securityGroups = pulumi.Input.asOptionalInput<List<String>>(
         securityGroups,
       ),
       sourceDestCheck = pulumi.Input.asOptionalInput<bool>(sourceDestCheck),
       spotPrice = pulumi.Input.asOptionalInput<String>(spotPrice),
       spotType = pulumi.Input.asOptionalInput<String>(spotType),
       subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       tenancy = pulumi.Input.asOptionalInput<String>(tenancy),
       userData = pulumi.Input.asOptionalInput<String>(userData),
       userDataBase64 = pulumi.Input.asOptionalInput<String>(userDataBase64),
       userDataReplaceOnChange = pulumi.Input.asOptionalInput<bool>(
         userDataReplaceOnChange,
       ),
       validFrom = pulumi.Input.asOptionalInput<String>(validFrom),
       validUntil = pulumi.Input.asOptionalInput<String>(validUntil),
       volumeTags = pulumi.Input.asOptionalInput<Map<String, String>>(
         volumeTags,
       ),
       vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(
         vpcSecurityGroupIds,
       ),
       waitForFulfillment = pulumi.Input.asOptionalInput<bool>(
         waitForFulfillment,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ami': ?ami,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'availabilityZone': ?availabilityZone,
      'capacityReservationSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestCapacityReservationSpecification,
            Map<String, dynamic>
          >(capacityReservationSpecification, (value) => value.toMap()),
      'cpuOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestCpuOptions,
            Map<String, dynamic>
          >(cpuOptions, (value) => value.toMap()),
      'creditSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestCreditSpecification,
            Map<String, dynamic>
          >(creditSpecification, (value) => value.toMap()),
      'disableApiStop': ?disableApiStop,
      'disableApiTermination': ?disableApiTermination,
      'ebsBlockDevices':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpotInstanceRequestEbsBlockDevice>,
            List<Map<String, dynamic>>
          >(
            ebsBlockDevices,
            (value) =>
                pulumi.Input.encodeList<
                  SpotInstanceRequestEbsBlockDevice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ebsOptimized': ?ebsOptimized,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'enclaveOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestEnclaveOptions,
            Map<String, dynamic>
          >(enclaveOptions, (value) => value.toMap()),
      'ephemeralBlockDevices':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpotInstanceRequestEphemeralBlockDevice>,
            List<Map<String, dynamic>>
          >(
            ephemeralBlockDevices,
            (value) =>
                pulumi.Input.encodeList<
                  SpotInstanceRequestEphemeralBlockDevice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'forceDestroy': ?forceDestroy,
      'getPasswordData': ?getPasswordData,
      'hibernation': ?hibernation,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'iamInstanceProfile': ?iamInstanceProfile,
      'instanceInitiatedShutdownBehavior': ?instanceInitiatedShutdownBehavior,
      'instanceInterruptionBehavior': ?instanceInterruptionBehavior,
      'instanceType': ?instanceType,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'keyName': ?keyName,
      'launchGroup': ?launchGroup,
      'launchTemplate':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestLaunchTemplate,
            Map<String, dynamic>
          >(launchTemplate, (value) => value.toMap()),
      'maintenanceOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestMaintenanceOptions,
            Map<String, dynamic>
          >(maintenanceOptions, (value) => value.toMap()),
      'metadataOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestMetadataOptions,
            Map<String, dynamic>
          >(metadataOptions, (value) => value.toMap()),
      'monitoring': ?monitoring,
      'networkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpotInstanceRequestNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            networkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  SpotInstanceRequestNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'placementGroup': ?placementGroup,
      'placementGroupId': ?placementGroupId,
      'placementPartitionNumber': ?placementPartitionNumber,
      'privateDnsNameOptions':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestPrivateDnsNameOptions,
            Map<String, dynamic>
          >(privateDnsNameOptions, (value) => value.toMap()),
      'privateIp': ?privateIp,
      'region': ?region,
      'rootBlockDevice':
          ?pulumi.Input.mapOptionalInputValue<
            SpotInstanceRequestRootBlockDevice,
            Map<String, dynamic>
          >(rootBlockDevice, (value) => value.toMap()),
      'secondaryNetworkInterfaces':
          ?pulumi.Input.mapOptionalInputValue<
            List<SpotInstanceRequestSecondaryNetworkInterface>,
            List<Map<String, dynamic>>
          >(
            secondaryNetworkInterfaces,
            (value) =>
                pulumi.Input.encodeList<
                  SpotInstanceRequestSecondaryNetworkInterface,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'secondaryPrivateIps': ?secondaryPrivateIps,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'spotPrice': ?spotPrice,
      'spotType': ?spotType,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tenancy': ?tenancy,
      'userData': ?userData,
      'userDataBase64': ?userDataBase64,
      'userDataReplaceOnChange': ?userDataReplaceOnChange,
      'validFrom': ?validFrom,
      'validUntil': ?validUntil,
      'volumeTags': ?volumeTags,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'waitForFulfillment': ?waitForFulfillment,
    };
  }

  factory SpotInstanceRequestArgs.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestArgs(
      ami: map['ami'] == null ? null : map['ami'] as String,
      associatePublicIpAddress: map['associatePublicIpAddress'] == null
          ? null
          : map['associatePublicIpAddress'] as bool,
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      capacityReservationSpecification:
          map['capacityReservationSpecification'] == null
          ? null
          : SpotInstanceRequestCapacityReservationSpecification.fromMap(
              (map['capacityReservationSpecification'] as Map)
                  .cast<String, dynamic>(),
            ),
      cpuOptions: map['cpuOptions'] == null
          ? null
          : SpotInstanceRequestCpuOptions.fromMap(
              (map['cpuOptions'] as Map).cast<String, dynamic>(),
            ),
      creditSpecification: map['creditSpecification'] == null
          ? null
          : SpotInstanceRequestCreditSpecification.fromMap(
              (map['creditSpecification'] as Map).cast<String, dynamic>(),
            ),
      disableApiStop: map['disableApiStop'] == null
          ? null
          : map['disableApiStop'] as bool,
      disableApiTermination: map['disableApiTermination'] == null
          ? null
          : map['disableApiTermination'] as bool,
      ebsBlockDevices: map['ebsBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<SpotInstanceRequestEbsBlockDevice>(
              map['ebsBlockDevices'],
              (value) => SpotInstanceRequestEbsBlockDevice.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      ebsOptimized: map['ebsOptimized'] == null
          ? null
          : map['ebsOptimized'] as bool,
      enablePrimaryIpv6: map['enablePrimaryIpv6'] == null
          ? null
          : map['enablePrimaryIpv6'] as bool,
      enclaveOptions: map['enclaveOptions'] == null
          ? null
          : SpotInstanceRequestEnclaveOptions.fromMap(
              (map['enclaveOptions'] as Map).cast<String, dynamic>(),
            ),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null
          ? null
          : pulumi.Input.decodeList<SpotInstanceRequestEphemeralBlockDevice>(
              map['ephemeralBlockDevices'],
              (value) => SpotInstanceRequestEphemeralBlockDevice.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      forceDestroy: map['forceDestroy'] == null
          ? null
          : map['forceDestroy'] as bool,
      getPasswordData: map['getPasswordData'] == null
          ? null
          : map['getPasswordData'] as bool,
      hibernation: map['hibernation'] == null
          ? null
          : map['hibernation'] as bool,
      hostId: map['hostId'] == null ? null : map['hostId'] as String,
      hostResourceGroupArn: map['hostResourceGroupArn'] == null
          ? null
          : map['hostResourceGroupArn'] as String,
      iamInstanceProfile: map['iamInstanceProfile'] == null
          ? null
          : map['iamInstanceProfile'] as String,
      instanceInitiatedShutdownBehavior:
          map['instanceInitiatedShutdownBehavior'] == null
          ? null
          : map['instanceInitiatedShutdownBehavior'] as String,
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null
          ? null
          : map['instanceInterruptionBehavior'] as String,
      instanceType: map['instanceType'] == null
          ? null
          : map['instanceType'] as String,
      ipv6AddressCount: map['ipv6AddressCount'] == null
          ? null
          : map['ipv6AddressCount'] as int,
      ipv6Addresses: map['ipv6Addresses'] == null
          ? null
          : (map['ipv6Addresses'] as List).cast<String>(),
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      launchGroup: map['launchGroup'] == null
          ? null
          : map['launchGroup'] as String,
      launchTemplate: map['launchTemplate'] == null
          ? null
          : SpotInstanceRequestLaunchTemplate.fromMap(
              (map['launchTemplate'] as Map).cast<String, dynamic>(),
            ),
      maintenanceOptions: map['maintenanceOptions'] == null
          ? null
          : SpotInstanceRequestMaintenanceOptions.fromMap(
              (map['maintenanceOptions'] as Map).cast<String, dynamic>(),
            ),
      metadataOptions: map['metadataOptions'] == null
          ? null
          : SpotInstanceRequestMetadataOptions.fromMap(
              (map['metadataOptions'] as Map).cast<String, dynamic>(),
            ),
      monitoring: map['monitoring'] == null ? null : map['monitoring'] as bool,
      networkInterfaces: map['networkInterfaces'] == null
          ? null
          : pulumi.Input.decodeList<SpotInstanceRequestNetworkInterface>(
              map['networkInterfaces'],
              (value) => SpotInstanceRequestNetworkInterface.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      placementGroup: map['placementGroup'] == null
          ? null
          : map['placementGroup'] as String,
      placementGroupId: map['placementGroupId'] == null
          ? null
          : map['placementGroupId'] as String,
      placementPartitionNumber: map['placementPartitionNumber'] == null
          ? null
          : map['placementPartitionNumber'] as int,
      privateDnsNameOptions: map['privateDnsNameOptions'] == null
          ? null
          : SpotInstanceRequestPrivateDnsNameOptions.fromMap(
              (map['privateDnsNameOptions'] as Map).cast<String, dynamic>(),
            ),
      privateIp: map['privateIp'] == null ? null : map['privateIp'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rootBlockDevice: map['rootBlockDevice'] == null
          ? null
          : SpotInstanceRequestRootBlockDevice.fromMap(
              (map['rootBlockDevice'] as Map).cast<String, dynamic>(),
            ),
      secondaryNetworkInterfaces: map['secondaryNetworkInterfaces'] == null
          ? null
          : pulumi
                .Input.decodeList<SpotInstanceRequestSecondaryNetworkInterface>(
              map['secondaryNetworkInterfaces'],
              (value) => SpotInstanceRequestSecondaryNetworkInterface.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      secondaryPrivateIps: map['secondaryPrivateIps'] == null
          ? null
          : (map['secondaryPrivateIps'] as List).cast<String>(),
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      sourceDestCheck: map['sourceDestCheck'] == null
          ? null
          : map['sourceDestCheck'] as bool,
      spotPrice: map['spotPrice'] == null ? null : map['spotPrice'] as String,
      spotType: map['spotType'] == null ? null : map['spotType'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
      userData: map['userData'] == null ? null : map['userData'] as String,
      userDataBase64: map['userDataBase64'] == null
          ? null
          : map['userDataBase64'] as String,
      userDataReplaceOnChange: map['userDataReplaceOnChange'] == null
          ? null
          : map['userDataReplaceOnChange'] as bool,
      validFrom: map['validFrom'] == null ? null : map['validFrom'] as String,
      validUntil: map['validUntil'] == null
          ? null
          : map['validUntil'] as String,
      volumeTags: map['volumeTags'] == null
          ? null
          : (map['volumeTags'] as Map).cast<String, String>(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
      waitForFulfillment: map['waitForFulfillment'] == null
          ? null
          : map['waitForFulfillment'] as bool,
    );
  }
}
