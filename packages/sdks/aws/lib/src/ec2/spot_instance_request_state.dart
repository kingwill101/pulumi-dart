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
  /// AMI to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
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
  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enablePrimaryIpv6` after it has been enabled forces recreation of the instance.
  final pulumi.Input<bool>? enablePrimaryIpv6;
  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  final pulumi.Input<SpotInstanceRequestEnclaveOptions>? enclaveOptions;
  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  final pulumi.Input<List<SpotInstanceRequestEphemeralBlockDevice>>? ephemeralBlockDevices;
  /// Destroys instance even if `disableApiTermination` or `disableApiStop` is set to `true`. Defaults to `false`. Once this parameter is set to `true`, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final pulumi.Input<bool>? forceDestroy;
  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `passwordData` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
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
  /// Instance type to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instanceType` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
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
  /// Placement Group to start the instance in. Conflicts with `placementGroupId`.
  final pulumi.Input<String>? placementGroup;
  /// Placement Group ID to start the instance in. Conflicts with `placementGroup`.
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
  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `networkInterface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  final pulumi.Input<List<String>>? secondaryPrivateIps;
  /// List of security group names to associate with.
  ///
  /// &gt; **NOTE:** If you are creating Instances in a VPC, use `vpcSecurityGroupIds` instead.
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
  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  final pulumi.Input<String>? tenancy;
  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `userDataBase64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final pulumi.Input<String>? userData;
  /// Can be used instead of `userData` to pass base64-encoded binary data directly. Use this instead of `userData` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final pulumi.Input<String>? userDataBase64;
  /// When used in combination with `userData` or `userDataBase64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  final pulumi.Input<bool>? userDataReplaceOnChange;
  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final pulumi.Input<String>? validFrom;
  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  final pulumi.Input<String>? validUntil;
  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// &gt; **NOTE:** Do not use `volumeTags` if you plan to manage block device tags outside the `aws.ec2.Instance` configuration, such as using `tags` in an `aws.ebs.Volume` resource attached via `aws.ec2.VolumeAttachment`. Doing so will result in resource cycling and inconsistent behavior.
  final pulumi.Input<Map<String, String>>? volumeTags;
  /// List of security group IDs to associate with.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  final pulumi.Input<bool>? waitForFulfillment;

  /// Creates a new [SpotInstanceRequestState].
  /// [ami] AMI to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
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
  /// [instanceInterruptionBehavior] Indicates Spot instance behavior when it is interrupted. Valid values are `terminate`, `stop`, or `hibernate`. Default value is `terminate`.
  /// [instanceState] Optional.
  /// [instanceType] Instance type to use for the instance. Required unless `launchTemplate` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instanceType` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
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
  /// [placementGroup] Placement Group to start the instance in. Conflicts with `placementGroupId`.
  /// [placementGroupId] Placement Group ID to start the instance in. Conflicts with `placementGroup`.
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
  /// [secondaryPrivateIps] List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `networkInterface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  /// [securityGroups] List of security group names to associate with.
  /// [sourceDestCheck] Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  /// [spotBidStatus] The current [bid
  /// [spotInstanceId] The Instance ID (if any) that is currently fulfilling
  /// [spotPrice] The maximum price to request on the spot market.
  /// [spotRequestState] The current [request
  /// [spotType] If set to `one-time`, after
  /// [subnetId] VPC Subnet ID to launch in.
  /// [tags] Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tenancy] Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  /// [userData] User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `userDataBase64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataBase64] Can be used instead of `userData` to pass base64-encoded binary data directly. Use this instead of `userData` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `userDataReplaceOnChange` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  /// [userDataReplaceOnChange] When used in combination with `userData` or `userDataBase64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  /// [validFrom] The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  /// [validUntil] The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  /// [volumeTags] Map of tags to assign, at instance-creation time, to root and EBS volumes.
  /// [vpcSecurityGroupIds] List of security group IDs to associate with.
  /// [waitForFulfillment] If set, this provider will
  const SpotInstanceRequestState({
    this.ami,
    this.arn,
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
    this.instanceInterruptionBehavior,
    this.instanceState,
    this.instanceType,
    this.ipv6AddressCount,
    this.ipv6Addresses,
    this.keyName,
    this.launchGroup,
    this.launchTemplate,
    this.maintenanceOptions,
    this.metadataOptions,
    this.monitoring,
    this.networkInterfaces,
    this.outpostArn,
    this.passwordData,
    this.placementGroup,
    this.placementGroupId,
    this.placementPartitionNumber,
    this.primaryNetworkInterfaceId,
    this.primaryNetworkInterfaces,
    this.privateDns,
    this.privateDnsNameOptions,
    this.privateIp,
    this.publicDns,
    this.publicIp,
    this.region,
    this.rootBlockDevice,
    this.secondaryNetworkInterfaces,
    this.secondaryPrivateIps,
    this.securityGroups,
    this.sourceDestCheck,
    this.spotBidStatus,
    this.spotInstanceId,
    this.spotPrice,
    this.spotRequestState,
    this.spotType,
    this.subnetId,
    this.tags,
    this.tagsAll,
    this.tenancy,
    this.userData,
    this.userDataBase64,
    this.userDataReplaceOnChange,
    this.validFrom,
    this.validUntil,
    this.volumeTags,
    this.vpcSecurityGroupIds,
    this.waitForFulfillment,
  });

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
      ami: (() { final guardedValue = map['ami']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatePublicIpAddress: (() { final guardedValue = map['associatePublicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      capacityReservationSpecification: (() { final guardedValue = map['capacityReservationSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestCapacityReservationSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cpuOptions: (() { final guardedValue = map['cpuOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      creditSpecification: (() { final guardedValue = map['creditSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestCreditSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableApiStop: (() { final guardedValue = map['disableApiStop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableApiTermination: (() { final guardedValue = map['disableApiTermination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ebsBlockDevices: (() { final guardedValue = map['ebsBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotInstanceRequestEbsBlockDevice>(guardedValue, (value) => SpotInstanceRequestEbsBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ebsOptimized: (() { final guardedValue = map['ebsOptimized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePrimaryIpv6: (() { final guardedValue = map['enablePrimaryIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enclaveOptions: (() { final guardedValue = map['enclaveOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestEnclaveOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ephemeralBlockDevices: (() { final guardedValue = map['ephemeralBlockDevices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotInstanceRequestEphemeralBlockDevice>(guardedValue, (value) => SpotInstanceRequestEphemeralBlockDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      getPasswordData: (() { final guardedValue = map['getPasswordData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hibernation: (() { final guardedValue = map['hibernation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostId: (() { final guardedValue = map['hostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostResourceGroupArn: (() { final guardedValue = map['hostResourceGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iamInstanceProfile: (() { final guardedValue = map['iamInstanceProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceInitiatedShutdownBehavior: (() { final guardedValue = map['instanceInitiatedShutdownBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceInterruptionBehavior: (() { final guardedValue = map['instanceInterruptionBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceState: (() { final guardedValue = map['instanceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6AddressCount: (() { final guardedValue = map['ipv6AddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchGroup: (() { final guardedValue = map['launchGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchTemplate: (() { final guardedValue = map['launchTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestLaunchTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceOptions: (() { final guardedValue = map['maintenanceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestMaintenanceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metadataOptions: (() { final guardedValue = map['metadataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestMetadataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotInstanceRequestNetworkInterface>(guardedValue, (value) => SpotInstanceRequestNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outpostArn: (() { final guardedValue = map['outpostArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordData: (() { final guardedValue = map['passwordData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      placementPartitionNumber: (() { final guardedValue = map['placementPartitionNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryNetworkInterfaceId: (() { final guardedValue = map['primaryNetworkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryNetworkInterfaces: (() { final guardedValue = map['primaryNetworkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotInstanceRequestPrimaryNetworkInterface>(guardedValue, (value) => SpotInstanceRequestPrimaryNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      privateDns: (() { final guardedValue = map['privateDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateDnsNameOptions: (() { final guardedValue = map['privateDnsNameOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestPrivateDnsNameOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicDns: (() { final guardedValue = map['publicDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIp: (() { final guardedValue = map['publicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootBlockDevice: (() { final guardedValue = map['rootBlockDevice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpotInstanceRequestRootBlockDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secondaryNetworkInterfaces: (() { final guardedValue = map['secondaryNetworkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SpotInstanceRequestSecondaryNetworkInterface>(guardedValue, (value) => SpotInstanceRequestSecondaryNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondaryPrivateIps: (() { final guardedValue = map['secondaryPrivateIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceDestCheck: (() { final guardedValue = map['sourceDestCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spotBidStatus: (() { final guardedValue = map['spotBidStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotInstanceId: (() { final guardedValue = map['spotInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotPrice: (() { final guardedValue = map['spotPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotRequestState: (() { final guardedValue = map['spotRequestState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spotType: (() { final guardedValue = map['spotType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenancy: (() { final guardedValue = map['tenancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataBase64: (() { final guardedValue = map['userDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataReplaceOnChange: (() { final guardedValue = map['userDataReplaceOnChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validFrom: (() { final guardedValue = map['validFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validUntil: (() { final guardedValue = map['validUntil']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeTags: (() { final guardedValue = map['volumeTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      waitForFulfillment: (() { final guardedValue = map['waitForFulfillment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
