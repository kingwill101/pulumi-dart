import 'package:pulumi/pulumi.dart' as pulumi;
import 'spot_instance_request_args.dart';
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
import 'spot_instance_request_state.dart';

/// Provides an EC2 Spot Instance Request resource. This allows instances to be
/// requested on the spot market.
///
/// By default this provider creates Spot Instance Requests with a `persistent` type,
/// which means that for the duration of their lifetime, AWS will launch an
/// instance with the configured details if and when the spot market will accept
/// the requested price.
///
/// On destruction, this provider will make an attempt to terminate the associated Spot
/// Instance if there is one present.
///
/// Spot Instances requests with a `one-time` type will close the spot request
/// when the instance is terminated either by the request being below the current spot
/// price availability or by a user.
///
/// > **NOTE:** Because their behavior depends on the live status of the spot
/// market, Spot Instance Requests have a unique lifecycle that makes them behave
/// differently than other Terraform resources. Most importantly: there is **no
/// guarantee** that a Spot Instance exists to fulfill the request at any given
/// point in time. See the [AWS Spot Instance
/// documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances.html)
/// for more information.
///
/// > **NOTE [AWS strongly discourages](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-best-practices.html#which-spot-request-method-to-use) the use of the legacy APIs called by this resource.
/// We recommend using the EC2 Instance resource with `instance_market_options` instead.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Request a spot instance at $0.03
/// const cheapWorker = new aws.ec2.SpotInstanceRequest("cheap_worker", {
///     ami: "ami-1234",
///     spotPrice: "0.03",
///     instanceType: "c4.xlarge",
///     tags: {
///         Name: "CheapWorker",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Request a spot instance at $0.03
/// cheap_worker = aws.ec2.SpotInstanceRequest("cheap_worker",
///     ami="ami-1234",
///     spot_price="0.03",
///     instance_type="c4.xlarge",
///     tags={
///         "Name": "CheapWorker",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Request a spot instance at $0.03
///     var cheapWorker = new Aws.Ec2.SpotInstanceRequest("cheap_worker", new()
///     {
///         Ami = "ami-1234",
///         SpotPrice = "0.03",
///         InstanceType = "c4.xlarge",
///         Tags =
///         {
///             { "Name", "CheapWorker" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Request a spot instance at $0.03
/// 		_, err := ec2.NewSpotInstanceRequest(ctx, "cheap_worker", &ec2.SpotInstanceRequestArgs{
/// 			Ami:          pulumi.String("ami-1234"),
/// 			SpotPrice:    pulumi.String("0.03"),
/// 			InstanceType: pulumi.String("c4.xlarge"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("CheapWorker"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.SpotInstanceRequest;
/// import com.pulumi.aws.ec2.SpotInstanceRequestArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         // Request a spot instance at $0.03
///         var cheapWorker = new SpotInstanceRequest("cheapWorker", SpotInstanceRequestArgs.builder()
///             .ami("ami-1234")
///             .spotPrice("0.03")
///             .instanceType("c4.xlarge")
///             .tags(Map.of("Name", "CheapWorker"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Request a spot instance at $0.03
///   cheapWorker:
///     type: aws:ec2:SpotInstanceRequest
///     name: cheap_worker
///     properties:
///       ami: ami-1234
///       spotPrice: '0.03'
///       instanceType: c4.xlarge
///       tags:
///         Name: CheapWorker
/// ```
class SpotInstanceRequest extends pulumi.CustomResource {
  /// AMI to use for the instance. Required unless `launch_template` is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting `ami` will override the AMI specified in the Launch Template.
  late final pulumi.Output<String> ami;
  late final pulumi.Output<String> arn;
  /// Whether to associate a public IP address with an instance in a VPC.
  late final pulumi.Output<bool> associatePublicIpAddress;
  /// AZ to start the instance in.
  late final pulumi.Output<String> availabilityZone;
  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  late final pulumi.Output<SpotInstanceRequestCapacityReservationSpecification> capacityReservationSpecification;
  /// The CPU options for the instance. See CPU Options below for more details.
  late final pulumi.Output<SpotInstanceRequestCpuOptions> cpuOptions;
  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  late final pulumi.Output<SpotInstanceRequestCreditSpecification?> creditSpecification;
  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  late final pulumi.Output<bool> disableApiStop;
  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  late final pulumi.Output<bool> disableApiTermination;
  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  late final pulumi.Output<List<SpotInstanceRequestEbsBlockDevice>> ebsBlockDevices;
  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  late final pulumi.Output<bool> ebsOptimized;
  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling `enable_primary_ipv6` after it has been enabled forces recreation of the instance.
  late final pulumi.Output<bool> enablePrimaryIpv6;
  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  late final pulumi.Output<SpotInstanceRequestEnclaveOptions> enclaveOptions;
  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  late final pulumi.Output<List<SpotInstanceRequestEphemeralBlockDevice>> ephemeralBlockDevices;
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
  /// Indicates Spot instance behavior when it is interrupted. Valid values are `terminate`, `stop`, or `hibernate`. Default value is `terminate`.
  late final pulumi.Output<String?> instanceInterruptionBehavior;
  late final pulumi.Output<String> instanceState;
  /// Instance type to use for the instance. Required unless `launch_template` is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting `instance_type` will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  late final pulumi.Output<String> instanceType;
  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  late final pulumi.Output<int> ipv6AddressCount;
  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  late final pulumi.Output<List<String>> ipv6Addresses;
  /// Key name of the Key Pair to use for the instance; which can be managed using the `aws.ec2.KeyPair` resource.
  late final pulumi.Output<String> keyName;
  /// A launch group is a group of spot instances that launch together and terminate together.
  /// If left empty instances are launched and terminated individually.
  late final pulumi.Output<String?> launchGroup;
  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  late final pulumi.Output<SpotInstanceRequestLaunchTemplate?> launchTemplate;
  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  late final pulumi.Output<SpotInstanceRequestMaintenanceOptions> maintenanceOptions;
  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  late final pulumi.Output<SpotInstanceRequestMetadataOptions> metadataOptions;
  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  late final pulumi.Output<bool> monitoring;
  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  late final pulumi.Output<List<SpotInstanceRequestNetworkInterface>> networkInterfaces;
  late final pulumi.Output<String> outpostArn;
  late final pulumi.Output<String> passwordData;
  /// Placement Group to start the instance in. Conflicts with `placement_group_id`.
  late final pulumi.Output<String> placementGroup;
  /// Placement Group ID to start the instance in. Conflicts with `placement_group`.
  late final pulumi.Output<String> placementGroupId;
  /// Number of the partition the instance is in. Valid only if the `aws.ec2.PlacementGroup` resource's `strategy` argument is set to `"partition"`.
  late final pulumi.Output<int> placementPartitionNumber;
  late final pulumi.Output<String> primaryNetworkInterfaceId;
  /// The primary network interface. See Primary Network Interface below.
  late final pulumi.Output<List<SpotInstanceRequestPrimaryNetworkInterface>> primaryNetworkInterfaces;
  /// The private DNS name assigned to the instance. Can only be
  /// used inside the Amazon EC2, and only available if you've enabled DNS hostnames
  /// for your VPC
  late final pulumi.Output<String> privateDns;
  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final pulumi.Output<SpotInstanceRequestPrivateDnsNameOptions> privateDnsNameOptions;
  /// Private IP address to associate with the instance in a VPC.
  late final pulumi.Output<String> privateIp;
  /// The public DNS name assigned to the instance. For EC2-VPC, this
  /// is only available if you've enabled DNS hostnames for your VPC
  late final pulumi.Output<String> publicDns;
  /// The public IP address assigned to the instance, if applicable.
  late final pulumi.Output<String> publicIp;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  late final pulumi.Output<SpotInstanceRequestRootBlockDevice> rootBlockDevice;
  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  late final pulumi.Output<List<SpotInstanceRequestSecondaryNetworkInterface>> secondaryNetworkInterfaces;
  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a `network_interface` block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  late final pulumi.Output<List<String>> secondaryPrivateIps;
  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use `vpc_security_group_ids` instead.
  late final pulumi.Output<List<String>> securityGroups;
  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  late final pulumi.Output<bool?> sourceDestCheck;
  /// The current [bid
  /// status](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html)
  /// of the Spot Instance Request.
  late final pulumi.Output<String> spotBidStatus;
  /// The Instance ID (if any) that is currently fulfilling
  /// the Spot Instance request.
  late final pulumi.Output<String> spotInstanceId;
  /// The maximum price to request on the spot market.
  late final pulumi.Output<String> spotPrice;
  /// The current [request
  /// state](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html#creating-spot-request-status)
  /// of the Spot Instance Request.
  late final pulumi.Output<String> spotRequestState;
  /// If set to `one-time`, after
  /// the instance is terminated, the spot request will be closed.
  late final pulumi.Output<String?> spotType;
  /// VPC Subnet ID to launch in.
  late final pulumi.Output<String> subnetId;
  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for the import-instance command. Valid values are `default`, `dedicated`, and `host`.
  late final pulumi.Output<String> tenancy;
  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see `user_data_base64` instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final pulumi.Output<String?> userData;
  /// Can be used instead of `user_data` to pass base64-encoded binary data directly. Use this instead of `user_data` whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the `user_data_replace_on_change` is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final pulumi.Output<String> userDataBase64;
  /// When used in combination with `user_data` or `user_data_base64` will trigger a destroy and recreate of the EC2 instance when set to `true`. Defaults to `false` if not set.
  late final pulumi.Output<bool?> userDataReplaceOnChange;
  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final pulumi.Output<String> validFrom;
  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  late final pulumi.Output<String> validUntil;
  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// > **NOTE:** Do not use `volume_tags` if you plan to manage block device tags outside the `aws.ec2.Instance` configuration, such as using `tags` in an `aws.ebs.Volume` resource attached via `aws.ec2.VolumeAttachment`. Doing so will result in resource cycling and inconsistent behavior.
  late final pulumi.Output<Map<String, String>?> volumeTags;
  /// List of security group IDs to associate with.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;
  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  late final pulumi.Output<bool?> waitForFulfillment;

  /// Creates a new [SpotInstanceRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpotInstanceRequest]. {@macro pulumi_ec2_spot_instance_request_spot_instance_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpotInstanceRequest(
    String name, {
    SpotInstanceRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotInstanceRequest:SpotInstanceRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ami = registerOutput<String>('ami');
    this.arn = registerOutput<String>('arn');
    this.associatePublicIpAddress = registerOutput<bool>('associatePublicIpAddress');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.capacityReservationSpecification = registerOutput<SpotInstanceRequestCapacityReservationSpecification>('capacityReservationSpecification');
    this.cpuOptions = registerOutput<SpotInstanceRequestCpuOptions>('cpuOptions');
    this.creditSpecification = registerOutput<SpotInstanceRequestCreditSpecification?>('creditSpecification');
    this.disableApiStop = registerOutput<bool>('disableApiStop');
    this.disableApiTermination = registerOutput<bool>('disableApiTermination');
    this.ebsBlockDevices = registerOutput<List<SpotInstanceRequestEbsBlockDevice>>('ebsBlockDevices');
    this.ebsOptimized = registerOutput<bool>('ebsOptimized');
    this.enablePrimaryIpv6 = registerOutput<bool>('enablePrimaryIpv6');
    this.enclaveOptions = registerOutput<SpotInstanceRequestEnclaveOptions>('enclaveOptions');
    this.ephemeralBlockDevices = registerOutput<List<SpotInstanceRequestEphemeralBlockDevice>>('ephemeralBlockDevices');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.getPasswordData = registerOutput<bool?>('getPasswordData');
    this.hibernation = registerOutput<bool?>('hibernation');
    this.hostId = registerOutput<String>('hostId');
    this.hostResourceGroupArn = registerOutput<String>('hostResourceGroupArn');
    this.iamInstanceProfile = registerOutput<String>('iamInstanceProfile');
    this.instanceInitiatedShutdownBehavior = registerOutput<String>('instanceInitiatedShutdownBehavior');
    this.instanceInterruptionBehavior = registerOutput<String?>('instanceInterruptionBehavior');
    this.instanceState = registerOutput<String>('instanceState');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.keyName = registerOutput<String>('keyName');
    this.launchGroup = registerOutput<String?>('launchGroup');
    this.launchTemplate = registerOutput<SpotInstanceRequestLaunchTemplate?>('launchTemplate');
    this.maintenanceOptions = registerOutput<SpotInstanceRequestMaintenanceOptions>('maintenanceOptions');
    this.metadataOptions = registerOutput<SpotInstanceRequestMetadataOptions>('metadataOptions');
    this.monitoring = registerOutput<bool>('monitoring');
    this.networkInterfaces = registerOutput<List<SpotInstanceRequestNetworkInterface>>('networkInterfaces');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.passwordData = registerOutput<String>('passwordData');
    this.placementGroup = registerOutput<String>('placementGroup');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.placementPartitionNumber = registerOutput<int>('placementPartitionNumber');
    this.primaryNetworkInterfaceId = registerOutput<String>('primaryNetworkInterfaceId');
    this.primaryNetworkInterfaces = registerOutput<List<SpotInstanceRequestPrimaryNetworkInterface>>('primaryNetworkInterfaces');
    this.privateDns = registerOutput<String>('privateDns');
    this.privateDnsNameOptions = registerOutput<SpotInstanceRequestPrivateDnsNameOptions>('privateDnsNameOptions');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicDns = registerOutput<String>('publicDns');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.rootBlockDevice = registerOutput<SpotInstanceRequestRootBlockDevice>('rootBlockDevice');
    this.secondaryNetworkInterfaces = registerOutput<List<SpotInstanceRequestSecondaryNetworkInterface>>('secondaryNetworkInterfaces');
    this.secondaryPrivateIps = registerOutput<List<String>>('secondaryPrivateIps');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.spotBidStatus = registerOutput<String>('spotBidStatus');
    this.spotInstanceId = registerOutput<String>('spotInstanceId');
    this.spotPrice = registerOutput<String>('spotPrice');
    this.spotRequestState = registerOutput<String>('spotRequestState');
    this.spotType = registerOutput<String?>('spotType');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.userData = registerOutput<String?>('userData');
    this.userDataBase64 = registerOutput<String>('userDataBase64');
    this.userDataReplaceOnChange = registerOutput<bool?>('userDataReplaceOnChange');
    this.validFrom = registerOutput<String>('validFrom');
    this.validUntil = registerOutput<String>('validUntil');
    this.volumeTags = registerOutput<Map<String, String>?>('volumeTags');
    this.vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    this.waitForFulfillment = registerOutput<bool?>('waitForFulfillment');
  }

  /// Gets an existing [SpotInstanceRequest] resource's state with the given [name] and [id].
  static SpotInstanceRequest get(
    String name,
    pulumi.Input<String> id, {
    SpotInstanceRequestState? state,
  }) {
    return SpotInstanceRequest._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SpotInstanceRequest._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotInstanceRequest:SpotInstanceRequest',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.ami = registerOutput<String>('ami');
    this.arn = registerOutput<String>('arn');
    this.associatePublicIpAddress = registerOutput<bool>('associatePublicIpAddress');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.capacityReservationSpecification = registerOutput<SpotInstanceRequestCapacityReservationSpecification>('capacityReservationSpecification');
    this.cpuOptions = registerOutput<SpotInstanceRequestCpuOptions>('cpuOptions');
    this.creditSpecification = registerOutput<SpotInstanceRequestCreditSpecification?>('creditSpecification');
    this.disableApiStop = registerOutput<bool>('disableApiStop');
    this.disableApiTermination = registerOutput<bool>('disableApiTermination');
    this.ebsBlockDevices = registerOutput<List<SpotInstanceRequestEbsBlockDevice>>('ebsBlockDevices');
    this.ebsOptimized = registerOutput<bool>('ebsOptimized');
    this.enablePrimaryIpv6 = registerOutput<bool>('enablePrimaryIpv6');
    this.enclaveOptions = registerOutput<SpotInstanceRequestEnclaveOptions>('enclaveOptions');
    this.ephemeralBlockDevices = registerOutput<List<SpotInstanceRequestEphemeralBlockDevice>>('ephemeralBlockDevices');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.getPasswordData = registerOutput<bool?>('getPasswordData');
    this.hibernation = registerOutput<bool?>('hibernation');
    this.hostId = registerOutput<String>('hostId');
    this.hostResourceGroupArn = registerOutput<String>('hostResourceGroupArn');
    this.iamInstanceProfile = registerOutput<String>('iamInstanceProfile');
    this.instanceInitiatedShutdownBehavior = registerOutput<String>('instanceInitiatedShutdownBehavior');
    this.instanceInterruptionBehavior = registerOutput<String?>('instanceInterruptionBehavior');
    this.instanceState = registerOutput<String>('instanceState');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    this.ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    this.keyName = registerOutput<String>('keyName');
    this.launchGroup = registerOutput<String?>('launchGroup');
    this.launchTemplate = registerOutput<SpotInstanceRequestLaunchTemplate?>('launchTemplate');
    this.maintenanceOptions = registerOutput<SpotInstanceRequestMaintenanceOptions>('maintenanceOptions');
    this.metadataOptions = registerOutput<SpotInstanceRequestMetadataOptions>('metadataOptions');
    this.monitoring = registerOutput<bool>('monitoring');
    this.networkInterfaces = registerOutput<List<SpotInstanceRequestNetworkInterface>>('networkInterfaces');
    this.outpostArn = registerOutput<String>('outpostArn');
    this.passwordData = registerOutput<String>('passwordData');
    this.placementGroup = registerOutput<String>('placementGroup');
    this.placementGroupId = registerOutput<String>('placementGroupId');
    this.placementPartitionNumber = registerOutput<int>('placementPartitionNumber');
    this.primaryNetworkInterfaceId = registerOutput<String>('primaryNetworkInterfaceId');
    this.primaryNetworkInterfaces = registerOutput<List<SpotInstanceRequestPrimaryNetworkInterface>>('primaryNetworkInterfaces');
    this.privateDns = registerOutput<String>('privateDns');
    this.privateDnsNameOptions = registerOutput<SpotInstanceRequestPrivateDnsNameOptions>('privateDnsNameOptions');
    this.privateIp = registerOutput<String>('privateIp');
    this.publicDns = registerOutput<String>('publicDns');
    this.publicIp = registerOutput<String>('publicIp');
    this.region = registerOutput<String>('region');
    this.rootBlockDevice = registerOutput<SpotInstanceRequestRootBlockDevice>('rootBlockDevice');
    this.secondaryNetworkInterfaces = registerOutput<List<SpotInstanceRequestSecondaryNetworkInterface>>('secondaryNetworkInterfaces');
    this.secondaryPrivateIps = registerOutput<List<String>>('secondaryPrivateIps');
    this.securityGroups = registerOutput<List<String>>('securityGroups');
    this.sourceDestCheck = registerOutput<bool?>('sourceDestCheck');
    this.spotBidStatus = registerOutput<String>('spotBidStatus');
    this.spotInstanceId = registerOutput<String>('spotInstanceId');
    this.spotPrice = registerOutput<String>('spotPrice');
    this.spotRequestState = registerOutput<String>('spotRequestState');
    this.spotType = registerOutput<String?>('spotType');
    this.subnetId = registerOutput<String>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.userData = registerOutput<String?>('userData');
    this.userDataBase64 = registerOutput<String>('userDataBase64');
    this.userDataReplaceOnChange = registerOutput<bool?>('userDataReplaceOnChange');
    this.validFrom = registerOutput<String>('validFrom');
    this.validUntil = registerOutput<String>('validUntil');
    this.volumeTags = registerOutput<Map<String, String>?>('volumeTags');
    this.vpcSecurityGroupIds = registerOutput<List<String>>('vpcSecurityGroupIds');
    this.waitForFulfillment = registerOutput<bool?>('waitForFulfillment');
  }
}
