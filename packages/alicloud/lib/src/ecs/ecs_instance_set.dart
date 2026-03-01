import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_instance_set_args.dart';
import 'ecs_instance_set_data_disk.dart';
import 'ecs_instance_set_exclude_instance_filter.dart';
import 'ecs_instance_set_network_interface.dart';

/// Provides a ECS Instance Set resource.
///
/// For information about ECS Instance Set and how to use it, see [What is Instance Set](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/runinstances).
///
/// > **NOTE:** Available since v1.173.0.
///
/// > **NOTE:** This resource is used to batch create a group of instance resources with the same configuration. However, this resource is not recommended. `alicloud.ecs.Instance` is preferred.
///
/// > **NOTE:** In the instances managed by this resource, names are automatically generated based on `instance_name` and `unique_suffix`.
///
/// > **NOTE:** Only `tags` support batch modification.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const beijingK = new alicloud.ecs.EcsInstanceSet("beijing_k", {
///     amount: 10,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     instanceName: name,
///     instanceChargeType: "PostPaid",
///     systemDiskPerformanceLevel: "PL0",
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskSize: 200,
///     vswitchId: defaultSwitch.id,
///     securityGroupIds: [defaultSecurityGroup].map(__item => __item.id),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// beijing_k = alicloud.ecs.EcsInstanceSet("beijing_k",
///     amount=10,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     instance_name=name,
///     instance_charge_type="PostPaid",
///     system_disk_performance_level="PL0",
///     system_disk_category="cloud_efficiency",
///     system_disk_size=200,
///     vswitch_id=default_switch.id,
///     security_group_ids=[__item.id for __item in [default_security_group]],
///     zone_id=default.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var beijingK = new AliCloud.Ecs.EcsInstanceSet("beijing_k", new()
///     {
///         Amount = 10,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InstanceName = name,
///         InstanceChargeType = "PostPaid",
///         SystemDiskPerformanceLevel = "PL0",
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskSize = 200,
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// CpuCoreCount: pulumi.IntRef(1),
/// MemorySize: pulumi.Float64Ref(2),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("172.17.3.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// CidrBlock: pulumi.String("172.17.3.0/24"),
/// VpcId: defaultNetwork.ID(),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// _, err = ecs.NewEcsInstanceSet(ctx, "beijing_k", &ecs.EcsInstanceSetArgs{
/// Amount: pulumi.Int(10),
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// InstanceName: pulumi.String(name),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskPerformanceLevel: pulumi.String("PL0"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// SystemDiskSize: pulumi.Int(200),
/// VswitchId: defaultSwitch.ID(),
/// SecurityGroupIds: splat0,
/// ZoneId: pulumi.String(_default.Zones[0].Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsInstanceSet;
/// import com.pulumi.alicloud.ecs.EcsInstanceSetArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var beijingK = new EcsInstanceSet("beijingK", EcsInstanceSetArgs.builder()
///             .amount(10)
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .instanceName(name)
///             .instanceChargeType("PostPaid")
///             .systemDiskPerformanceLevel("PL0")
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskSize(200)
///             .vswitchId(defaultSwitch.id())
///             .securityGroupIds(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///     }
/// }
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class EcsInstanceSet extends pulumi.CustomResource {
  /// The number of instances that you want to create. Valid values: `1` to `100`.
  late final pulumi.Output<int?> amount;
  /// The automatic release time of the `PostPaid` instance.
  late final pulumi.Output<String?> autoReleaseTime;
  /// Whether to enable auto-renewal for the instance. **Note:** `auto_renew` is valid only when `instance_charge_type` is set to `PrePaid`.
  late final pulumi.Output<bool?> autoRenew;
  /// Auto renewal period of an instance, in the unit of month. Valid values:
  /// - When `period_unit` is `Month`, Valid values: `1`, `2`, `3`, `6`, `12`.
  /// - When `period_unit` is `Week`, Valid values: `1`, `2`, `3`.
  /// **Note:** `auto_renew_period` is valid only when `instance_charge_type` is set to `PrePaid`.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// Indicate how to check instance ready to use. Valid values:
  late final pulumi.Output<bool?> bootCheckOsWithAssistant;
  /// The list of data disks created with instance. See `data_disks` below.
  late final pulumi.Output<List<EcsInstanceSetDataDisk>?> dataDisks;
  /// The ID of the dedicated host on which to create the instance. If the `dedicated_host_id` is specified, the `spot_strategy` and `spot_price_limit`  are ignored. This is because preemptible instances cannot be created on dedicated hosts.
  late final pulumi.Output<String?> dedicatedHostId;
  /// Whether to enable release protection for the instance.
  late final pulumi.Output<bool> deletionProtection;
  /// The ID of the deployment set to which to deploy the instance.
  late final pulumi.Output<String?> deploymentSetId;
  /// The description of the instance, This description can have a string of 2 to 256 characters, It cannot begin with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The instances that need to be excluded from the Instance Set.  See `exclude_instance_filter` below.
  late final pulumi.Output<EcsInstanceSetExcludeInstanceFilter?> excludeInstanceFilter;
  /// The hostname of instance.
  late final pulumi.Output<String> hostName;
  /// The ID of the Elastic High Performance Computing (E-HPC) cluster to which to assign the instance.
  late final pulumi.Output<String?> hpcClusterId;
  /// The Image to use for the instance.
  late final pulumi.Output<String> imageId;
  /// The billing method of the instance. Valid values: `PrePaid`, `PostPaid`.
  late final pulumi.Output<String?> instanceChargeType;
  /// A list of ECS Instance ID.
  late final pulumi.Output<List<String>> instanceIds;
  /// The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with `http://` or `https://`.
  late final pulumi.Output<String?> instanceName;
  /// The type of instance to start.
  late final pulumi.Output<String> instanceType;
  /// The Internet charge type of the instance. Valid values: `PayByBandwidth`, `PayByTraffic`.
  late final pulumi.Output<String> internetChargeType;
  /// The Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). Valid values: `1` to `100`.
  late final pulumi.Output<int> internetMaxBandwidthOut;
  /// The name of key pair that can login ECS instance successfully without password.
  late final pulumi.Output<String?> keyPairName;
  /// The ID of the launch template.
  late final pulumi.Output<String?> launchTemplateId;
  /// The name of the launch template. To use a launch template to create an instance, you must use the `launch_template_id` or `launch_template_name` parameter to specify the launch template.
  late final pulumi.Output<String?> launchTemplateName;
  /// The version of the launch template.
  late final pulumi.Output<String?> launchTemplateVersion;
  /// A list of NetworkInterface. See `network_interfaces` below.
  late final pulumi.Output<List<EcsInstanceSetNetworkInterface>?> networkInterfaces;
  /// The password to an instance is a string of 8 to 30 characters. It must contain uppercase/lowercase letters and numerals, but cannot contain special symbols.
  late final pulumi.Output<String?> password;
  /// Whether to use the password preset in the image.
  late final pulumi.Output<bool?> passwordInherit;
  /// The duration that you will buy the resource, in month. Valid values:
  /// - When `period_unit` is `Month`, Valid values: `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `12`, `24`, `36`, `48`, `60`.
  /// - When `period_unit` is `Week`, Valid values: `1`, `2`, `3`.
  /// **Note:** `period` is valid only when `instance_charge_type` is set to `PrePaid`.
  late final pulumi.Output<int?> period;
  /// The duration unit that you will buy the resource. Valid values: `Week`, `Month`. **Note:** `period_unit` is valid only when `instance_charge_type` is set to `PrePaid`.
  late final pulumi.Output<String?> periodUnit;
  /// The Instance RAM role name.
  late final pulumi.Output<String?> ramRoleName;
  /// The ID of resource group which the instance belongs.
  late final pulumi.Output<String?> resourceGroupId;
  /// The security enhancement strategy. Valid values:
  /// - `Active`: Enable security enhancement strategy, it only works on system images.
  /// - `Deactive`: Disable security enhancement strategy, it works on all images.
  late final pulumi.Output<String?> securityEnhancementStrategy;
  /// A list of security group ids to associate with.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// The hourly price threshold of a instance. Three decimals is allowed at most. **Note:** `spot_price_limit` takes effect only if `spot_strategy` is set to `SpotWithPriceLimit`.
  late final pulumi.Output<double> spotPriceLimit;
  /// The spot strategy of a Pay-As-You-Go instance. Valid values:
  /// - `NoSpot`: A regular Pay-As-You-Go instance.
  /// - `SpotWithPriceLimit`: A price threshold for a spot instance.
  /// - `SpotAsPriceGo`: A price that is based on the highest Pay-As-You-Go instance.
  /// **Note:** `spot_strategy` takes effect only if `instance_charge_type` is set to `PostPaid`.
  late final pulumi.Output<String> spotStrategy;
  /// The ID of the automatic snapshot policy applied to the system disk.
  late final pulumi.Output<String?> systemDiskAutoSnapshotPolicyId;
  /// The category of the system disk. Valid values: `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`.
  late final pulumi.Output<String> systemDiskCategory;
  /// The description of the system disk. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> systemDiskDescription;
  /// The name of the system disk.
  late final pulumi.Output<String?> systemDiskName;
  /// The performance level of the ESSD used as the system disk. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  late final pulumi.Output<String> systemDiskPerformanceLevel;
  /// The size of the system disk, measured in GiB. Valid values: `20` to `500`.
  late final pulumi.Output<int> systemDiskSize;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Whether to automatically append incremental suffixes to the hostname specified by the HostName parameter and to the instance name specified by the InstanceName parameter when you batch create instances. The incremental suffixes can range from `001` to `999`.
  late final pulumi.Output<bool?> uniqueSuffix;
  /// The virtual switch ID to launch in VPC.
  late final pulumi.Output<String?> vswitchId;
  /// The ID of the zone in which to create the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EcsInstanceSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsInstanceSet]. {@macro pulumi_ecs_ecs_instance_set_ecs_instance_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsInstanceSet(
    String name, {
    EcsInstanceSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsInstanceSet:EcsInstanceSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amount = registerOutput<int?>('amount');
    this.autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.bootCheckOsWithAssistant = registerOutput<bool?>('bootCheckOsWithAssistant');
    this.dataDisks = registerOutput<List<EcsInstanceSetDataDisk>?>('dataDisks');
    this.dedicatedHostId = registerOutput<String?>('dedicatedHostId');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.deploymentSetId = registerOutput<String?>('deploymentSetId');
    this.description = registerOutput<String?>('description');
    this.excludeInstanceFilter = registerOutput<EcsInstanceSetExcludeInstanceFilter?>('excludeInstanceFilter');
    this.hostName = registerOutput<String>('hostName');
    this.hpcClusterId = registerOutput<String?>('hpcClusterId');
    this.imageId = registerOutput<String>('imageId');
    this.instanceChargeType = registerOutput<String?>('instanceChargeType');
    this.instanceIds = registerOutput<List<String>>('instanceIds');
    this.instanceName = registerOutput<String?>('instanceName');
    this.instanceType = registerOutput<String>('instanceType');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.launchTemplateId = registerOutput<String?>('launchTemplateId');
    this.launchTemplateName = registerOutput<String?>('launchTemplateName');
    this.launchTemplateVersion = registerOutput<String?>('launchTemplateVersion');
    this.networkInterfaces = registerOutput<List<EcsInstanceSetNetworkInterface>?>('networkInterfaces');
    this.password = registerOutput<String?>('password');
    this.passwordInherit = registerOutput<bool?>('passwordInherit');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.securityEnhancementStrategy = registerOutput<String?>('securityEnhancementStrategy');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.spotPriceLimit = registerOutput<double>('spotPriceLimit');
    this.spotStrategy = registerOutput<String>('spotStrategy');
    this.systemDiskAutoSnapshotPolicyId = registerOutput<String?>('systemDiskAutoSnapshotPolicyId');
    this.systemDiskCategory = registerOutput<String>('systemDiskCategory');
    this.systemDiskDescription = registerOutput<String?>('systemDiskDescription');
    this.systemDiskName = registerOutput<String?>('systemDiskName');
    this.systemDiskPerformanceLevel = registerOutput<String>('systemDiskPerformanceLevel');
    this.systemDiskSize = registerOutput<int>('systemDiskSize');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uniqueSuffix = registerOutput<bool?>('uniqueSuffix');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
