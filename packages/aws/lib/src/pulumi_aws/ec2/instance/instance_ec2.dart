import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_capacity_reservation_specification/instance_capacity_reservation_specification.dart';
import '../instance_cpu_options/instance_cpu_options.dart';
import '../instance_credit_specification/instance_credit_specification.dart';
import '../instance_ebs_block_device/instance_ebs_block_device.dart';
import '../instance_enclave_options/instance_enclave_options.dart';
import '../instance_ephemeral_block_device/instance_ephemeral_block_device.dart';
import '../instance_instance_market_options/instance_instance_market_options.dart';
import '../instance_launch_template/instance_launch_template.dart';
import '../instance_maintenance_options/instance_maintenance_options.dart';
import '../instance_metadata_options/instance_metadata_options.dart';
import '../instance_network_interface/instance_network_interface.dart';
import '../instance_primary_network_interface/instance_primary_network_interface.dart';
import '../instance_private_dns_name_options/instance_private_dns_name_options.dart';
import '../instance_root_block_device/instance_root_block_device.dart';
import '../instance_secondary_network_interface/instance_secondary_network_interface.dart';
import 'instance_ec2_args.dart';

/// Provides an EC2 instance resource. This allows instances to be created, updated, and deleted.
///
/// ## Example Usage
///
/// ### Basic example using AMI lookup
///
/// Using a data source
///
///
///
/// Using AWS Systems Manager Parameter Store
///
///
///
/// ### Spot instance example
///
///
///
/// ### Network and credit specification example
///
///
///
/// ### CPU options example
///
///
///
/// ### Host resource group or License Manager registered AMI example
///
/// A host resource group is a collection of Dedicated Hosts that you can manage as a single entity. As you launch instances, License Manager allocates the hosts and launches instances on them based on the settings that you configured. You can add existing Dedicated Hosts to a host resource group and take advantage of automated host management through License Manager.
///
/// > **NOTE:** A dedicated host is automatically associated with a License Manager host resource group if **Allocate hosts automatically** is enabled. Otherwise, use the `host_resource_group_arn` argument to explicitly associate the instance with the host resource group.
///
///
///
/// ## Tag Guide
///
/// These are the five types of tags you might encounter relative to an `aws.ec2.Instance`:
///
/// 1. **Instance tags**: Applied to instances but not to `ebs_block_device` and `root_block_device` volumes.
/// 2. **Default tags**: Applied to the instance and to `ebs_block_device` and `root_block_device` volumes.
/// 3. **Volume tags**: Applied during creation to `ebs_block_device` and `root_block_device` volumes.
/// 4. **Root block device tags**: Applied only to the `root_block_device` volume. These conflict with `volume_tags`.
/// 5. **EBS block device tags**: Applied only to the specific `ebs_block_device` volume you configure them for and cannot be updated. These conflict with `volume_tags`.
///
/// Do not use `volume_tags` if you plan to manage block device tags outside the `aws.ec2.Instance` configuration, such as using `tags` in an `aws.ebs.Volume` resource attached via `aws.ec2.VolumeAttachment`. Doing so will result in resource cycling and inconsistent behavior.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the instance.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import instances using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/instance:Instance web i-12345678
/// ```
class InstanceEc2 extends pulumi.CustomResource {
  /// AMI to use for the instance. Required unless `launch_template` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  late final pulumi.Output<String> ami;

  /// ARN of the instance.
  late final pulumi.Output<String> arn;

  /// Whether to associate a public IP address with an instance in a VPC.
  late final pulumi.Output<bool> associatePublicIpAddress;

  /// AZ to start the instance in.
  late final pulumi.Output<String> availabilityZone;

  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  late final pulumi.Output<InstanceCapacityReservationSpecification>
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  late final pulumi.Output<InstanceCpuOptions> cpuOptions;

  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  late final pulumi.Output<InstanceCreditSpecification?> creditSpecification;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  late final pulumi.Output<bool> disableApiStop;

  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  late final pulumi.Output<bool> disableApiTermination;

  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  late final pulumi.Output<List<InstanceEbsBlockDevice>> ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  late final pulumi.Output<bool> ebsOptimized;

  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enable_primary_ipv6` after it has been enabled forces recreation of the instance.
  late final pulumi.Output<bool> enablePrimaryIpv6;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  late final pulumi.Output<InstanceEnclaveOptions> enclaveOptions;

  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  late final pulumi.Output<List<InstanceEphemeralBlockDevice>>
      ephemeralBlockDevices;

  /// Destroys instance even if `disable_api_termination` or `disable_api_stop` is set to `true`. Defaults to `false`. Once this parameter is set to `true`, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final pulumi.Output<bool?> forceDestroy;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the `password_data` attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  late final pulumi.Output<bool?> getPasswordData;

  /// If true, the launched EC2 instance will support hibernation.
  late final pulumi.Output<bool?> hibernation;

  /// ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  late final pulumi.Output<String> hostId;

  /// ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the `tenancy` parameter or set it to `host`.
  late final pulumi.Output<String> hostResourceGroupArn;

  /// IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  late final pulumi.Output<String> iamInstanceProfile;

  /// Shutdown behavior for the instance. Amazon defaults this to `stop` for EBS-backed instances and `terminate` for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  late final pulumi.Output<String> instanceInitiatedShutdownBehavior;

  /// Indicates whether this is a Spot Instance or a Scheduled Instance.
  late final pulumi.Output<String> instanceLifecycle;

  /// Describes the market (purchasing) option for the instances. See Market Options below for details on attributes.
  late final pulumi.Output<InstanceInstanceMarketOptions> instanceMarketOptions;

  /// State of the instance. One of: `pending`, `running`, `shutting-down`, `terminated`, `stopping`, `stopped`. See [Instance Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) for more information.
  late final pulumi.Output<String> instanceState;

  /// Instance type to use for the instance. Required unless `launch_template` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instance_type` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  late final pulumi.Output<String> instanceType;

  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  late final pulumi.Output<int> ipv6AddressCount;

  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  late final pulumi.Output<List<String>> ipv6Addresses;

  /// Key name of the Key Pair to use for the instance; which can be managed using the `aws.ec2.KeyPair` resource.
  late final pulumi.Output<String> keyName;

  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  late final pulumi.Output<InstanceLaunchTemplate?> launchTemplate;

  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  late final pulumi.Output<InstanceMaintenanceOptions> maintenanceOptions;

  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  late final pulumi.Output<InstanceMetadataOptions> metadataOptions;

  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  late final pulumi.Output<bool> monitoring;

  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  late final pulumi.Output<List<InstanceNetworkInterface>> networkInterfaces;

  /// ARN of the Outpost the instance is assigned to.
  late final pulumi.Output<String> outpostArn;

  /// Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if `get_password_data` is true. Note that this encrypted value will be stored in the state file, as with all exported attributes. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  late final pulumi.Output<String> passwordData;

  /// Placement Group to start the instance in. Conflicts with `placement_group_id`.
  late final pulumi.Output<String> placementGroup;

  /// Placement Group ID to start the instance in. Conflicts with `placement_group`.
  late final pulumi.Output<String> placementGroupId;

  /// Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  late final pulumi.Output<int> placementPartitionNumber;

  /// The primary network interface. See Primary Network Interface below.
  late final pulumi.Output<InstancePrimaryNetworkInterface>
      primaryNetworkInterface;

  /// ID of the instance's primary network interface.
  late final pulumi.Output<String> primaryNetworkInterfaceId;

  /// Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC.
  late final pulumi.Output<String> privateDns;

  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final pulumi.Output<InstancePrivateDnsNameOptions> privateDnsNameOptions;

  /// Private IP address to associate with the instance in a VPC.
  late final pulumi.Output<String> privateIp;

  /// Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC.
  late final pulumi.Output<String> publicDns;

  /// Public IP address assigned to the instance, if applicable. **NOTE**: If you are using an `aws.ec2.Eip` with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached.
  late final pulumi.Output<String> publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  late final pulumi.Output<InstanceRootBlockDevice> rootBlockDevice;

  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  late final pulumi.Output<List<InstanceSecondaryNetworkInterface>>
      secondaryNetworkInterfaces;

  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `network_interface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  late final pulumi.Output<List<String>> secondaryPrivateIps;

  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use `vpc_security_group_ids` instead.
  late final pulumi.Output<List<String>> securityGroups;

  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  late final pulumi.Output<bool?> sourceDestCheck;

  /// If the request is a Spot Instance request, the ID of the request.
  late final pulumi.Output<String> spotInstanceRequestId;

  /// VPC Subnet ID to launch in.
  late final pulumi.Output<String> subnetId;

  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  late final pulumi.Output<String> tenancy;

  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final pulumi.Output<String?> userData;

  /// Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final pulumi.Output<String> userDataBase64;

  /// When used in combination with `user_data` or `user_data_base64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  late final pulumi.Output<bool?> userDataReplaceOnChange;

  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// > **NOTE:** Do not use `volume_tags` if you plan to manage block device tags outside the `aws.ec2.Instance` configuration, such as using `tags` in an `aws.ebs.Volume` resource attached via `aws.ec2.VolumeAttachment`. Doing so will result in resource cycling and inconsistent behavior.
  late final pulumi.Output<Map<String, String>?> volumeTags;

  /// List of security group IDs to associate with.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  InstanceEc2(
    String name, {
    InstanceEc2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ami = registerOutput<String>('ami');
    this.arn = registerOutput<String>('arn');
    this.associatePublicIpAddress =
        registerOutput<bool>('associatePublicIpAddress');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.capacityReservationSpecification =
        registerOutput<InstanceCapacityReservationSpecification>(
            'capacityReservationSpecification');
    this.cpuOptions = registerOutput<InstanceCpuOptions>('cpuOptions');
    this.creditSpecification =
        registerOutput<InstanceCreditSpecification?>('creditSpecification');
    this.disableApiStop = registerOutput<bool>('disableApiStop');
    this.disableApiTermination = registerOutput<bool>('disableApiTermination');
    this.ebsBlockDevices =
        registerOutput<List<InstanceEbsBlockDevice>>('ebsBlockDevices');
    this.ebsOptimized = registerOutput<bool>('ebsOptimized');
    this.enablePrimaryIpv6 = registerOutput<bool>('enablePrimaryIpv6');
    this.enclaveOptions =
        registerOutput<InstanceEnclaveOptions>('enclaveOptions');
    this.ephemeralBlockDevices =
        registerOutput<List<InstanceEphemeralBlockDevice>>(
            'ephemeralBlockDevices');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.getPasswordData = registerOutput<bool?>('getPasswordData');
    this.hibernation = registerOutput<bool?>('hibernation');
    this.hostId = registerOutput<String>('hostId');
    this.hostResourceGroupArn = registerOutput<String>('hostResourceGroupArn');
    this.iamInstanceProfile = registerOutput<String>('iamInstanceProfile');
    this.instanceInitiatedShutdownBehavior =
        registerOutput<String>('instanceInitiatedShutdownBehavior');
    this.instanceLifecycle = registerOutput<String>('instanceLifecycle');
    this.instanceMarketOptions =
        registerOutput<InstanceInstanceMarketOptions>('instanceMarketOptions');
    this.instanceState = registerOutput<String>('instanceState');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.keyName = registerOutput<String>('keyName');
    this.launchTemplate =
        registerOutput<InstanceLaunchTemplate?>('launchTemplate');
    this.maintenanceOptions =
        registerOutput<InstanceMaintenanceOptions>('maintenanceOptions');
    this.metadataOptions =
        registerOutput<InstanceMetadataOptions>('metadataOptions');
    this.monitoring = registerOutput<bool>('monitoring');
    this.networkInterfaces =
        registerOutput<List<InstanceNetworkInterface>>('networkInterfaces');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.passwordData = registerOutput<String>('passwordData');
    this.placementGroup = registerOutput<String>('placementGroup');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.placementPartitionNumber =
        registerOutput<int>('placementPartitionNumber');
    this.primaryNetworkInterface =
        registerOutput<InstancePrimaryNetworkInterface>(
            'primaryNetworkInterface');
    this.primaryNetworkInterfaceId =
        registerOutput<String>('primaryNetworkInterfaceId');
    this.privateDns = registerOutput<String>('privateDns');
    this.privateDnsNameOptions =
        registerOutput<InstancePrivateDnsNameOptions>('privateDnsNameOptions');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicDns = registerOutput<String>('publicDns');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.rootBlockDevice =
        registerOutput<InstanceRootBlockDevice>('rootBlockDevice');
    this.secondaryNetworkInterfaces =
        registerOutput<List<InstanceSecondaryNetworkInterface>>(
            'secondaryNetworkInterfaces');
    this.secondaryPrivateIps =
        registerOutput<List<String>>('secondaryPrivateIps');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.spotInstanceRequestId =
        registerOutput<String>('spotInstanceRequestId');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.userData = registerOutput<String?>('userData');
    this.userDataBase64 = registerOutput<String>('userDataBase64');
    this.userDataReplaceOnChange =
        registerOutput<bool?>('userDataReplaceOnChange');
    this.volumeTags = registerOutput<Map<String, String>?>('volumeTags');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
