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
import 'spot_instance_request_primary_network_interface.dart';
import 'spot_instance_request_private_dns_name_options.dart';
import 'spot_instance_request_root_block_device.dart';
import 'spot_instance_request_secondary_network_interface.dart';

/// Input properties used for looking up and filtering SpotInstanceRequest resources.
class SpotInstanceRequestState {
  /// AMI to use for the instance. Required unless `launch_template` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  final pulumi.Input<String>? ami;
  final pulumi.Input<String>? arn;
  /// Whether to associate a public IP address with an instance in a VPC.
  final pulumi.Input<bool>? associatePublicIpAddress;
  /// AZ to start the instance in.
  final pulumi.Input<String>? availabilityZone;
  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  final pulumi.Input<SpotInstanceRequestCapacityReservationSpecification>? capacityReservationSpecification;
  /// The CPU options for the instance. See CPU Options below for more details.
  final pulumi.Input<SpotInstanceRequestCpuOptions>? cpuOptions;
  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  final pulumi.Input<SpotInstanceRequestCreditSpecification>? creditSpecification;
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
  final pulumi.Input<List<SpotInstanceRequestEphemeralBlockDevice>>? ephemeralBlockDevices;
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
  final pulumi.Input<String>? instanceState;
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
  final pulumi.Input<List<SpotInstanceRequestNetworkInterface>>? networkInterfaces;
  final pulumi.Input<String>? outpostArn;
  final pulumi.Input<String>? passwordData;
  /// Placement Group to start the instance in. Conflicts with `placement_group_id`.
  final pulumi.Input<String>? placementGroup;
  /// Placement Group ID to start the instance in. Conflicts with `placement_group`.
  final pulumi.Input<String>? placementGroupId;
  /// Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  final pulumi.Input<int>? placementPartitionNumber;
  final pulumi.Input<String>? primaryNetworkInterfaceId;
  /// The primary network interface. See Primary Network Interface below.
  final pulumi.Input<List<SpotInstanceRequestPrimaryNetworkInterface>>? primaryNetworkInterfaces;
  /// The private DNS name assigned to the instance. Can only be
  /// used inside the Amazon EC2, and only available if you've enabled DNS hostnames
  /// for your VPC
  final pulumi.Input<String>? privateDns;
  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final pulumi.Input<SpotInstanceRequestPrivateDnsNameOptions>? privateDnsNameOptions;
  /// Private IP address to associate with the instance in a VPC.
  final pulumi.Input<String>? privateIp;
  /// The public DNS name assigned to the instance. For EC2-VPC, this
  /// is only available if you've enabled DNS hostnames for your VPC
  final pulumi.Input<String>? publicDns;
  /// The public IP address assigned to the instance, if applicable.
  final pulumi.Input<String>? publicIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  final pulumi.Input<SpotInstanceRequestRootBlockDevice>? rootBlockDevice;
  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  final pulumi.Input<List<SpotInstanceRequestSecondaryNetworkInterface>>? secondaryNetworkInterfaces;
  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `network_interface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  final pulumi.Input<List<String>>? secondaryPrivateIps;
  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use `vpc_security_group_ids` instead.
  final pulumi.Input<List<String>>? securityGroups;
  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  final pulumi.Input<bool>? sourceDestCheck;
  /// The current [bid
  /// status](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html)
  /// of the Spot Instance Request.
  final pulumi.Input<String>? spotBidStatus;
  /// The Instance ID (if any) that is currently fulfilling
  /// the Spot Instance request.
  final pulumi.Input<String>? spotInstanceId;
  /// The maximum price to request on the spot market.
  final pulumi.Input<String>? spotPrice;
  /// The current [request
  /// state](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html#creating-spot-request-status)
  /// of the Spot Instance Request.
  final pulumi.Input<String>? spotRequestState;
  /// If set to `one-time`, after
  /// the instance is terminated, the spot request will be closed.
  final pulumi.Input<String>? spotType;
  /// VPC Subnet ID to launch in.
  final pulumi.Input<String>? subnetId;
  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
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

  /// Creates a new [SpotInstanceRequestState].
  /// [ami] AMI to use for the instance. Required unless `launch_template` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  /// [arn] Optional.
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
  /// [instanceState] Optional.
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
  /// [outpostArn] Optional.
  /// [passwordData] Optional.
  /// [placementGroup] Placement Group to start the instance in. Conflicts with `placement_group_id`.
  /// [placementGroupId] Placement Group ID to start the instance in. Conflicts with `placement_group`.
  /// [placementPartitionNumber] Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  /// [primaryNetworkInterfaceId] Optional.
  /// [primaryNetworkInterfaces] The primary network interface. See Primary Network Interface below.
  /// [privateDns] The private DNS name assigned to the instance. Can only be
  /// [privateDnsNameOptions] Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  /// [privateIp] Private IP address to associate with the instance in a VPC.
  /// [publicDns] The public DNS name assigned to the instance. For EC2-VPC, this
  /// [publicIp] The public IP address assigned to the instance, if applicable.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rootBlockDevice] Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  /// [secondaryNetworkInterfaces] One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  /// [secondaryPrivateIps] List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `network_interface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  /// [securityGroups] List of security group names to associate with.
  /// [sourceDestCheck] Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  /// [spotBidStatus] The current [bid
  /// [spotInstanceId] The Instance ID (if any) that is currently fulfilling
  /// [spotPrice] The maximum price to request on the spot market.
  /// [spotRequestState] The current [request
  /// [spotType] If set to `one-time`, after
  /// [subnetId] VPC Subnet ID to launch in.
  /// [tags] Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [tenancy] Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  /// [userData] User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataBase64] Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataReplaceOnChange] When used in combination with `user_data` or `user_data_base64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  /// [validFrom] The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  /// [volumeTags] Map of tags to assign, at instance-creation time, to root and EBS volumes.
  /// [vpcSecurityGroupIds] List of security group IDs to associate with.
  /// [waitForFulfillment] If set, this provider will
  SpotInstanceRequestState({
    pulumi.Output<String>? ami,
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? associatePublicIpAddress,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<SpotInstanceRequestCapacityReservationSpecification>? capacityReservationSpecification,
    pulumi.Output<SpotInstanceRequestCpuOptions>? cpuOptions,
    pulumi.Output<SpotInstanceRequestCreditSpecification>? creditSpecification,
    pulumi.Output<bool>? disableApiStop,
    pulumi.Output<bool>? disableApiTermination,
    pulumi.Output<List<SpotInstanceRequestEbsBlockDevice>>? ebsBlockDevices,
    pulumi.Output<bool>? ebsOptimized,
    pulumi.Output<bool>? enablePrimaryIpv6,
    pulumi.Output<SpotInstanceRequestEnclaveOptions>? enclaveOptions,
    pulumi.Output<List<SpotInstanceRequestEphemeralBlockDevice>>? ephemeralBlockDevices,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<bool>? getPasswordData,
    pulumi.Output<bool>? hibernation,
    pulumi.Output<String>? hostId,
    pulumi.Output<String>? hostResourceGroupArn,
    pulumi.Output<String>? iamInstanceProfile,
    pulumi.Output<String>? instanceInitiatedShutdownBehavior,
    pulumi.Output<String>? instanceInterruptionBehavior,
    pulumi.Output<String>? instanceState,
    pulumi.Output<String>? instanceType,
    pulumi.Output<int>? ipv6AddressCount,
    pulumi.Output<List<String>>? ipv6Addresses,
    pulumi.Output<String>? keyName,
    pulumi.Output<String>? launchGroup,
    pulumi.Output<SpotInstanceRequestLaunchTemplate>? launchTemplate,
    pulumi.Output<SpotInstanceRequestMaintenanceOptions>? maintenanceOptions,
    pulumi.Output<SpotInstanceRequestMetadataOptions>? metadataOptions,
    pulumi.Output<bool>? monitoring,
    pulumi.Output<List<SpotInstanceRequestNetworkInterface>>? networkInterfaces,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? passwordData,
    pulumi.Output<String>? placementGroup,
    pulumi.Output<String>? placementGroupId,
    pulumi.Output<int>? placementPartitionNumber,
    pulumi.Output<String>? primaryNetworkInterfaceId,
    pulumi.Output<List<SpotInstanceRequestPrimaryNetworkInterface>>? primaryNetworkInterfaces,
    pulumi.Output<String>? privateDns,
    pulumi.Output<SpotInstanceRequestPrivateDnsNameOptions>? privateDnsNameOptions,
    pulumi.Output<String>? privateIp,
    pulumi.Output<String>? publicDns,
    pulumi.Output<String>? publicIp,
    pulumi.Output<String>? region,
    pulumi.Output<SpotInstanceRequestRootBlockDevice>? rootBlockDevice,
    pulumi.Output<List<SpotInstanceRequestSecondaryNetworkInterface>>? secondaryNetworkInterfaces,
    pulumi.Output<List<String>>? secondaryPrivateIps,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<bool>? sourceDestCheck,
    pulumi.Output<String>? spotBidStatus,
    pulumi.Output<String>? spotInstanceId,
    pulumi.Output<String>? spotPrice,
    pulumi.Output<String>? spotRequestState,
    pulumi.Output<String>? spotType,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? tenancy,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? userDataBase64,
    pulumi.Output<bool>? userDataReplaceOnChange,
    pulumi.Output<String>? validFrom,
    pulumi.Output<String>? validUntil,
    pulumi.Output<Map<String, String>>? volumeTags,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
    pulumi.Output<bool>? waitForFulfillment,
  }) :
      ami = pulumi.Input.asOptionalInput<String>(ami),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      associatePublicIpAddress = pulumi.Input.asOptionalInput<bool>(associatePublicIpAddress),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      capacityReservationSpecification = pulumi.Input.asOptionalInput<SpotInstanceRequestCapacityReservationSpecification>(capacityReservationSpecification),
      cpuOptions = pulumi.Input.asOptionalInput<SpotInstanceRequestCpuOptions>(cpuOptions),
      creditSpecification = pulumi.Input.asOptionalInput<SpotInstanceRequestCreditSpecification>(creditSpecification),
      disableApiStop = pulumi.Input.asOptionalInput<bool>(disableApiStop),
      disableApiTermination = pulumi.Input.asOptionalInput<bool>(disableApiTermination),
      ebsBlockDevices = pulumi.Input.asOptionalInput<List<SpotInstanceRequestEbsBlockDevice>>(ebsBlockDevices),
      ebsOptimized = pulumi.Input.asOptionalInput<bool>(ebsOptimized),
      enablePrimaryIpv6 = pulumi.Input.asOptionalInput<bool>(enablePrimaryIpv6),
      enclaveOptions = pulumi.Input.asOptionalInput<SpotInstanceRequestEnclaveOptions>(enclaveOptions),
      ephemeralBlockDevices = pulumi.Input.asOptionalInput<List<SpotInstanceRequestEphemeralBlockDevice>>(ephemeralBlockDevices),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      getPasswordData = pulumi.Input.asOptionalInput<bool>(getPasswordData),
      hibernation = pulumi.Input.asOptionalInput<bool>(hibernation),
      hostId = pulumi.Input.asOptionalInput<String>(hostId),
      hostResourceGroupArn = pulumi.Input.asOptionalInput<String>(hostResourceGroupArn),
      iamInstanceProfile = pulumi.Input.asOptionalInput<String>(iamInstanceProfile),
      instanceInitiatedShutdownBehavior = pulumi.Input.asOptionalInput<String>(instanceInitiatedShutdownBehavior),
      instanceInterruptionBehavior = pulumi.Input.asOptionalInput<String>(instanceInterruptionBehavior),
      instanceState = pulumi.Input.asOptionalInput<String>(instanceState),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      ipv6AddressCount = pulumi.Input.asOptionalInput<int>(ipv6AddressCount),
      ipv6Addresses = pulumi.Input.asOptionalInput<List<String>>(ipv6Addresses),
      keyName = pulumi.Input.asOptionalInput<String>(keyName),
      launchGroup = pulumi.Input.asOptionalInput<String>(launchGroup),
      launchTemplate = pulumi.Input.asOptionalInput<SpotInstanceRequestLaunchTemplate>(launchTemplate),
      maintenanceOptions = pulumi.Input.asOptionalInput<SpotInstanceRequestMaintenanceOptions>(maintenanceOptions),
      metadataOptions = pulumi.Input.asOptionalInput<SpotInstanceRequestMetadataOptions>(metadataOptions),
      monitoring = pulumi.Input.asOptionalInput<bool>(monitoring),
      networkInterfaces = pulumi.Input.asOptionalInput<List<SpotInstanceRequestNetworkInterface>>(networkInterfaces),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      passwordData = pulumi.Input.asOptionalInput<String>(passwordData),
      placementGroup = pulumi.Input.asOptionalInput<String>(placementGroup),
      placementGroupId = pulumi.Input.asOptionalInput<String>(placementGroupId),
      placementPartitionNumber = pulumi.Input.asOptionalInput<int>(placementPartitionNumber),
      primaryNetworkInterfaceId = pulumi.Input.asOptionalInput<String>(primaryNetworkInterfaceId),
      primaryNetworkInterfaces = pulumi.Input.asOptionalInput<List<SpotInstanceRequestPrimaryNetworkInterface>>(primaryNetworkInterfaces),
      privateDns = pulumi.Input.asOptionalInput<String>(privateDns),
      privateDnsNameOptions = pulumi.Input.asOptionalInput<SpotInstanceRequestPrivateDnsNameOptions>(privateDnsNameOptions),
      privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
      publicDns = pulumi.Input.asOptionalInput<String>(publicDns),
      publicIp = pulumi.Input.asOptionalInput<String>(publicIp),
      region = pulumi.Input.asOptionalInput<String>(region),
      rootBlockDevice = pulumi.Input.asOptionalInput<SpotInstanceRequestRootBlockDevice>(rootBlockDevice),
      secondaryNetworkInterfaces = pulumi.Input.asOptionalInput<List<SpotInstanceRequestSecondaryNetworkInterface>>(secondaryNetworkInterfaces),
      secondaryPrivateIps = pulumi.Input.asOptionalInput<List<String>>(secondaryPrivateIps),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      sourceDestCheck = pulumi.Input.asOptionalInput<bool>(sourceDestCheck),
      spotBidStatus = pulumi.Input.asOptionalInput<String>(spotBidStatus),
      spotInstanceId = pulumi.Input.asOptionalInput<String>(spotInstanceId),
      spotPrice = pulumi.Input.asOptionalInput<String>(spotPrice),
      spotRequestState = pulumi.Input.asOptionalInput<String>(spotRequestState),
      spotType = pulumi.Input.asOptionalInput<String>(spotType),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenancy = pulumi.Input.asOptionalInput<String>(tenancy),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      userDataBase64 = pulumi.Input.asOptionalInput<String>(userDataBase64),
      userDataReplaceOnChange = pulumi.Input.asOptionalInput<bool>(userDataReplaceOnChange),
      validFrom = pulumi.Input.asOptionalInput<String>(validFrom),
      validUntil = pulumi.Input.asOptionalInput<String>(validUntil),
      volumeTags = pulumi.Input.asOptionalInput<Map<String, String>>(volumeTags),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds),
      waitForFulfillment = pulumi.Input.asOptionalInput<bool>(waitForFulfillment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ami': ?ami,
      'arn': ?arn,
      'associatePublicIpAddress': ?associatePublicIpAddress,
      'availabilityZone': ?availabilityZone,
      'capacityReservationSpecification': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestCapacityReservationSpecification, Map<String, dynamic>>(capacityReservationSpecification, (value) => value.toMap()),
      'cpuOptions': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestCpuOptions, Map<String, dynamic>>(cpuOptions, (value) => value.toMap()),
      'creditSpecification': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestCreditSpecification, Map<String, dynamic>>(creditSpecification, (value) => value.toMap()),
      'disableApiStop': ?disableApiStop,
      'disableApiTermination': ?disableApiTermination,
      'ebsBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<SpotInstanceRequestEbsBlockDevice>, List<Map<String, dynamic>>>(ebsBlockDevices, (value) => pulumi.Input.encodeList<SpotInstanceRequestEbsBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ebsOptimized': ?ebsOptimized,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'enclaveOptions': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestEnclaveOptions, Map<String, dynamic>>(enclaveOptions, (value) => value.toMap()),
      'ephemeralBlockDevices': ?pulumi.Input.mapOptionalInputValue<List<SpotInstanceRequestEphemeralBlockDevice>, List<Map<String, dynamic>>>(ephemeralBlockDevices, (value) => pulumi.Input.encodeList<SpotInstanceRequestEphemeralBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forceDestroy': ?forceDestroy,
      'getPasswordData': ?getPasswordData,
      'hibernation': ?hibernation,
      'hostId': ?hostId,
      'hostResourceGroupArn': ?hostResourceGroupArn,
      'iamInstanceProfile': ?iamInstanceProfile,
      'instanceInitiatedShutdownBehavior': ?instanceInitiatedShutdownBehavior,
      'instanceInterruptionBehavior': ?instanceInterruptionBehavior,
      'instanceState': ?instanceState,
      'instanceType': ?instanceType,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6Addresses': ?ipv6Addresses,
      'keyName': ?keyName,
      'launchGroup': ?launchGroup,
      'launchTemplate': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestLaunchTemplate, Map<String, dynamic>>(launchTemplate, (value) => value.toMap()),
      'maintenanceOptions': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestMaintenanceOptions, Map<String, dynamic>>(maintenanceOptions, (value) => value.toMap()),
      'metadataOptions': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestMetadataOptions, Map<String, dynamic>>(metadataOptions, (value) => value.toMap()),
      'monitoring': ?monitoring,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<SpotInstanceRequestNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<SpotInstanceRequestNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outpostArn': ?outpostArn,
      'passwordData': ?passwordData,
      'placementGroup': ?placementGroup,
      'placementGroupId': ?placementGroupId,
      'placementPartitionNumber': ?placementPartitionNumber,
      'primaryNetworkInterfaceId': ?primaryNetworkInterfaceId,
      'primaryNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<SpotInstanceRequestPrimaryNetworkInterface>, List<Map<String, dynamic>>>(primaryNetworkInterfaces, (value) => pulumi.Input.encodeList<SpotInstanceRequestPrimaryNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateDns': ?privateDns,
      'privateDnsNameOptions': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestPrivateDnsNameOptions, Map<String, dynamic>>(privateDnsNameOptions, (value) => value.toMap()),
      'privateIp': ?privateIp,
      'publicDns': ?publicDns,
      'publicIp': ?publicIp,
      'region': ?region,
      'rootBlockDevice': ?pulumi.Input.mapOptionalInputValue<SpotInstanceRequestRootBlockDevice, Map<String, dynamic>>(rootBlockDevice, (value) => value.toMap()),
      'secondaryNetworkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<SpotInstanceRequestSecondaryNetworkInterface>, List<Map<String, dynamic>>>(secondaryNetworkInterfaces, (value) => pulumi.Input.encodeList<SpotInstanceRequestSecondaryNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryPrivateIps': ?secondaryPrivateIps,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'spotBidStatus': ?spotBidStatus,
      'spotInstanceId': ?spotInstanceId,
      'spotPrice': ?spotPrice,
      'spotRequestState': ?spotRequestState,
      'spotType': ?spotType,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
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

  factory SpotInstanceRequestState.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestState(
      ami: map['ami'] == null ? null : pulumi.Output.create<String>(map['ami'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      associatePublicIpAddress: map['associatePublicIpAddress'] == null ? null : pulumi.Output.create<bool>(map['associatePublicIpAddress'] as bool),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      capacityReservationSpecification: map['capacityReservationSpecification'] == null ? null : pulumi.Output.create<SpotInstanceRequestCapacityReservationSpecification>(SpotInstanceRequestCapacityReservationSpecification.fromMap((map['capacityReservationSpecification'] as Map).cast<String, dynamic>())),
      cpuOptions: map['cpuOptions'] == null ? null : pulumi.Output.create<SpotInstanceRequestCpuOptions>(SpotInstanceRequestCpuOptions.fromMap((map['cpuOptions'] as Map).cast<String, dynamic>())),
      creditSpecification: map['creditSpecification'] == null ? null : pulumi.Output.create<SpotInstanceRequestCreditSpecification>(SpotInstanceRequestCreditSpecification.fromMap((map['creditSpecification'] as Map).cast<String, dynamic>())),
      disableApiStop: map['disableApiStop'] == null ? null : pulumi.Output.create<bool>(map['disableApiStop'] as bool),
      disableApiTermination: map['disableApiTermination'] == null ? null : pulumi.Output.create<bool>(map['disableApiTermination'] as bool),
      ebsBlockDevices: map['ebsBlockDevices'] == null ? null : pulumi.Output.create<List<SpotInstanceRequestEbsBlockDevice>>(pulumi.Input.decodeList<SpotInstanceRequestEbsBlockDevice>(map['ebsBlockDevices'], (value) => SpotInstanceRequestEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      ebsOptimized: map['ebsOptimized'] == null ? null : pulumi.Output.create<bool>(map['ebsOptimized'] as bool),
      enablePrimaryIpv6: map['enablePrimaryIpv6'] == null ? null : pulumi.Output.create<bool>(map['enablePrimaryIpv6'] as bool),
      enclaveOptions: map['enclaveOptions'] == null ? null : pulumi.Output.create<SpotInstanceRequestEnclaveOptions>(SpotInstanceRequestEnclaveOptions.fromMap((map['enclaveOptions'] as Map).cast<String, dynamic>())),
      ephemeralBlockDevices: map['ephemeralBlockDevices'] == null ? null : pulumi.Output.create<List<SpotInstanceRequestEphemeralBlockDevice>>(pulumi.Input.decodeList<SpotInstanceRequestEphemeralBlockDevice>(map['ephemeralBlockDevices'], (value) => SpotInstanceRequestEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      getPasswordData: map['getPasswordData'] == null ? null : pulumi.Output.create<bool>(map['getPasswordData'] as bool),
      hibernation: map['hibernation'] == null ? null : pulumi.Output.create<bool>(map['hibernation'] as bool),
      hostId: map['hostId'] == null ? null : pulumi.Output.create<String>(map['hostId'] as String),
      hostResourceGroupArn: map['hostResourceGroupArn'] == null ? null : pulumi.Output.create<String>(map['hostResourceGroupArn'] as String),
      iamInstanceProfile: map['iamInstanceProfile'] == null ? null : pulumi.Output.create<String>(map['iamInstanceProfile'] as String),
      instanceInitiatedShutdownBehavior: map['instanceInitiatedShutdownBehavior'] == null ? null : pulumi.Output.create<String>(map['instanceInitiatedShutdownBehavior'] as String),
      instanceInterruptionBehavior: map['instanceInterruptionBehavior'] == null ? null : pulumi.Output.create<String>(map['instanceInterruptionBehavior'] as String),
      instanceState: map['instanceState'] == null ? null : pulumi.Output.create<String>(map['instanceState'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : pulumi.Output.create<int>(map['ipv6AddressCount'] as int),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6Addresses'] as List).cast<String>()),
      keyName: map['keyName'] == null ? null : pulumi.Output.create<String>(map['keyName'] as String),
      launchGroup: map['launchGroup'] == null ? null : pulumi.Output.create<String>(map['launchGroup'] as String),
      launchTemplate: map['launchTemplate'] == null ? null : pulumi.Output.create<SpotInstanceRequestLaunchTemplate>(SpotInstanceRequestLaunchTemplate.fromMap((map['launchTemplate'] as Map).cast<String, dynamic>())),
      maintenanceOptions: map['maintenanceOptions'] == null ? null : pulumi.Output.create<SpotInstanceRequestMaintenanceOptions>(SpotInstanceRequestMaintenanceOptions.fromMap((map['maintenanceOptions'] as Map).cast<String, dynamic>())),
      metadataOptions: map['metadataOptions'] == null ? null : pulumi.Output.create<SpotInstanceRequestMetadataOptions>(SpotInstanceRequestMetadataOptions.fromMap((map['metadataOptions'] as Map).cast<String, dynamic>())),
      monitoring: map['monitoring'] == null ? null : pulumi.Output.create<bool>(map['monitoring'] as bool),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<SpotInstanceRequestNetworkInterface>>(pulumi.Input.decodeList<SpotInstanceRequestNetworkInterface>(map['networkInterfaces'], (value) => SpotInstanceRequestNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      passwordData: map['passwordData'] == null ? null : pulumi.Output.create<String>(map['passwordData'] as String),
      placementGroup: map['placementGroup'] == null ? null : pulumi.Output.create<String>(map['placementGroup'] as String),
      placementGroupId: map['placementGroupId'] == null ? null : pulumi.Output.create<String>(map['placementGroupId'] as String),
      placementPartitionNumber: map['placementPartitionNumber'] == null ? null : pulumi.Output.create<int>(map['placementPartitionNumber'] as int),
      primaryNetworkInterfaceId: map['primaryNetworkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['primaryNetworkInterfaceId'] as String),
      primaryNetworkInterfaces: map['primaryNetworkInterfaces'] == null ? null : pulumi.Output.create<List<SpotInstanceRequestPrimaryNetworkInterface>>(pulumi.Input.decodeList<SpotInstanceRequestPrimaryNetworkInterface>(map['primaryNetworkInterfaces'], (value) => SpotInstanceRequestPrimaryNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      privateDns: map['privateDns'] == null ? null : pulumi.Output.create<String>(map['privateDns'] as String),
      privateDnsNameOptions: map['privateDnsNameOptions'] == null ? null : pulumi.Output.create<SpotInstanceRequestPrivateDnsNameOptions>(SpotInstanceRequestPrivateDnsNameOptions.fromMap((map['privateDnsNameOptions'] as Map).cast<String, dynamic>())),
      privateIp: map['privateIp'] == null ? null : pulumi.Output.create<String>(map['privateIp'] as String),
      publicDns: map['publicDns'] == null ? null : pulumi.Output.create<String>(map['publicDns'] as String),
      publicIp: map['publicIp'] == null ? null : pulumi.Output.create<String>(map['publicIp'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rootBlockDevice: map['rootBlockDevice'] == null ? null : pulumi.Output.create<SpotInstanceRequestRootBlockDevice>(SpotInstanceRequestRootBlockDevice.fromMap((map['rootBlockDevice'] as Map).cast<String, dynamic>())),
      secondaryNetworkInterfaces: map['secondaryNetworkInterfaces'] == null ? null : pulumi.Output.create<List<SpotInstanceRequestSecondaryNetworkInterface>>(pulumi.Input.decodeList<SpotInstanceRequestSecondaryNetworkInterface>(map['secondaryNetworkInterfaces'], (value) => SpotInstanceRequestSecondaryNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      secondaryPrivateIps: map['secondaryPrivateIps'] == null ? null : pulumi.Output.create<List<String>>((map['secondaryPrivateIps'] as List).cast<String>()),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : pulumi.Output.create<bool>(map['sourceDestCheck'] as bool),
      spotBidStatus: map['spotBidStatus'] == null ? null : pulumi.Output.create<String>(map['spotBidStatus'] as String),
      spotInstanceId: map['spotInstanceId'] == null ? null : pulumi.Output.create<String>(map['spotInstanceId'] as String),
      spotPrice: map['spotPrice'] == null ? null : pulumi.Output.create<String>(map['spotPrice'] as String),
      spotRequestState: map['spotRequestState'] == null ? null : pulumi.Output.create<String>(map['spotRequestState'] as String),
      spotType: map['spotType'] == null ? null : pulumi.Output.create<String>(map['spotType'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenancy: map['tenancy'] == null ? null : pulumi.Output.create<String>(map['tenancy'] as String),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      userDataBase64: map['userDataBase64'] == null ? null : pulumi.Output.create<String>(map['userDataBase64'] as String),
      userDataReplaceOnChange: map['userDataReplaceOnChange'] == null ? null : pulumi.Output.create<bool>(map['userDataReplaceOnChange'] as bool),
      validFrom: map['validFrom'] == null ? null : pulumi.Output.create<String>(map['validFrom'] as String),
      validUntil: map['validUntil'] == null ? null : pulumi.Output.create<String>(map['validUntil'] as String),
      volumeTags: map['volumeTags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['volumeTags'] as Map).cast<String, String>()),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
      waitForFulfillment: map['waitForFulfillment'] == null ? null : pulumi.Output.create<bool>(map['waitForFulfillment'] as bool),
    );
  }
}

