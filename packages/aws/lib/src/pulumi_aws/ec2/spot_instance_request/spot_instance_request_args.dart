// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../spot_instance_request_capacity_reservation_specification/spot_instance_request_capacity_reservation_specification.dart';
import '../spot_instance_request_cpu_options/spot_instance_request_cpu_options.dart';
import '../spot_instance_request_credit_specification/spot_instance_request_credit_specification.dart';
import '../spot_instance_request_ebs_block_device/spot_instance_request_ebs_block_device.dart';
import '../spot_instance_request_enclave_options/spot_instance_request_enclave_options.dart';
import '../spot_instance_request_ephemeral_block_device/spot_instance_request_ephemeral_block_device.dart';
import '../spot_instance_request_launch_template/spot_instance_request_launch_template.dart';
import '../spot_instance_request_maintenance_options/spot_instance_request_maintenance_options.dart';
import '../spot_instance_request_metadata_options/spot_instance_request_metadata_options.dart';
import '../spot_instance_request_network_interface/spot_instance_request_network_interface.dart';
import '../spot_instance_request_private_dns_name_options/spot_instance_request_private_dns_name_options.dart';
import '../spot_instance_request_root_block_device/spot_instance_request_root_block_device.dart';
import '../spot_instance_request_secondary_network_interface/spot_instance_request_secondary_network_interface.dart';

/// The set of arguments for SpotInstanceRequest.
class SpotInstanceRequestArgs {
  /// AMI to use for the instance. Required unless <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting <span pulumi-lang-nodejs="`ami`" pulumi-lang-dotnet="`Ami`" pulumi-lang-go="`ami`" pulumi-lang-python="`ami`" pulumi-lang-yaml="`ami`" pulumi-lang-java="`ami`">`ami`</span> will override the AMI specified in the Launch Template.
  final Input<String>? ami;

  /// Whether to associate a public IP address with an instance in a VPC.
  final Input<bool>? associatePublicIpAddress;

  /// AZ to start the instance in.
  final Input<String>? availabilityZone;

  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  final Input<SpotInstanceRequestCapacityReservationSpecification>?
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  final Input<SpotInstanceRequestCpuOptions>? cpuOptions;

  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  final Input<SpotInstanceRequestCreditSpecification>? creditSpecification;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  final Input<bool>? disableApiStop;

  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  final Input<bool>? disableApiTermination;

  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  final Input<List<SpotInstanceRequestEbsBlockDevice>>? ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  final Input<bool>? ebsOptimized;

  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling <span pulumi-lang-nodejs="`enablePrimaryIpv6`" pulumi-lang-dotnet="`EnablePrimaryIpv6`" pulumi-lang-go="`enablePrimaryIpv6`" pulumi-lang-python="`enable_primary_ipv6`" pulumi-lang-yaml="`enablePrimaryIpv6`" pulumi-lang-java="`enablePrimaryIpv6`">`enable_primary_ipv6`</span> after it has been enabled forces recreation of the instance.
  final Input<bool>? enablePrimaryIpv6;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  final Input<SpotInstanceRequestEnclaveOptions>? enclaveOptions;

  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  final Input<List<SpotInstanceRequestEphemeralBlockDevice>>?
      ephemeralBlockDevices;

  /// Destroys instance even if <span pulumi-lang-nodejs="`disableApiTermination`" pulumi-lang-dotnet="`DisableApiTermination`" pulumi-lang-go="`disableApiTermination`" pulumi-lang-python="`disable_api_termination`" pulumi-lang-yaml="`disableApiTermination`" pulumi-lang-java="`disableApiTermination`">`disable_api_termination`</span> or <span pulumi-lang-nodejs="`disableApiStop`" pulumi-lang-dotnet="`DisableApiStop`" pulumi-lang-go="`disableApiStop`" pulumi-lang-python="`disable_api_stop`" pulumi-lang-yaml="`disableApiStop`" pulumi-lang-java="`disableApiStop`">`disable_api_stop`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  final Input<bool>? forceDestroy;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the <span pulumi-lang-nodejs="`passwordData`" pulumi-lang-dotnet="`PasswordData`" pulumi-lang-go="`passwordData`" pulumi-lang-python="`password_data`" pulumi-lang-yaml="`passwordData`" pulumi-lang-java="`passwordData`">`password_data`</span> attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  final Input<bool>? getPasswordData;

  /// If true, the launched EC2 instance will support hibernation.
  final Input<bool>? hibernation;

  /// ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  final Input<String>? hostId;

  /// ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the <span pulumi-lang-nodejs="`tenancy`" pulumi-lang-dotnet="`Tenancy`" pulumi-lang-go="`tenancy`" pulumi-lang-python="`tenancy`" pulumi-lang-yaml="`tenancy`" pulumi-lang-java="`tenancy`">`tenancy`</span> parameter or set it to <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  final Input<String>? hostResourceGroupArn;

  /// IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  final Input<String>? iamInstanceProfile;

  /// Shutdown behavior for the instance. Amazon defaults this to <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span> for EBS-backed instances and <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span> for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  final Input<String>? instanceInitiatedShutdownBehavior;

  /// Indicates Spot instance behavior when it is interrupted. Valid values are <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>, <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>, or <span pulumi-lang-nodejs="`hibernate`" pulumi-lang-dotnet="`Hibernate`" pulumi-lang-go="`hibernate`" pulumi-lang-python="`hibernate`" pulumi-lang-yaml="`hibernate`" pulumi-lang-java="`hibernate`">`hibernate`</span>. Default value is <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  final Input<String>? instanceInterruptionBehavior;

  /// Instance type to use for the instance. Required unless <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  final Input<String>? instanceType;

  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  final Input<int>? ipv6AddressCount;

  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  final Input<List<String>>? ipv6Addresses;

  /// Key name of the Key Pair to use for the instance; which can be managed using the <span pulumi-lang-nodejs="`aws.ec2.KeyPair`" pulumi-lang-dotnet="`aws.ec2.KeyPair`" pulumi-lang-go="`ec2.KeyPair`" pulumi-lang-python="`ec2.KeyPair`" pulumi-lang-yaml="`aws.ec2.KeyPair`" pulumi-lang-java="`aws.ec2.KeyPair`">`aws.ec2.KeyPair`</span> resource.
  final Input<String>? keyName;

  /// A launch group is a group of spot instances that launch together and terminate together.
  /// If left empty instances are launched and terminated individually.
  final Input<String>? launchGroup;

  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  final Input<SpotInstanceRequestLaunchTemplate>? launchTemplate;

  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  final Input<SpotInstanceRequestMaintenanceOptions>? maintenanceOptions;

  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  final Input<SpotInstanceRequestMetadataOptions>? metadataOptions;

  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  final Input<bool>? monitoring;

  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  final Input<List<SpotInstanceRequestNetworkInterface>>? networkInterfaces;

  /// Placement Group to start the instance in. Conflicts with <span pulumi-lang-nodejs="`placementGroupId`" pulumi-lang-dotnet="`PlacementGroupId`" pulumi-lang-go="`placementGroupId`" pulumi-lang-python="`placement_group_id`" pulumi-lang-yaml="`placementGroupId`" pulumi-lang-java="`placementGroupId`">`placement_group_id`</span>.
  final Input<String>? placementGroup;

  /// Placement Group ID to start the instance in. Conflicts with <span pulumi-lang-nodejs="`placementGroup`" pulumi-lang-dotnet="`PlacementGroup`" pulumi-lang-go="`placementGroup`" pulumi-lang-python="`placement_group`" pulumi-lang-yaml="`placementGroup`" pulumi-lang-java="`placementGroup`">`placement_group`</span>.
  final Input<String>? placementGroupId;

  /// Number of the partition the instance is in. Valid only if the <span pulumi-lang-nodejs="`aws.ec2.PlacementGroup`" pulumi-lang-dotnet="`aws.ec2.PlacementGroup`" pulumi-lang-go="`ec2.PlacementGroup`" pulumi-lang-python="`ec2.PlacementGroup`" pulumi-lang-yaml="`aws.ec2.PlacementGroup`" pulumi-lang-java="`aws.ec2.PlacementGroup`">`aws.ec2.PlacementGroup`</span> resource's <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> argument is set to `"partition"`.
  final Input<int>? placementPartitionNumber;

  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  final Input<SpotInstanceRequestPrivateDnsNameOptions>? privateDnsNameOptions;

  /// Private IP address to associate with the instance in a VPC.
  final Input<String>? privateIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  final Input<SpotInstanceRequestRootBlockDevice>? rootBlockDevice;

  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  final Input<List<SpotInstanceRequestSecondaryNetworkInterface>>?
      secondaryNetworkInterfaces;

  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a <span pulumi-lang-nodejs="`networkInterface`" pulumi-lang-dotnet="`NetworkInterface`" pulumi-lang-go="`networkInterface`" pulumi-lang-python="`network_interface`" pulumi-lang-yaml="`networkInterface`" pulumi-lang-java="`networkInterface`">`network_interface`</span> block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  final Input<List<String>>? secondaryPrivateIps;

  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use <span pulumi-lang-nodejs="`vpcSecurityGroupIds`" pulumi-lang-dotnet="`VpcSecurityGroupIds`" pulumi-lang-go="`vpcSecurityGroupIds`" pulumi-lang-python="`vpc_security_group_ids`" pulumi-lang-yaml="`vpcSecurityGroupIds`" pulumi-lang-java="`vpcSecurityGroupIds`">`vpc_security_group_ids`</span> instead.
  final Input<List<String>>? securityGroups;

  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  final Input<bool>? sourceDestCheck;

  /// The maximum price to request on the spot market.
  final Input<String>? spotPrice;

  /// If set to `one-time`, after
  /// the instance is terminated, the spot request will be closed.
  final Input<String>? spotType;

  /// VPC Subnet ID to launch in.
  final Input<String>? subnetId;

  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span> runs on single-tenant hardware. The <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> tenancy is not supported for the import-instance command. Valid values are <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, and <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  final Input<String>? tenancy;

  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the <span pulumi-lang-nodejs="`userDataReplaceOnChange`" pulumi-lang-dotnet="`UserDataReplaceOnChange`" pulumi-lang-go="`userDataReplaceOnChange`" pulumi-lang-python="`user_data_replace_on_change`" pulumi-lang-yaml="`userDataReplaceOnChange`" pulumi-lang-java="`userDataReplaceOnChange`">`user_data_replace_on_change`</span> is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final Input<String>? userData;

  /// Can be used instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> to pass base64-encoded binary data directly. Use this instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the <span pulumi-lang-nodejs="`userDataReplaceOnChange`" pulumi-lang-dotnet="`UserDataReplaceOnChange`" pulumi-lang-go="`userDataReplaceOnChange`" pulumi-lang-python="`user_data_replace_on_change`" pulumi-lang-yaml="`userDataReplaceOnChange`" pulumi-lang-java="`userDataReplaceOnChange`">`user_data_replace_on_change`</span> is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  final Input<String>? userDataBase64;

  /// When used in combination with <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> or <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> will trigger a destroy and recreate of the EC2 instance when set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if not set.
  final Input<bool>? userDataReplaceOnChange;

  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  final Input<String>? validFrom;

  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  final Input<String>? validUntil;

  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// > **NOTE:** Do not use <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span> if you plan to manage block device tags outside the <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span> configuration, such as using <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> in an <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> resource attached via <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span>. Doing so will result in resource cycling and inconsistent behavior.
  final Input<Map<String, String>>? volumeTags;

  /// List of security group IDs to associate with.
  final Input<List<String>>? vpcSecurityGroupIds;

  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  final Input<bool>? waitForFulfillment;

  SpotInstanceRequestArgs({
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
    this.instanceInterruptionBehavior,
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
    this.placementGroup,
    this.placementGroupId,
    this.placementPartitionNumber,
    this.privateDnsNameOptions,
    this.privateIp,
    this.region,
    this.rootBlockDevice,
    this.secondaryNetworkInterfaces,
    this.secondaryPrivateIps,
    this.securityGroups,
    this.sourceDestCheck,
    this.spotPrice,
    this.spotType,
    this.subnetId,
    this.tags,
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
    final map = <String, dynamic>{};
    final amiValue = ami;
    if (amiValue != null) {
      map['ami'] = amiValue;
    }
    final associatePublicIpAddressValue = associatePublicIpAddress;
    if (associatePublicIpAddressValue != null) {
      map['associatePublicIpAddress'] = associatePublicIpAddressValue;
    }
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final capacityReservationSpecificationValue =
        capacityReservationSpecification;
    if (capacityReservationSpecificationValue != null) {
      map['capacityReservationSpecification'] = Input.mapOptionalInputValue<
              SpotInstanceRequestCapacityReservationSpecification,
              Map<String, dynamic>>(
          capacityReservationSpecificationValue, (value) => value.toMap());
    }
    final cpuOptionsValue = cpuOptions;
    if (cpuOptionsValue != null) {
      map['cpuOptions'] = Input.mapOptionalInputValue<
          SpotInstanceRequestCpuOptions,
          Map<String, dynamic>>(cpuOptionsValue, (value) => value.toMap());
    }
    final creditSpecificationValue = creditSpecification;
    if (creditSpecificationValue != null) {
      map['creditSpecification'] = Input.mapOptionalInputValue<
              SpotInstanceRequestCreditSpecification, Map<String, dynamic>>(
          creditSpecificationValue, (value) => value.toMap());
    }
    final disableApiStopValue = disableApiStop;
    if (disableApiStopValue != null) {
      map['disableApiStop'] = disableApiStopValue;
    }
    final disableApiTerminationValue = disableApiTermination;
    if (disableApiTerminationValue != null) {
      map['disableApiTermination'] = disableApiTerminationValue;
    }
    final ebsBlockDevicesValue = ebsBlockDevices;
    if (ebsBlockDevicesValue != null) {
      map['ebsBlockDevices'] = Input.mapOptionalInputValue<
              List<SpotInstanceRequestEbsBlockDevice>,
              List<Map<String, dynamic>>>(
          ebsBlockDevicesValue,
          (value) => Input.encodeList<SpotInstanceRequestEbsBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final ebsOptimizedValue = ebsOptimized;
    if (ebsOptimizedValue != null) {
      map['ebsOptimized'] = ebsOptimizedValue;
    }
    final enablePrimaryIpv6Value = enablePrimaryIpv6;
    if (enablePrimaryIpv6Value != null) {
      map['enablePrimaryIpv6'] = enablePrimaryIpv6Value;
    }
    final enclaveOptionsValue = enclaveOptions;
    if (enclaveOptionsValue != null) {
      map['enclaveOptions'] = Input.mapOptionalInputValue<
          SpotInstanceRequestEnclaveOptions,
          Map<String, dynamic>>(enclaveOptionsValue, (value) => value.toMap());
    }
    final ephemeralBlockDevicesValue = ephemeralBlockDevices;
    if (ephemeralBlockDevicesValue != null) {
      map['ephemeralBlockDevices'] = Input.mapOptionalInputValue<
              List<SpotInstanceRequestEphemeralBlockDevice>,
              List<Map<String, dynamic>>>(
          ephemeralBlockDevicesValue,
          (value) => Input.encodeList<SpotInstanceRequestEphemeralBlockDevice,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final getPasswordDataValue = getPasswordData;
    if (getPasswordDataValue != null) {
      map['getPasswordData'] = getPasswordDataValue;
    }
    final hibernationValue = hibernation;
    if (hibernationValue != null) {
      map['hibernation'] = hibernationValue;
    }
    final hostIdValue = hostId;
    if (hostIdValue != null) {
      map['hostId'] = hostIdValue;
    }
    final hostResourceGroupArnValue = hostResourceGroupArn;
    if (hostResourceGroupArnValue != null) {
      map['hostResourceGroupArn'] = hostResourceGroupArnValue;
    }
    final iamInstanceProfileValue = iamInstanceProfile;
    if (iamInstanceProfileValue != null) {
      map['iamInstanceProfile'] = iamInstanceProfileValue;
    }
    final instanceInitiatedShutdownBehaviorValue =
        instanceInitiatedShutdownBehavior;
    if (instanceInitiatedShutdownBehaviorValue != null) {
      map['instanceInitiatedShutdownBehavior'] =
          instanceInitiatedShutdownBehaviorValue;
    }
    final instanceInterruptionBehaviorValue = instanceInterruptionBehavior;
    if (instanceInterruptionBehaviorValue != null) {
      map['instanceInterruptionBehavior'] = instanceInterruptionBehaviorValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final ipv6AddressCountValue = ipv6AddressCount;
    if (ipv6AddressCountValue != null) {
      map['ipv6AddressCount'] = ipv6AddressCountValue;
    }
    final ipv6AddressesValue = ipv6Addresses;
    if (ipv6AddressesValue != null) {
      map['ipv6Addresses'] = ipv6AddressesValue;
    }
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final launchGroupValue = launchGroup;
    if (launchGroupValue != null) {
      map['launchGroup'] = launchGroupValue;
    }
    final launchTemplateValue = launchTemplate;
    if (launchTemplateValue != null) {
      map['launchTemplate'] = Input.mapOptionalInputValue<
          SpotInstanceRequestLaunchTemplate,
          Map<String, dynamic>>(launchTemplateValue, (value) => value.toMap());
    }
    final maintenanceOptionsValue = maintenanceOptions;
    if (maintenanceOptionsValue != null) {
      map['maintenanceOptions'] = Input.mapOptionalInputValue<
              SpotInstanceRequestMaintenanceOptions, Map<String, dynamic>>(
          maintenanceOptionsValue, (value) => value.toMap());
    }
    final metadataOptionsValue = metadataOptions;
    if (metadataOptionsValue != null) {
      map['metadataOptions'] = Input.mapOptionalInputValue<
          SpotInstanceRequestMetadataOptions,
          Map<String, dynamic>>(metadataOptionsValue, (value) => value.toMap());
    }
    final monitoringValue = monitoring;
    if (monitoringValue != null) {
      map['monitoring'] = monitoringValue;
    }
    final networkInterfacesValue = networkInterfaces;
    if (networkInterfacesValue != null) {
      map['networkInterfaces'] = Input.mapOptionalInputValue<
              List<SpotInstanceRequestNetworkInterface>,
              List<Map<String, dynamic>>>(
          networkInterfacesValue,
          (value) => Input.encodeList<SpotInstanceRequestNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final placementGroupValue = placementGroup;
    if (placementGroupValue != null) {
      map['placementGroup'] = placementGroupValue;
    }
    final placementGroupIdValue = placementGroupId;
    if (placementGroupIdValue != null) {
      map['placementGroupId'] = placementGroupIdValue;
    }
    final placementPartitionNumberValue = placementPartitionNumber;
    if (placementPartitionNumberValue != null) {
      map['placementPartitionNumber'] = placementPartitionNumberValue;
    }
    final privateDnsNameOptionsValue = privateDnsNameOptions;
    if (privateDnsNameOptionsValue != null) {
      map['privateDnsNameOptions'] = Input.mapOptionalInputValue<
              SpotInstanceRequestPrivateDnsNameOptions, Map<String, dynamic>>(
          privateDnsNameOptionsValue, (value) => value.toMap());
    }
    final privateIpValue = privateIp;
    if (privateIpValue != null) {
      map['privateIp'] = privateIpValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final rootBlockDeviceValue = rootBlockDevice;
    if (rootBlockDeviceValue != null) {
      map['rootBlockDevice'] = Input.mapOptionalInputValue<
          SpotInstanceRequestRootBlockDevice,
          Map<String, dynamic>>(rootBlockDeviceValue, (value) => value.toMap());
    }
    final secondaryNetworkInterfacesValue = secondaryNetworkInterfaces;
    if (secondaryNetworkInterfacesValue != null) {
      map['secondaryNetworkInterfaces'] = Input.mapOptionalInputValue<
              List<SpotInstanceRequestSecondaryNetworkInterface>,
              List<Map<String, dynamic>>>(
          secondaryNetworkInterfacesValue,
          (value) => Input.encodeList<
              SpotInstanceRequestSecondaryNetworkInterface,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final secondaryPrivateIpsValue = secondaryPrivateIps;
    if (secondaryPrivateIpsValue != null) {
      map['secondaryPrivateIps'] = secondaryPrivateIpsValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final sourceDestCheckValue = sourceDestCheck;
    if (sourceDestCheckValue != null) {
      map['sourceDestCheck'] = sourceDestCheckValue;
    }
    final spotPriceValue = spotPrice;
    if (spotPriceValue != null) {
      map['spotPrice'] = spotPriceValue;
    }
    final spotTypeValue = spotType;
    if (spotTypeValue != null) {
      map['spotType'] = spotTypeValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final tenancyValue = tenancy;
    if (tenancyValue != null) {
      map['tenancy'] = tenancyValue;
    }
    final userDataValue = userData;
    if (userDataValue != null) {
      map['userData'] = userDataValue;
    }
    final userDataBase64Value = userDataBase64;
    if (userDataBase64Value != null) {
      map['userDataBase64'] = userDataBase64Value;
    }
    final userDataReplaceOnChangeValue = userDataReplaceOnChange;
    if (userDataReplaceOnChangeValue != null) {
      map['userDataReplaceOnChange'] = userDataReplaceOnChangeValue;
    }
    final validFromValue = validFrom;
    if (validFromValue != null) {
      map['validFrom'] = validFromValue;
    }
    final validUntilValue = validUntil;
    if (validUntilValue != null) {
      map['validUntil'] = validUntilValue;
    }
    final volumeTagsValue = volumeTags;
    if (volumeTagsValue != null) {
      map['volumeTags'] = volumeTagsValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    final waitForFulfillmentValue = waitForFulfillment;
    if (waitForFulfillmentValue != null) {
      map['waitForFulfillment'] = waitForFulfillmentValue;
    }
    return map;
  }

  factory SpotInstanceRequestArgs.fromMap(Map<String, dynamic> map) {
    return SpotInstanceRequestArgs(
      ami: Input.asOptionalInput<String>(map['ami']),
      associatePublicIpAddress:
          Input.asOptionalInput<bool>(map['associatePublicIpAddress']),
      availabilityZone: Input.asOptionalInput<String>(map['availabilityZone']),
      capacityReservationSpecification: Input.asOptionalInput<
              SpotInstanceRequestCapacityReservationSpecification>(
          map['capacityReservationSpecification']),
      cpuOptions: Input.asOptionalInput<SpotInstanceRequestCpuOptions>(
          map['cpuOptions']),
      creditSpecification:
          Input.asOptionalInput<SpotInstanceRequestCreditSpecification>(
              map['creditSpecification']),
      disableApiStop: Input.asOptionalInput<bool>(map['disableApiStop']),
      disableApiTermination:
          Input.asOptionalInput<bool>(map['disableApiTermination']),
      ebsBlockDevices:
          Input.asOptionalInput<List<SpotInstanceRequestEbsBlockDevice>>(
              map['ebsBlockDevices']),
      ebsOptimized: Input.asOptionalInput<bool>(map['ebsOptimized']),
      enablePrimaryIpv6: Input.asOptionalInput<bool>(map['enablePrimaryIpv6']),
      enclaveOptions: Input.asOptionalInput<SpotInstanceRequestEnclaveOptions>(
          map['enclaveOptions']),
      ephemeralBlockDevices:
          Input.asOptionalInput<List<SpotInstanceRequestEphemeralBlockDevice>>(
              map['ephemeralBlockDevices']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      getPasswordData: Input.asOptionalInput<bool>(map['getPasswordData']),
      hibernation: Input.asOptionalInput<bool>(map['hibernation']),
      hostId: Input.asOptionalInput<String>(map['hostId']),
      hostResourceGroupArn:
          Input.asOptionalInput<String>(map['hostResourceGroupArn']),
      iamInstanceProfile:
          Input.asOptionalInput<String>(map['iamInstanceProfile']),
      instanceInitiatedShutdownBehavior: Input.asOptionalInput<String>(
          map['instanceInitiatedShutdownBehavior']),
      instanceInterruptionBehavior:
          Input.asOptionalInput<String>(map['instanceInterruptionBehavior']),
      instanceType: Input.asOptionalInput<String>(map['instanceType']),
      ipv6AddressCount: Input.asOptionalInput<int>(map['ipv6AddressCount']),
      ipv6Addresses: Input.asOptionalInput<List<String>>(map['ipv6Addresses']),
      keyName: Input.asOptionalInput<String>(map['keyName']),
      launchGroup: Input.asOptionalInput<String>(map['launchGroup']),
      launchTemplate: Input.asOptionalInput<SpotInstanceRequestLaunchTemplate>(
          map['launchTemplate']),
      maintenanceOptions:
          Input.asOptionalInput<SpotInstanceRequestMaintenanceOptions>(
              map['maintenanceOptions']),
      metadataOptions:
          Input.asOptionalInput<SpotInstanceRequestMetadataOptions>(
              map['metadataOptions']),
      monitoring: Input.asOptionalInput<bool>(map['monitoring']),
      networkInterfaces:
          Input.asOptionalInput<List<SpotInstanceRequestNetworkInterface>>(
              map['networkInterfaces']),
      placementGroup: Input.asOptionalInput<String>(map['placementGroup']),
      placementGroupId: Input.asOptionalInput<String>(map['placementGroupId']),
      placementPartitionNumber:
          Input.asOptionalInput<int>(map['placementPartitionNumber']),
      privateDnsNameOptions:
          Input.asOptionalInput<SpotInstanceRequestPrivateDnsNameOptions>(
              map['privateDnsNameOptions']),
      privateIp: Input.asOptionalInput<String>(map['privateIp']),
      region: Input.asOptionalInput<String>(map['region']),
      rootBlockDevice:
          Input.asOptionalInput<SpotInstanceRequestRootBlockDevice>(
              map['rootBlockDevice']),
      secondaryNetworkInterfaces: Input.asOptionalInput<
              List<SpotInstanceRequestSecondaryNetworkInterface>>(
          map['secondaryNetworkInterfaces']),
      secondaryPrivateIps:
          Input.asOptionalInput<List<String>>(map['secondaryPrivateIps']),
      securityGroups:
          Input.asOptionalInput<List<String>>(map['securityGroups']),
      sourceDestCheck: Input.asOptionalInput<bool>(map['sourceDestCheck']),
      spotPrice: Input.asOptionalInput<String>(map['spotPrice']),
      spotType: Input.asOptionalInput<String>(map['spotType']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenancy: Input.asOptionalInput<String>(map['tenancy']),
      userData: Input.asOptionalInput<String>(map['userData']),
      userDataBase64: Input.asOptionalInput<String>(map['userDataBase64']),
      userDataReplaceOnChange:
          Input.asOptionalInput<bool>(map['userDataReplaceOnChange']),
      validFrom: Input.asOptionalInput<String>(map['validFrom']),
      validUntil: Input.asOptionalInput<String>(map['validUntil']),
      volumeTags: Input.asOptionalInput<Map<String, String>>(map['volumeTags']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
      waitForFulfillment:
          Input.asOptionalInput<bool>(map['waitForFulfillment']),
    );
  }
}
