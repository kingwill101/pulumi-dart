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
import '../spot_instance_request_primary_network_interface/spot_instance_request_primary_network_interface.dart';
import '../spot_instance_request_private_dns_name_options/spot_instance_request_private_dns_name_options.dart';
import '../spot_instance_request_root_block_device/spot_instance_request_root_block_device.dart';
import '../spot_instance_request_secondary_network_interface/spot_instance_request_secondary_network_interface.dart';
import 'spot_instance_request_args.dart';

/// Provides an EC2 Spot Instance Request resource. This allows instances to be
/// requested on the spot market.
///
/// By default this provider creates Spot Instance Requests with a <span pulumi-lang-nodejs="`persistent`" pulumi-lang-dotnet="`Persistent`" pulumi-lang-go="`persistent`" pulumi-lang-python="`persistent`" pulumi-lang-yaml="`persistent`" pulumi-lang-java="`persistent`">`persistent`</span> type,
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
/// We recommend using the EC2 Instance resource with <span pulumi-lang-nodejs="`instanceMarketOptions`" pulumi-lang-dotnet="`InstanceMarketOptions`" pulumi-lang-go="`instanceMarketOptions`" pulumi-lang-python="`instance_market_options`" pulumi-lang-yaml="`instanceMarketOptions`" pulumi-lang-java="`instanceMarketOptions`">`instance_market_options`</span> instead.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Request a spot instance at $0.03
/// const cheapWorker = new aws.ec2.SpotInstanceRequest("cheap_worker", {
/// ami: "ami-1234",
/// spotPrice: "0.03",
/// instanceType: "c4.xlarge",
/// tags: {
/// Name: "CheapWorker",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Request a spot instance at $0.03
/// cheap_worker = aws.ec2.SpotInstanceRequest("cheap_worker",
/// ami="ami-1234",
/// spot_price="0.03",
/// instance_type="c4.xlarge",
/// tags={
/// "Name": "CheapWorker",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// // Request a spot instance at $0.03
/// var cheapWorker = new Aws.Ec2.SpotInstanceRequest("cheap_worker", new()
/// {
/// Ami = "ami-1234",
/// SpotPrice = "0.03",
/// InstanceType = "c4.xlarge",
/// Tags =
/// {
/// { "Name", "CheapWorker" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// // Request a spot instance at $0.03
/// _, err := ec2.NewSpotInstanceRequest(ctx, "cheap_worker", &ec2.SpotInstanceRequestArgs{
/// Ami:          pulumi.String("ami-1234"),
/// SpotPrice:    pulumi.String("0.03"),
/// InstanceType: pulumi.String("c4.xlarge"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("CheapWorker"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// // Request a spot instance at $0.03
/// var cheapWorker = new SpotInstanceRequest("cheapWorker", SpotInstanceRequestArgs.builder()
/// .ami("ami-1234")
/// .spotPrice("0.03")
/// .instanceType("c4.xlarge")
/// .tags(Map.of("Name", "CheapWorker"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// # Request a spot instance at $0.03
/// cheapWorker:
/// type: aws:ec2:SpotInstanceRequest
/// name: cheap_worker
/// properties:
/// ami: ami-1234
/// spotPrice: '0.03'
/// instanceType: c4.xlarge
/// tags:
/// Name: CheapWorker
/// ```
/// <!--End PulumiCodeChooser -->
class SpotInstanceRequest extends CustomResource {
  /// AMI to use for the instance. Required unless <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting <span pulumi-lang-nodejs="`ami`" pulumi-lang-dotnet="`Ami`" pulumi-lang-go="`ami`" pulumi-lang-python="`ami`" pulumi-lang-yaml="`ami`" pulumi-lang-java="`ami`">`ami`</span> will override the AMI specified in the Launch Template.
  late final Output<String> ami;
  late final Output<String> arn;

  /// Whether to associate a public IP address with an instance in a VPC.
  late final Output<bool> associatePublicIpAddress;

  /// AZ to start the instance in.
  late final Output<String> availabilityZone;

  /// Describes an instance's Capacity Reservation targeting option. See Capacity Reservation Specification below for more details.
  late final Output<SpotInstanceRequestCapacityReservationSpecification>
      capacityReservationSpecification;

  /// The CPU options for the instance. See CPU Options below for more details.
  late final Output<SpotInstanceRequestCpuOptions> cpuOptions;

  /// Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. This provider will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type.
  late final Output<SpotInstanceRequestCreditSpecification?>
      creditSpecification;

  /// If true, enables [EC2 Instance Stop Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html#Using_StopProtection).
  late final Output<bool> disableApiStop;

  /// If true, enables [EC2 Instance Termination Protection](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingDisableAPITermination).
  late final Output<bool> disableApiTermination;

  /// One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects.
  late final Output<List<SpotInstanceRequestEbsBlockDevice>> ebsBlockDevices;

  /// If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the [EBS Optimized section](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSOptimized.html) of the AWS User Guide for more information.
  late final Output<bool> ebsOptimized;

  /// Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance when launched in a dual-stack or IPv6-only subnet. A primary IPv6 address ensures a consistent IPv6 address for the instance and is automatically assigned by AWS to the ENI. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains until the instance is terminated or the ENI is detached. Disabling <span pulumi-lang-nodejs="`enablePrimaryIpv6`" pulumi-lang-dotnet="`EnablePrimaryIpv6`" pulumi-lang-go="`enablePrimaryIpv6`" pulumi-lang-python="`enable_primary_ipv6`" pulumi-lang-yaml="`enablePrimaryIpv6`" pulumi-lang-java="`enablePrimaryIpv6`">`enable_primary_ipv6`</span> after it has been enabled forces recreation of the instance.
  late final Output<bool> enablePrimaryIpv6;

  /// Enable Nitro Enclaves on launched instances. See Enclave Options below for more details.
  late final Output<SpotInstanceRequestEnclaveOptions> enclaveOptions;

  /// One or more configuration blocks to customize Ephemeral (also known as "Instance Store") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects.
  late final Output<List<SpotInstanceRequestEphemeralBlockDevice>>
      ephemeralBlockDevices;

  /// Destroys instance even if <span pulumi-lang-nodejs="`disableApiTermination`" pulumi-lang-dotnet="`DisableApiTermination`" pulumi-lang-go="`disableApiTermination`" pulumi-lang-python="`disable_api_termination`" pulumi-lang-yaml="`disableApiTermination`" pulumi-lang-java="`disableApiTermination`">`disable_api_termination`</span> or <span pulumi-lang-nodejs="`disableApiStop`" pulumi-lang-dotnet="`DisableApiStop`" pulumi-lang-go="`disableApiStop`" pulumi-lang-python="`disable_api_stop`" pulumi-lang-yaml="`disableApiStop`" pulumi-lang-java="`disableApiStop`">`disable_api_stop`</span> is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Once this parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, a successful `pulumi up` run before a destroy is required to update this value in the resource state. Without a successful `pulumi up` after this parameter is set, this flag will have no effect. If setting this field in the same operation that would require replacing the instance or destroying the instance, this flag will not work. Additionally when importing an instance, a successful `pulumi up` is required to set this value in state before it will take effect on a destroy operation.
  late final Output<bool?> forceDestroy;

  /// If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the <span pulumi-lang-nodejs="`passwordData`" pulumi-lang-dotnet="`PasswordData`" pulumi-lang-go="`passwordData`" pulumi-lang-python="`password_data`" pulumi-lang-yaml="`passwordData`" pulumi-lang-java="`passwordData`">`password_data`</span> attribute. See [GetPasswordData](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetPasswordData.html) for more information.
  late final Output<bool?> getPasswordData;

  /// If true, the launched EC2 instance will support hibernation.
  late final Output<bool?> hibernation;

  /// ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host.
  late final Output<String> hostId;

  /// ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the <span pulumi-lang-nodejs="`tenancy`" pulumi-lang-dotnet="`Tenancy`" pulumi-lang-go="`tenancy`" pulumi-lang-python="`tenancy`" pulumi-lang-yaml="`tenancy`" pulumi-lang-java="`tenancy`">`tenancy`</span> parameter or set it to <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  late final Output<String> hostResourceGroupArn;

  /// IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the [EC2 documentation](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html#roles-usingrole-ec2instance-permissions), notably `iam:PassRole`.
  late final Output<String> iamInstanceProfile;

  /// Shutdown behavior for the instance. Amazon defaults this to <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span> for EBS-backed instances and <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span> for instance-store instances. Cannot be set on instance-store instances. See [Shutdown Behavior](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/terminating-instances.html#Using_ChangingInstanceInitiatedShutdownBehavior) for more information.
  late final Output<String> instanceInitiatedShutdownBehavior;

  /// Indicates Spot instance behavior when it is interrupted. Valid values are <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>, <span pulumi-lang-nodejs="`stop`" pulumi-lang-dotnet="`Stop`" pulumi-lang-go="`stop`" pulumi-lang-python="`stop`" pulumi-lang-yaml="`stop`" pulumi-lang-java="`stop`">`stop`</span>, or <span pulumi-lang-nodejs="`hibernate`" pulumi-lang-dotnet="`Hibernate`" pulumi-lang-go="`hibernate`" pulumi-lang-python="`hibernate`" pulumi-lang-yaml="`hibernate`" pulumi-lang-java="`hibernate`">`hibernate`</span>. Default value is <span pulumi-lang-nodejs="`terminate`" pulumi-lang-dotnet="`Terminate`" pulumi-lang-go="`terminate`" pulumi-lang-python="`terminate`" pulumi-lang-yaml="`terminate`" pulumi-lang-java="`terminate`">`terminate`</span>.
  late final Output<String?> instanceInterruptionBehavior;
  late final Output<String> instanceState;

  /// Instance type to use for the instance. Required unless <span pulumi-lang-nodejs="`launchTemplate`" pulumi-lang-dotnet="`LaunchTemplate`" pulumi-lang-go="`launchTemplate`" pulumi-lang-python="`launch_template`" pulumi-lang-yaml="`launchTemplate`" pulumi-lang-java="`launchTemplate`">`launch_template`</span> is specified and the Launch Template specifies an instance type. If an instance type is specified in the Launch Template, setting <span pulumi-lang-nodejs="`instanceType`" pulumi-lang-dotnet="`InstanceType`" pulumi-lang-go="`instanceType`" pulumi-lang-python="`instance_type`" pulumi-lang-yaml="`instanceType`" pulumi-lang-java="`instanceType`">`instance_type`</span> will override the instance type specified in the Launch Template. Updates to this field will trigger a stop/start of the EC2 instance.
  late final Output<String> instanceType;

  /// Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet.
  late final Output<int> ipv6AddressCount;

  /// Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface
  late final Output<List<String>> ipv6Addresses;

  /// Key name of the Key Pair to use for the instance; which can be managed using the <span pulumi-lang-nodejs="`aws.ec2.KeyPair`" pulumi-lang-dotnet="`aws.ec2.KeyPair`" pulumi-lang-go="`ec2.KeyPair`" pulumi-lang-python="`ec2.KeyPair`" pulumi-lang-yaml="`aws.ec2.KeyPair`" pulumi-lang-java="`aws.ec2.KeyPair`">`aws.ec2.KeyPair`</span> resource.
  late final Output<String> keyName;

  /// A launch group is a group of spot instances that launch together and terminate together.
  /// If left empty instances are launched and terminated individually.
  late final Output<String?> launchGroup;

  /// Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template. See Launch Template Specification below for more details.
  late final Output<SpotInstanceRequestLaunchTemplate?> launchTemplate;

  /// Maintenance and recovery options for the instance. See Maintenance Options below for more details.
  late final Output<SpotInstanceRequestMaintenanceOptions> maintenanceOptions;

  /// Customize the metadata options of the instance. See Metadata Options below for more details.
  late final Output<SpotInstanceRequestMetadataOptions> metadataOptions;

  /// If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)
  late final Output<bool> monitoring;

  /// Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details.
  late final Output<List<SpotInstanceRequestNetworkInterface>>
      networkInterfaces;
  late final Output<String> outpostArn;
  late final Output<String> passwordData;

  /// Placement Group to start the instance in. Conflicts with <span pulumi-lang-nodejs="`placementGroupId`" pulumi-lang-dotnet="`PlacementGroupId`" pulumi-lang-go="`placementGroupId`" pulumi-lang-python="`placement_group_id`" pulumi-lang-yaml="`placementGroupId`" pulumi-lang-java="`placementGroupId`">`placement_group_id`</span>.
  late final Output<String> placementGroup;

  /// Placement Group ID to start the instance in. Conflicts with <span pulumi-lang-nodejs="`placementGroup`" pulumi-lang-dotnet="`PlacementGroup`" pulumi-lang-go="`placementGroup`" pulumi-lang-python="`placement_group`" pulumi-lang-yaml="`placementGroup`" pulumi-lang-java="`placementGroup`">`placement_group`</span>.
  late final Output<String> placementGroupId;

  /// Number of the partition the instance is in. Valid only if the <span pulumi-lang-nodejs="`aws.ec2.PlacementGroup`" pulumi-lang-dotnet="`aws.ec2.PlacementGroup`" pulumi-lang-go="`ec2.PlacementGroup`" pulumi-lang-python="`ec2.PlacementGroup`" pulumi-lang-yaml="`aws.ec2.PlacementGroup`" pulumi-lang-java="`aws.ec2.PlacementGroup`">`aws.ec2.PlacementGroup`</span> resource's <span pulumi-lang-nodejs="`strategy`" pulumi-lang-dotnet="`Strategy`" pulumi-lang-go="`strategy`" pulumi-lang-python="`strategy`" pulumi-lang-yaml="`strategy`" pulumi-lang-java="`strategy`">`strategy`</span> argument is set to `"partition"`.
  late final Output<int> placementPartitionNumber;
  late final Output<String> primaryNetworkInterfaceId;

  /// The primary network interface. See Primary Network Interface below.
  late final Output<List<SpotInstanceRequestPrimaryNetworkInterface>>
      primaryNetworkInterfaces;

  /// The private DNS name assigned to the instance. Can only be
  /// used inside the Amazon EC2, and only available if you've enabled DNS hostnames
  /// for your VPC
  late final Output<String> privateDns;

  /// Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details.
  late final Output<SpotInstanceRequestPrivateDnsNameOptions>
      privateDnsNameOptions;

  /// Private IP address to associate with the instance in a VPC.
  late final Output<String> privateIp;

  /// The public DNS name assigned to the instance. For EC2-VPC, this
  /// is only available if you've enabled DNS hostnames for your VPC
  late final Output<String> publicDns;

  /// The public IP address assigned to the instance, if applicable.
  late final Output<String> publicIp;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object.
  late final Output<SpotInstanceRequestRootBlockDevice> rootBlockDevice;

  /// One or more secondary network interfaces to attach to the instance at launch time. See Secondary Network Interface below for more details.
  late final Output<List<SpotInstanceRequestSecondaryNetworkInterface>>
      secondaryNetworkInterfaces;

  /// List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a <span pulumi-lang-nodejs="`networkInterface`" pulumi-lang-dotnet="`NetworkInterface`" pulumi-lang-go="`networkInterface`" pulumi-lang-python="`network_interface`" pulumi-lang-yaml="`networkInterface`" pulumi-lang-java="`networkInterface`">`network_interface`</span> block. Refer to the [Elastic network interfaces documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) to see the maximum number of private IP addresses allowed per instance type.
  late final Output<List<String>> secondaryPrivateIps;

  /// List of security group names to associate with.
  ///
  /// > **NOTE:** If you are creating Instances in a VPC, use <span pulumi-lang-nodejs="`vpcSecurityGroupIds`" pulumi-lang-dotnet="`VpcSecurityGroupIds`" pulumi-lang-go="`vpcSecurityGroupIds`" pulumi-lang-python="`vpc_security_group_ids`" pulumi-lang-yaml="`vpcSecurityGroupIds`" pulumi-lang-java="`vpcSecurityGroupIds`">`vpc_security_group_ids`</span> instead.
  late final Output<List<String>> securityGroups;

  /// Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true.
  late final Output<bool?> sourceDestCheck;

  /// The current [bid
  /// status](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html)
  /// of the Spot Instance Request.
  late final Output<String> spotBidStatus;

  /// The Instance ID (if any) that is currently fulfilling
  /// the Spot Instance request.
  late final Output<String> spotInstanceId;

  /// The maximum price to request on the spot market.
  late final Output<String> spotPrice;

  /// The current [request
  /// state](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html#creating-spot-request-status)
  /// of the Spot Instance Request.
  late final Output<String> spotRequestState;

  /// If set to `one-time`, after
  /// the instance is terminated, the spot request will be closed.
  late final Output<String?> spotType;

  /// VPC Subnet ID to launch in.
  late final Output<String> subnetId;

  /// Map of tags to assign to the resource. Note that these tags apply to the instance and not block storage devices. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span> runs on single-tenant hardware. The <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span> tenancy is not supported for the import-instance command. Valid values are <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, and <span pulumi-lang-nodejs="`host`" pulumi-lang-dotnet="`Host`" pulumi-lang-go="`host`" pulumi-lang-python="`host`" pulumi-lang-yaml="`host`" pulumi-lang-java="`host`">`host`</span>.
  late final Output<String> tenancy;

  /// User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the <span pulumi-lang-nodejs="`userDataReplaceOnChange`" pulumi-lang-dotnet="`UserDataReplaceOnChange`" pulumi-lang-go="`userDataReplaceOnChange`" pulumi-lang-python="`user_data_replace_on_change`" pulumi-lang-yaml="`userDataReplaceOnChange`" pulumi-lang-java="`userDataReplaceOnChange`">`user_data_replace_on_change`</span> is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final Output<String?> userData;

  /// Can be used instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> to pass base64-encoded binary data directly. Use this instead of <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the <span pulumi-lang-nodejs="`userDataReplaceOnChange`" pulumi-lang-dotnet="`UserDataReplaceOnChange`" pulumi-lang-go="`userDataReplaceOnChange`" pulumi-lang-python="`user_data_replace_on_change`" pulumi-lang-yaml="`userDataReplaceOnChange`" pulumi-lang-java="`userDataReplaceOnChange`">`user_data_replace_on_change`</span> is set then updates to this field will trigger a destroy and recreate of the EC2 instance.
  late final Output<String> userDataBase64;

  /// When used in combination with <span pulumi-lang-nodejs="`userData`" pulumi-lang-dotnet="`UserData`" pulumi-lang-go="`userData`" pulumi-lang-python="`user_data`" pulumi-lang-yaml="`userData`" pulumi-lang-java="`userData`">`user_data`</span> or <span pulumi-lang-nodejs="`userDataBase64`" pulumi-lang-dotnet="`UserDataBase64`" pulumi-lang-go="`userDataBase64`" pulumi-lang-python="`user_data_base64`" pulumi-lang-yaml="`userDataBase64`" pulumi-lang-java="`userDataBase64`">`user_data_base64`</span> will trigger a destroy and recreate of the EC2 instance when set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> if not set.
  late final Output<bool?> userDataReplaceOnChange;

  /// The start date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). The default is to start fulfilling the request immediately.
  late final Output<String> validFrom;

  /// The end date and time of the request, in UTC [RFC3339](https://tools.ietf.org/html/rfc3339#section-5.8) format(for example, YYYY-MM-DDTHH:MM:SSZ). At this point, no new Spot instance requests are placed or enabled to fulfill the request. The default end date is 7 days from the current date.
  late final Output<String> validUntil;

  /// Map of tags to assign, at instance-creation time, to root and EBS volumes.
  ///
  /// > **NOTE:** Do not use <span pulumi-lang-nodejs="`volumeTags`" pulumi-lang-dotnet="`VolumeTags`" pulumi-lang-go="`volumeTags`" pulumi-lang-python="`volume_tags`" pulumi-lang-yaml="`volumeTags`" pulumi-lang-java="`volumeTags`">`volume_tags`</span> if you plan to manage block device tags outside the <span pulumi-lang-nodejs="`aws.ec2.Instance`" pulumi-lang-dotnet="`aws.ec2.Instance`" pulumi-lang-go="`ec2.Instance`" pulumi-lang-python="`ec2.Instance`" pulumi-lang-yaml="`aws.ec2.Instance`" pulumi-lang-java="`aws.ec2.Instance`">`aws.ec2.Instance`</span> configuration, such as using <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span> in an <span pulumi-lang-nodejs="`aws.ebs.Volume`" pulumi-lang-dotnet="`aws.ebs.Volume`" pulumi-lang-go="`ebs.Volume`" pulumi-lang-python="`ebs.Volume`" pulumi-lang-yaml="`aws.ebs.Volume`" pulumi-lang-java="`aws.ebs.Volume`">`aws.ebs.Volume`</span> resource attached via <span pulumi-lang-nodejs="`aws.ec2.VolumeAttachment`" pulumi-lang-dotnet="`aws.ec2.VolumeAttachment`" pulumi-lang-go="`ec2.VolumeAttachment`" pulumi-lang-python="`ec2.VolumeAttachment`" pulumi-lang-yaml="`aws.ec2.VolumeAttachment`" pulumi-lang-java="`aws.ec2.VolumeAttachment`">`aws.ec2.VolumeAttachment`</span>. Doing so will result in resource cycling and inconsistent behavior.
  late final Output<Map<String, String>?> volumeTags;

  /// List of security group IDs to associate with.
  late final Output<List<String>> vpcSecurityGroupIds;

  /// If set, this provider will
  /// wait for the Spot Request to be fulfilled, and will throw an error if the
  /// timeout of 10m is reached.
  late final Output<bool?> waitForFulfillment;

  SpotInstanceRequest(
    String name, {
    SpotInstanceRequestArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/spotInstanceRequest:SpotInstanceRequest',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.ami = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.associatePublicIpAddress = Output.createUnknown<bool>();
    this.availabilityZone = Output.createUnknown<String>();
    this.capacityReservationSpecification = Output.createUnknown<
        SpotInstanceRequestCapacityReservationSpecification>();
    this.cpuOptions = Output.createUnknown<SpotInstanceRequestCpuOptions>();
    this.creditSpecification =
        Output.createUnknown<SpotInstanceRequestCreditSpecification?>();
    this.disableApiStop = Output.createUnknown<bool>();
    this.disableApiTermination = Output.createUnknown<bool>();
    this.ebsBlockDevices =
        Output.createUnknown<List<SpotInstanceRequestEbsBlockDevice>>();
    this.ebsOptimized = Output.createUnknown<bool>();
    this.enablePrimaryIpv6 = Output.createUnknown<bool>();
    this.enclaveOptions =
        Output.createUnknown<SpotInstanceRequestEnclaveOptions>();
    this.ephemeralBlockDevices =
        Output.createUnknown<List<SpotInstanceRequestEphemeralBlockDevice>>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.getPasswordData = Output.createUnknown<bool?>();
    this.hibernation = Output.createUnknown<bool?>();
    this.hostId = Output.createUnknown<String>();
    this.hostResourceGroupArn = Output.createUnknown<String>();
    this.iamInstanceProfile = Output.createUnknown<String>();
    this.instanceInitiatedShutdownBehavior = Output.createUnknown<String>();
    this.instanceInterruptionBehavior = Output.createUnknown<String?>();
    this.instanceState = Output.createUnknown<String>();
    this.instanceType = Output.createUnknown<String>();
    this.ipv6AddressCount = Output.createUnknown<int>();
    this.ipv6Addresses = Output.createUnknown<List<String>>();
    this.keyName = Output.createUnknown<String>();
    this.launchGroup = Output.createUnknown<String?>();
    this.launchTemplate =
        Output.createUnknown<SpotInstanceRequestLaunchTemplate?>();
    this.maintenanceOptions =
        Output.createUnknown<SpotInstanceRequestMaintenanceOptions>();
    this.metadataOptions =
        Output.createUnknown<SpotInstanceRequestMetadataOptions>();
    this.monitoring = Output.createUnknown<bool>();
    this.networkInterfaces =
        Output.createUnknown<List<SpotInstanceRequestNetworkInterface>>();
    this.outpostArn = Output.createUnknown<String>();
    this.passwordData = Output.createUnknown<String>();
    this.placementGroup = Output.createUnknown<String>();
    this.placementGroupId = Output.createUnknown<String>();
    this.placementPartitionNumber = Output.createUnknown<int>();
    this.primaryNetworkInterfaceId = Output.createUnknown<String>();
    this.primaryNetworkInterfaces = Output.createUnknown<
        List<SpotInstanceRequestPrimaryNetworkInterface>>();
    this.privateDns = Output.createUnknown<String>();
    this.privateDnsNameOptions =
        Output.createUnknown<SpotInstanceRequestPrivateDnsNameOptions>();
    this.privateIp = Output.createUnknown<String>();
    this.publicDns = Output.createUnknown<String>();
    this.publicIp = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.rootBlockDevice =
        Output.createUnknown<SpotInstanceRequestRootBlockDevice>();
    this.secondaryNetworkInterfaces = Output.createUnknown<
        List<SpotInstanceRequestSecondaryNetworkInterface>>();
    this.secondaryPrivateIps = Output.createUnknown<List<String>>();
    this.securityGroups = Output.createUnknown<List<String>>();
    this.sourceDestCheck = Output.createUnknown<bool?>();
    this.spotBidStatus = Output.createUnknown<String>();
    this.spotInstanceId = Output.createUnknown<String>();
    this.spotPrice = Output.createUnknown<String>();
    this.spotRequestState = Output.createUnknown<String>();
    this.spotType = Output.createUnknown<String?>();
    this.subnetId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tenancy = Output.createUnknown<String>();
    this.userData = Output.createUnknown<String?>();
    this.userDataBase64 = Output.createUnknown<String>();
    this.userDataReplaceOnChange = Output.createUnknown<bool?>();
    this.validFrom = Output.createUnknown<String>();
    this.validUntil = Output.createUnknown<String>();
    this.volumeTags = Output.createUnknown<Map<String, String>?>();
    this.vpcSecurityGroupIds = Output.createUnknown<List<String>>();
    this.waitForFulfillment = Output.createUnknown<bool?>();
  }
}
