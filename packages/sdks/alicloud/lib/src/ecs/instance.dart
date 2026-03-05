import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_cpu_options.dart';
import 'instance_image_options.dart';
import 'instance_maintenance_time.dart';
import 'instance_network_interfaces.dart';
import 'instance_state.dart';

/// Provides a ECS instance resource.
///
/// &gt; **NOTE:** Available since v1.0.0
///
/// &gt; **NOTE:** From version v1.213.0, you can specify `launch_template_id` and `launch_template_version` to use a launch template. This eliminates the need to configure a large number of parameters every time you create instances.
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
/// const instanceType = config.get("instanceType") || "ecs.n4.large";
/// const imageId = config.get("imageId") || "ubuntu_18_04_64_20G_alibase_20190624.vhd";
/// // Create a new ECS instance for VPC
/// const vpc = new alicloud.vpc.Network("vpc", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// // Create a new ECS instance for a VPC
/// const group = new alicloud.ecs.SecurityGroup("group", {
///     securityGroupName: name,
///     description: "foo",
///     vpcId: vpc.id,
/// });
/// const key = new alicloud.kms.Key("key", {
///     description: "Hello KMS",
///     pendingWindowInDays: 7,
///     status: "Enabled",
/// });
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
///     availableInstanceType: instanceType,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     vpcId: vpc.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const instance = new alicloud.ecs.Instance("instance", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     securityGroups: [group].map(__item => __item.id),
///     instanceType: instanceType,
///     systemDiskCategory: "cloud_efficiency",
///     systemDiskName: name,
///     systemDiskDescription: "test_foo_system_disk_description",
///     imageId: imageId,
///     instanceName: name,
///     vswitchId: vswitch.id,
///     internetMaxBandwidthOut: 10,
///     dataDisks: [{
///         name: "disk2",
///         size: 20,
///         category: "cloud_efficiency",
///         description: "disk2",
///         encrypted: true,
///         kmsKeyId: key.id,
///     }],
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
/// instance_type = config.get("instanceType")
/// if instance_type is None:
///     instance_type = "ecs.n4.large"
/// image_id = config.get("imageId")
/// if image_id is None:
///     image_id = "ubuntu_18_04_64_20G_alibase_20190624.vhd"
/// # Create a new ECS instance for VPC
/// vpc = alicloud.vpc.Network("vpc",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// # Create a new ECS instance for a VPC
/// group = alicloud.ecs.SecurityGroup("group",
///     security_group_name=name,
///     description="foo",
///     vpc_id=vpc.id)
/// key = alicloud.kms.Key("key",
///     description="Hello KMS",
///     pending_window_in_days=7,
///     status="Enabled")
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch",
///     available_instance_type=instance_type)
/// vswitch = alicloud.vpc.Switch("vswitch",
///     vpc_id=vpc.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// instance = alicloud.ecs.Instance("instance",
///     availability_zone=default.zones[0].id,
///     security_groups=[__item.id for __item in [group]],
///     instance_type=instance_type,
///     system_disk_category="cloud_efficiency",
///     system_disk_name=name,
///     system_disk_description="test_foo_system_disk_description",
///     image_id=image_id,
///     instance_name=name,
///     vswitch_id=vswitch.id,
///     internet_max_bandwidth_out=10,
///     data_disks=[{
///         "name": "disk2",
///         "size": 20,
///         "category": "cloud_efficiency",
///         "description": "disk2",
///         "encrypted": True,
///         "kms_key_id": key.id,
///     }])
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
///     var instanceType = config.Get("instanceType") ?? "ecs.n4.large";
///     var imageId = config.Get("imageId") ?? "ubuntu_18_04_64_20G_alibase_20190624.vhd";
///     // Create a new ECS instance for VPC
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     // Create a new ECS instance for a VPC
///     var @group = new AliCloud.Ecs.SecurityGroup("group", new()
///     {
///         SecurityGroupName = name,
///         Description = "foo",
///         VpcId = vpc.Id,
///     });
///
///     var key = new AliCloud.Kms.Key("key", new()
///     {
///         Description = "Hello KMS",
///         PendingWindowInDays = 7,
///         Status = "Enabled",
///     });
///
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///         AvailableInstanceType = instanceType,
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         VpcId = vpc.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var instance = new AliCloud.Ecs.Instance("instance", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         SecurityGroups = new[]
///         {
///             @group,
///         }.Select(__item => __item.Id).ToList(),
///         InstanceType = instanceType,
///         SystemDiskCategory = "cloud_efficiency",
///         SystemDiskName = name,
///         SystemDiskDescription = "test_foo_system_disk_description",
///         ImageId = imageId,
///         InstanceName = name,
///         VswitchId = vswitch.Id,
///         InternetMaxBandwidthOut = 10,
///         DataDisks = new[]
///         {
///             new AliCloud.Ecs.Inputs.InstanceDataDiskArgs
///             {
///                 Name = "disk2",
///                 Size = 20,
///                 Category = "cloud_efficiency",
///                 Description = "disk2",
///                 Encrypted = true,
///                 KmsKeyId = key.Id,
///             },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
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
/// instanceType := "ecs.n4.large";
/// if param := cfg.Get("instanceType"); param != ""{
/// instanceType = param
/// }
/// imageId := "ubuntu_18_04_64_20G_alibase_20190624.vhd";
/// if param := cfg.Get("imageId"); param != ""{
/// imageId = param
/// }
/// // Create a new ECS instance for VPC
/// vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// // Create a new ECS instance for a VPC
/// group, err := ecs.NewSecurityGroup(ctx, "group", &ecs.SecurityGroupArgs{
/// SecurityGroupName: pulumi.String(name),
/// Description: pulumi.String("foo"),
/// VpcId: vpc.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// key, err := kms.NewKey(ctx, "key", &kms.KeyArgs{
/// Description: pulumi.String("Hello KMS"),
/// PendingWindowInDays: pulumi.Int(7),
/// Status: pulumi.String("Enabled"),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// AvailableInstanceType: pulumi.StringRef(instanceType),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// VpcId: vpc.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/24"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// VswitchName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// _, err = ecs.NewInstance(ctx, "instance", &ecs.InstanceArgs{
/// AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// SecurityGroups: splat0,
/// InstanceType: pulumi.String(instanceType),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// SystemDiskName: pulumi.String(name),
/// SystemDiskDescription: pulumi.String("test_foo_system_disk_description"),
/// ImageId: pulumi.String(imageId),
/// InstanceName: pulumi.String(name),
/// VswitchId: vswitch.ID(),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// DataDisks: ecs.InstanceDataDiskArray{
/// &ecs.InstanceDataDiskArgs{
/// Name: pulumi.String("disk2"),
/// Size: pulumi.Int(20),
/// Category: pulumi.String("cloud_efficiency"),
/// Description: pulumi.String("disk2"),
/// Encrypted: pulumi.Bool(true),
/// KmsKeyId: key.ID(),
/// },
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.inputs.InstanceDataDiskArgs;
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
///         final var instanceType = config.get("instanceType").orElse("ecs.n4.large");
///         final var imageId = config.get("imageId").orElse("ubuntu_18_04_64_20G_alibase_20190624.vhd");
///         // Create a new ECS instance for VPC
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         // Create a new ECS instance for a VPC
///         var group = new SecurityGroup("group", SecurityGroupArgs.builder()
///             .securityGroupName(name)
///             .description("foo")
///             .vpcId(vpc.id())
///             .build());
///
///         var key = new Key("key", KeyArgs.builder()
///             .description("Hello KMS")
///             .pendingWindowInDays(7)
///             .status("Enabled")
///             .build());
///
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .availableInstanceType(instanceType)
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .securityGroups(group.stream().map(element -> element.id()).collect(toList()))
///             .instanceType(instanceType)
///             .systemDiskCategory("cloud_efficiency")
///             .systemDiskName(name)
///             .systemDiskDescription("test_foo_system_disk_description")
///             .imageId(imageId)
///             .instanceName(name)
///             .vswitchId(vswitch.id())
///             .internetMaxBandwidthOut(10)
///             .dataDisks(InstanceDataDiskArgs.builder()
///                 .name("disk2")
///                 .size(20)
///                 .category("cloud_efficiency")
///                 .description("disk2")
///                 .encrypted(true)
///                 .kmsKeyId(key.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing ecs-instance module
/// to create several ECS instances one-click.
///
/// ## Import
///
/// Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/instance:Instance example i-abc12345678
/// ```
class Instance extends pulumi.CustomResource {
  /// It has been deprecated from version "1.7.0". Setting "internet_max_bandwidth_out" larger than 0 can allocate a public ip address for an instance.
  late final pulumi.Output<bool?> allocatePublicIp;
  /// The automatic release time of the `PostPaid` instance.
  /// The time follows the ISO 8601 standard and is in UTC time. Format: yyyy-MM-ddTHH:mm:ssZ. It must be at least half an hour later than the current time and less than 3 years since the current time.
  /// Setting it to null can cancel automatic release feature, and the ECS instance will not be released automatically.
  late final pulumi.Output<String?> autoReleaseTime;
  /// Auto renewal period of an instance, in the unit of month. It is valid when `instance_charge_type` is `PrePaid`. Default to 1. Valid value:
  /// - [1, 2, 3, 6, 12] when `period_unit` in "Month"
  /// - [1, 2, 3] when `period_unit` in "Week"
  late final pulumi.Output<int?> autoRenewPeriod;
  /// The Zone to start the instance in. It is ignored and will be computed when set `vswitch_id`.
  late final pulumi.Output<String> availabilityZone;
  /// The number of vCPUs.
  late final pulumi.Output<int> cpu;
  /// The options of cpu. See `cpu_options` below.
  ///
  /// &gt; **NOTE:** System disk category `cloud` has been outdated and it only can be used none I/O Optimized ECS instances. Recommend `cloud_efficiency` and `cloud_ssd` disk.
  ///
  /// &gt; **NOTE:** From version 1.5.0, instance's charge type can be changed to `PrePaid` by specifying `period` and `period_unit`, but it is irreversible.
  ///
  /// &gt; **NOTE:** From version 1.5.0, instance's private IP address can be specified when creating VPC network instance.
  ///
  /// &gt; **NOTE:** From version 1.5.0, instance's vswitch and private IP can be changed in the same availability zone. When they are changed, the instance will reboot to make the change take effect.
  ///
  /// &gt; **NOTE:** From version 1.7.0, setting "internet_max_bandwidth_out" larger than 0 can allocate a public IP for an instance.
  /// Setting "internet_max_bandwidth_out" to 0 can release allocated public IP for VPC instance(For Classic instnace, its public IP cannot be release once it allocated, even thougth its bandwidth out is 0).
  /// However, at present, 'PrePaid' instance cannot narrow its max bandwidth out when its 'internet_charge_type' is "PayByBandwidth".
  ///
  /// &gt; **NOTE:** From version 1.7.0, instance's type can be changed. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<InstanceCpuOptions> cpuOptions;
  /// (Available since v1.232.0) The time when the instance was created.
  late final pulumi.Output<String> createTime;
  /// Performance mode of the t5 burstable instance. Valid values: 'Standard', 'Unlimited'.
  late final pulumi.Output<String> creditSpecification;
  /// The list of data disks created with instance. See `data_disks` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;
  /// The ID of the dedicated host on which to create the instance. If you set the DedicatedHostId parameter, the `spot_strategy` and `spot_price_limit` parameters cannot be set. This is because preemptible instances cannot be created on dedicated hosts.
  late final pulumi.Output<String?> dedicatedHostId;
  /// Whether enable the deletion protection or not. It does not work when the instance is spot. Default value: `false`.
  late final pulumi.Output<bool?> deletionProtection;
  /// The group number of the instance in a deployment set when the deployment set is use.
  late final pulumi.Output<String> deploymentSetGroupNo;
  /// The ID of the deployment set to which to deploy the instance. **NOTE:** From version 1.176.0, instance's deploymentSetId can be removed when 'deployment_set_id' = "".
  late final pulumi.Output<String?> deploymentSetId;
  /// Description of the instance, This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  late final pulumi.Output<String> description;
  /// Specifies whether to send a dry-run request. Default to false.
  /// - true: Only a dry-run request is sent and no instance is created. The system checks whether the required parameters are set, and validates the request format, service permissions, and available ECS instances. If the validation fails, the corresponding error code is returned. If the validation succeeds, the `DryRunOperation` error code is returned.
  /// - false: A request is sent. If the validation succeeds, the instance is created.
  late final pulumi.Output<bool?> dryRun;
  /// Specifies whether to enable the Jumbo Frames feature for the instance. Valid values: `true`, `false`.
  late final pulumi.Output<bool> enableJumboFrame;
  /// (Available since v1.232.0) The expiration time of the instance.
  late final pulumi.Output<String> expiredTime;
  /// If it is true, the `PrePaid` instance will be change to `PostPaid` and then deleted forcibly.
  /// However, because of changing instance charge type has CPU core count quota limitation, so strongly recommand that "Don't modify instance charge type frequentlly in one month".
  late final pulumi.Output<bool?> forceDelete;
  /// Host name of the ECS, which is a string of at least two characters. “hostname” cannot start or end with “.” or “-“. In addition, two or more consecutive “.” or “-“ symbols are not allowed. On Windows, the host name can contain a maximum of 15 characters, which can be a combination of uppercase/lowercase letters, numerals, and “-“. The host name cannot contain dots (“.”) or contain only numeric characters. When it is changed, the instance will reboot to make the change take effect.
  /// On other OSs such as Linux, the host name can contain a maximum of 64 characters, which can be segments separated by dots (“.”), where each segment can contain uppercase/lowercase letters, numerals, or “_“. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<String> hostName;
  /// The ID of the Elastic High Performance Computing (E-HPC) cluster to which to assign the instance.
  late final pulumi.Output<String?> hpcClusterId;
  /// Specifies whether to enable the access channel for instance metadata. Valid values: `enabled`, `disabled`. Default value: `enabled`.
  late final pulumi.Output<String> httpEndpoint;
  /// **NOTE:**: This parameter is not available for use yet. The HTTP PUT response hop limit for accessing instance metadata. Valid values: 1 to 64. Default value: 1.
  late final pulumi.Output<int> httpPutResponseHopLimit;
  /// Specifies whether to forcefully use the security-enhanced mode (IMDSv2) to access instance metadata. Default value: optional. Valid values:
  /// - optional: does not forcefully use the security-enhanced mode (IMDSv2).
  /// - required: forcefully uses the security-enhanced mode (IMDSv2). After you set this parameter to required, you cannot access instance metadata in normal mode.
  late final pulumi.Output<String> httpTokens;
  /// The Image to use for the instance. ECS instance's image can be replaced via changing `image_id`. When it is changed, the instance will reboot to make the change take effect. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `image_id`.
  late final pulumi.Output<String> imageId;
  /// The options of images. See `image_options` below.
  late final pulumi.Output<InstanceImageOptions> imageOptions;
  /// Whether to change instance disks charge type when changing instance charge type.
  late final pulumi.Output<bool?> includeDataDisks;
  /// Valid values are `PrePaid`, `PostPaid`. **NOTE:** From version 1.243.0, the default value `PostPaid` will be removed.
  /// **NOTE:** Since 1.9.6, it can be changed each other between `PostPaid` and `PrePaid`.
  /// However, since [some limitation about CPU core count in one month](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/modifyinstancechargetype),
  /// there strongly recommends that `Don't change instance_charge_type frequentlly in one month`.
  late final pulumi.Output<String> instanceChargeType;
  /// The name of the ECS. This instance_name can have a string of 2 to 128 characters, must contain only alphanumeric characters or hyphens, such as "-",".","_", and must not begin with a hyphen, and must not begin with http:// or https://. **NOTE:** From version 1.243.0, the default value `ECS-Instance` will be removed.
  late final pulumi.Output<String> instanceName;
  /// The type of instance to start. When it is changed, the instance will reboot to make the change take effect. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `instance_type`.
  late final pulumi.Output<String> instanceType;
  /// Internet charge type of the instance, Valid values are `PayByBandwidth`, `PayByTraffic`. At present, 'PrePaid' instance cannot change the value to "PayByBandwidth" from "PayByTraffic". **NOTE:** From version 1.243.0, the default value `PayByTraffic` will be removed.
  late final pulumi.Output<String> internetChargeType;
  /// Maximum incoming bandwidth from the public network, measured in Mbps (Mega bit per second). Value range: [1, 200]. If this value is not specified, then automatically sets it to 200 Mbps.
  late final pulumi.Output<int> internetMaxBandwidthIn;
  /// Maximum outgoing bandwidth to the public network, measured in Mbps (Mega bit per second). Value range:  [0, 100]. **NOTE:** From version 1.243.0, the default value `0` will be removed.
  late final pulumi.Output<int> internetMaxBandwidthOut;
  /// The number of IPv6 addresses to randomly generate for the primary ENI. Valid values: 1 to 10. **NOTE:** You cannot specify both the `ipv6_addresses` and `ipv6_address_count` parameters.
  late final pulumi.Output<int> ipv6AddressCount;
  /// A list of IPv6 address to be assigned to the primary ENI. Support up to 10. **NOTE:** From version 1.241.0, `ipv6_addresses` can be modified.
  late final pulumi.Output<List<String>> ipv6Addresses;
  /// Whether to use outdated instance type.
  late final pulumi.Output<bool?> isOutdated;
  /// The name of key pair that can login ECS instance successfully without password. If it is specified, the password would be invalid. **NOTE:** From version 1.268.0, `key_name` can be modified. If you want to use `key_name`, We recommend you to use the resource alicloud_ecs_key_pair_attachment.
  /// &gt; **NOTE:** When modifying `key_name`, if the instance status is `Running`, the ECS instance will be rebooted; If the instance status is `Stopped`, the ECS instance status will be changed to `Running`.
  late final pulumi.Output<String> keyName;
  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating an instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The ID of the launch template. For more information, see [DescribeLaunchTemplates](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-describelaunchtemplates).To use a launch template to create an instance, you must use the `launch_template_id` or `launch_template_name` parameter to specify the launch template.
  late final pulumi.Output<String?> launchTemplateId;
  /// The name of the launch template.
  late final pulumi.Output<String?> launchTemplateName;
  /// The version of the launch template. If you set `launch_template_id` or `launch_template_name` parameter but do not set the version number of the launch template, the default template version is used.
  late final pulumi.Output<String?> launchTemplateVersion;
  /// The maintenance action. Valid values: `Stop`, `AutoRecover` and `AutoRedeploy`.
  /// * `Stop` : stops the instance.
  /// * `AutoRecover` : automatically recovers the instance.
  /// * `AutoRedeploy` : fails the instance over, which may cause damage to the data disks attached to the instance.
  late final pulumi.Output<String> maintenanceAction;
  /// Specifies whether to send an event notification before instance shutdown. Valid values: `true`, `false`. Default value: `false`.
  late final pulumi.Output<bool?> maintenanceNotify;
  /// The time of maintenance. See `maintenance_time` below.
  late final pulumi.Output<InstanceMaintenanceTime?> maintenanceTime;
  /// The memory size of the instance. Unit: MiB.
  late final pulumi.Output<int> memory;
  /// The index of the network card for Primary ENI.
  late final pulumi.Output<int?> networkCardIndex;
  /// The ID of the Primary ENI.
  late final pulumi.Output<String> networkInterfaceId;
  /// The communication mode of the Primary ENI. Default value: `Standard`. Valid values:
  /// - `Standard`: Uses the TCP communication mode.
  /// - `HighPerformance`: Uses the remote direct memory access (RDMA) communication mode with Elastic RDMA Interface (ERI) enabled.
  late final pulumi.Output<String> networkInterfaceTrafficMode;
  /// The list of network interfaces created with instance. See `network_interfaces` below.
  late final pulumi.Output<InstanceNetworkInterfaces> networkInterfaces;
  /// The operation type. It is valid when `instance_charge_type` is `PrePaid`. Default value: `upgrade`. Valid values: `upgrade`, `downgrade`. **NOTE:**  When the new instance type specified by the `instance_type` parameter has lower specifications than the current instance type, you must set `operator_type` to `downgrade`.
  late final pulumi.Output<String?> operatorType;
  /// The name of the operating system of the instance.
  late final pulumi.Output<String> osName;
  /// The type of the operating system of the instance.
  late final pulumi.Output<String> osType;
  /// Password to an instance is a string of 8 to 30 characters. It must contain uppercase/lowercase letters and numerals, but cannot contain special symbols. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<String?> password;
  /// Specifies whether to use the password preset in the image. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> passwordInherit;
  /// The duration that you will buy the resource, in month. It is valid and required when `instance_charge_type` is `PrePaid`. Valid values:
  /// - [1-9, 12, 24, 36, 48, 60] when `period_unit` in "Month"
  /// - [1-3] when `period_unit` in "Week"
  ///
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int> period;
  /// The duration unit that you will buy the resource. It is valid when `instance_charge_type` is 'PrePaid'. Valid value: ["Week", "Month"]. Default to "Month".
  late final pulumi.Output<String?> periodUnit;
  /// The primary private IP address of the ENI.
  late final pulumi.Output<String> primaryIpAddress;
  /// Instance private IP address can be specified when you creating new instance. It is valid when `vswitch_id` is specified. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<String> privateIp;
  /// The ID of the private pool.
  late final pulumi.Output<String> privatePoolOptionsId;
  /// The type of the private pool. Default value: `None`. Valid values:
  /// - `Open`: Open private pool.
  /// - `Target`: Specified private pool. **NOTE:** If `private_pool_options_match_criteria` is set to `Target`, `private_pool_options_id` is required.
  /// - `None`: No private pool. The capacity in private pools is not used.
  late final pulumi.Output<String> privatePoolOptionsMatchCriteria;
  /// The instance public ip.
  late final pulumi.Output<String> publicIp;
  /// The number of queues supported by the ERI.
  late final pulumi.Output<int?> queuePairNumber;
  /// Whether to renew an ECS instance automatically or not. It is valid when `instance_charge_type` is `PrePaid`. Default to "Normal". Valid values:
  /// - `AutoRenewal`: Enable auto renewal.
  /// - `Normal`: Disable auto renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  late final pulumi.Output<String?> renewalStatus;
  /// The Id of resource group which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The name of the Resource Access Management (RAM) role. **NOTE:** From version 1.250.0, If you want to use `role_name`, We recommend you to use the resource alicloud_ecs_ram_role_attachment.
  late final pulumi.Output<String> roleName;
  /// The number of private IP addresses to be automatically assigned from within the CIDR block of the vswitch. **NOTE:** To assign secondary private IP addresses, you must specify `secondary_private_ips` or `secondary_private_ip_address_count` but not both.
  late final pulumi.Output<int> secondaryPrivateIpAddressCount;
  /// A list of Secondary private IP addresses which is selected from within the CIDR block of the vSwitch.
  late final pulumi.Output<List<String>> secondaryPrivateIps;
  /// The security enhancement strategy.
  /// - Active: Enable security enhancement strategy, it only works on system images.
  /// - Deactive: Disable security enhancement strategy, it works on all images.
  late final pulumi.Output<String> securityEnhancementStrategy;
  /// A list of security group ids to associate with. If you do not use `launch_template_id` or `launch_template_name` to specify a launch template, you must specify `security_groups`.
  late final pulumi.Output<List<String>> securityGroups;
  /// The retention time of the preemptive instance in hours. Valid values: `0`, `1`, `2`, `3`, `4`, `5`, `6`. Retention duration 2~6 is under invitation test, please submit a work order if you need to open. If the value is `0`, the mode is no protection period. Default value is `1`.
  late final pulumi.Output<int> spotDuration;
  /// The hourly price threshold of a instance, and it takes effect only when parameter 'spot_strategy' is 'SpotWithPriceLimit'. Three decimals is allowed at most.
  late final pulumi.Output<double> spotPriceLimit;
  /// The spot strategy of a Pay-As-You-Go instance, and it takes effect only when parameter `instance_charge_type` is 'PostPaid'. Value range:
  /// - NoSpot: A regular Pay-As-You-Go instance.
  /// - SpotWithPriceLimit: A price threshold for a spot instance
  /// - SpotAsPriceGo: A price that is based on the highest Pay-As-You-Go instance
  ///
  /// Default to NoSpot. Note: Currently, the spot instance only supports domestic site account.
  late final pulumi.Output<String> spotStrategy;
  /// (Available since v1.232.0) The time when the instance was last started.
  late final pulumi.Output<String> startTime;
  /// The instance status. Valid values: ["Running", "Stopped"]. You can control the instance start and stop through this parameter. Default to `Running`.
  late final pulumi.Output<String> status;
  /// The stop mode of the pay-as-you-go instance. Valid values: `StopCharging`,`KeepCharging`, `Not-applicable`. Default value: If the prerequisites required for enabling the economical mode are met, and you have enabled this mode in the ECS console, the default value is `StopCharging`. For more information, see "Enable the economical mode" in [Economical mode](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/economical-mode). Otherwise, the default value is `KeepCharging`. **Note:** `Not-applicable`: Economical mode is not applicable to the instance.`
  /// * `KeepCharging`: standard mode. Billing of the instance continues after the instance is stopped, and resources are retained for the instance.
  /// * `StopCharging`: economical mode. Billing of some resources of the instance stops after the instance is stopped. When the instance is stopped, its resources such as vCPUs, memory, and public IP address are released. You may be unable to restart the instance if some types of resources are out of stock in the current region.
  late final pulumi.Output<String> stoppedMode;
  /// The ID of the automatic snapshot policy applied to the system disk. **NOTE:** If you want to use `system_disk_auto_snapshot_policy_id`, We recommend you to use the resource alicloud_ecs_auto_snapshot_policy_attachment.
  late final pulumi.Output<String> systemDiskAutoSnapshotPolicyId;
  /// Specifies whether to enable the performance burst feature for the system disk. Valid values:
  late final pulumi.Output<bool?> systemDiskBurstingEnabled;
  /// Valid values are `ephemeral_ssd`, `cloud_efficiency`, `cloud_ssd`, `cloud_essd`, `cloud`, `cloud_auto`, `cloud_essd_entry`. only is used to some none I/O optimized instance. Valid values `cloud_auto` Available since v1.184.0.
  late final pulumi.Output<String> systemDiskCategory;
  /// The description of the system disk. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String> systemDiskDescription;
  /// The algorithm to be used to encrypt the system disk. Valid values are `aes-256`, `sm4-128`. Default value is `aes-256`.
  late final pulumi.Output<String?> systemDiskEncryptAlgorithm;
  /// Specifies whether to encrypt the system disk. Valid values: `true`,`false`. Default value: `false`.
  late final pulumi.Output<bool> systemDiskEncrypted;
  /// (Available since v1.210.0) The ID of system disk.
  late final pulumi.Output<String> systemDiskId;
  /// The ID of the Key Management Service (KMS) key to be used for the system disk.
  late final pulumi.Output<String> systemDiskKmsKeyId;
  /// The name of the system disk. The name must be 2 to 128 characters in length and can contain letters, digits, periods (.), colons (:), underscores (_), and hyphens (-). It must start with a letter and cannot start with http:// or https://.
  late final pulumi.Output<String> systemDiskName;
  /// The performance level of the ESSD used as the system disk, Valid values: `PL0`, `PL1`, `PL2`, `PL3`, Default to `PL1`;For more information about ESSD, See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/122389.htm).
  late final pulumi.Output<String> systemDiskPerformanceLevel;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk to use as the system disk.
  late final pulumi.Output<int?> systemDiskProvisionedIops;
  /// Size of the system disk, measured in GiB. Value range: [20, 500]. The specified value must be equal to or greater than max{20, Imagesize}. Default value: max{40, ImageSize}.
  late final pulumi.Output<int> systemDiskSize;
  /// The ID of the dedicated block storage cluster. If you want to use disks in a dedicated block storage cluster as system disks when you create instances, you must specify this parameter. For more information about dedicated block storage clusters.
  late final pulumi.Output<String?> systemDiskStorageClusterId;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// User-defined data to customize the startup behaviors of an ECS instance and to pass data into an ECS instance.
  /// It supports to setting a base64-encoded value, and it is the recommended usage.
  /// From version 1.60.0, it can be updated in-place. If updated, the instance will reboot to make the change take effect.
  /// Note: Not all changes will take effect, and it depends on [cloud-init module type](https://cloudinit.readthedocs.io/en/latest/topics/modules.html).
  late final pulumi.Output<String?> userData;
  /// A mapping of tags to assign to the devices created by the instance at launch time.
  /// - Key: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to `128` characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>> volumeTags;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The virtual switch ID to launch in VPC. This parameter must be set unless you can create classic network instances. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_ecs_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatePublicIp = registerOutput<bool?>('allocatePublicIp');
    autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    availabilityZone = registerOutput<String>('availabilityZone');
    cpu = registerOutput<int>('cpu');
    cpuOptions = registerOutput<InstanceCpuOptions>('cpuOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    creditSpecification = registerOutput<String>('creditSpecification');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    dedicatedHostId = registerOutput<String?>('dedicatedHostId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    deploymentSetGroupNo = registerOutput<String>('deploymentSetGroupNo');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    description = registerOutput<String>('description');
    dryRun = registerOutput<bool?>('dryRun');
    enableJumboFrame = registerOutput<bool>('enableJumboFrame');
    expiredTime = registerOutput<String>('expiredTime');
    forceDelete = registerOutput<bool?>('forceDelete');
    hostName = registerOutput<String>('hostName');
    hpcClusterId = registerOutput<String?>('hpcClusterId');
    httpEndpoint = registerOutput<String>('httpEndpoint');
    httpPutResponseHopLimit = registerOutput<int>('httpPutResponseHopLimit');
    httpTokens = registerOutput<String>('httpTokens');
    imageId = registerOutput<String>('imageId');
    imageOptions = registerOutput<InstanceImageOptions>('imageOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceImageOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includeDataDisks = registerOutput<bool?>('includeDataDisks');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    internetChargeType = registerOutput<String>('internetChargeType');
    internetMaxBandwidthIn = registerOutput<int>('internetMaxBandwidthIn');
    internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    isOutdated = registerOutput<bool?>('isOutdated');
    keyName = registerOutput<String>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    launchTemplateId = registerOutput<String?>('launchTemplateId');
    launchTemplateName = registerOutput<String?>('launchTemplateName');
    launchTemplateVersion = registerOutput<String?>('launchTemplateVersion');
    maintenanceAction = registerOutput<String>('maintenanceAction');
    maintenanceNotify = registerOutput<bool?>('maintenanceNotify');
    maintenanceTime = registerOutput<InstanceMaintenanceTime?>('maintenanceTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenanceTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memory = registerOutput<int>('memory');
    networkCardIndex = registerOutput<int?>('networkCardIndex');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    networkInterfaceTrafficMode = registerOutput<String>('networkInterfaceTrafficMode');
    networkInterfaces = registerOutput<InstanceNetworkInterfaces>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceNetworkInterfaces.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operatorType = registerOutput<String?>('operatorType');
    osName = registerOutput<String>('osName');
    osType = registerOutput<String>('osType');
    password = registerOutput<String?>('password');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    period = registerOutput<int>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    primaryIpAddress = registerOutput<String>('primaryIpAddress');
    privateIp = registerOutput<String>('privateIp');
    privatePoolOptionsId = registerOutput<String>('privatePoolOptionsId');
    privatePoolOptionsMatchCriteria = registerOutput<String>('privatePoolOptionsMatchCriteria');
    publicIp = registerOutput<String>('publicIp');
    queuePairNumber = registerOutput<int?>('queuePairNumber');
    renewalStatus = registerOutput<String?>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    roleName = registerOutput<String>('roleName');
    secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    secondaryPrivateIps = registerOutput<List<String>>('secondaryPrivateIps');
    securityEnhancementStrategy = registerOutput<String>('securityEnhancementStrategy');
    securityGroups = registerOutput<List<String>>('securityGroups');
    spotDuration = registerOutput<int>('spotDuration');
    spotPriceLimit = registerOutput<double>('spotPriceLimit');
    spotStrategy = registerOutput<String>('spotStrategy');
    startTime = registerOutput<String>('startTime');
    status = registerOutput<String>('status');
    stoppedMode = registerOutput<String>('stoppedMode');
    systemDiskAutoSnapshotPolicyId = registerOutput<String>('systemDiskAutoSnapshotPolicyId');
    systemDiskBurstingEnabled = registerOutput<bool?>('systemDiskBurstingEnabled');
    systemDiskCategory = registerOutput<String>('systemDiskCategory');
    systemDiskDescription = registerOutput<String>('systemDiskDescription');
    systemDiskEncryptAlgorithm = registerOutput<String?>('systemDiskEncryptAlgorithm');
    systemDiskEncrypted = registerOutput<bool>('systemDiskEncrypted');
    systemDiskId = registerOutput<String>('systemDiskId');
    systemDiskKmsKeyId = registerOutput<String>('systemDiskKmsKeyId');
    systemDiskName = registerOutput<String>('systemDiskName');
    systemDiskPerformanceLevel = registerOutput<String>('systemDiskPerformanceLevel');
    systemDiskProvisionedIops = registerOutput<int?>('systemDiskProvisionedIops');
    systemDiskSize = registerOutput<int>('systemDiskSize');
    systemDiskStorageClusterId = registerOutput<String?>('systemDiskStorageClusterId');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String?>('userData');
    volumeTags = registerOutput<Map<String, String>>('volumeTags');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allocatePublicIp = registerOutput<bool?>('allocatePublicIp');
    autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    availabilityZone = registerOutput<String>('availabilityZone');
    cpu = registerOutput<int>('cpu');
    cpuOptions = registerOutput<InstanceCpuOptions>('cpuOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceCpuOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    creditSpecification = registerOutput<String>('creditSpecification');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    dedicatedHostId = registerOutput<String?>('dedicatedHostId');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    deploymentSetGroupNo = registerOutput<String>('deploymentSetGroupNo');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    description = registerOutput<String>('description');
    dryRun = registerOutput<bool?>('dryRun');
    enableJumboFrame = registerOutput<bool>('enableJumboFrame');
    expiredTime = registerOutput<String>('expiredTime');
    forceDelete = registerOutput<bool?>('forceDelete');
    hostName = registerOutput<String>('hostName');
    hpcClusterId = registerOutput<String?>('hpcClusterId');
    httpEndpoint = registerOutput<String>('httpEndpoint');
    httpPutResponseHopLimit = registerOutput<int>('httpPutResponseHopLimit');
    httpTokens = registerOutput<String>('httpTokens');
    imageId = registerOutput<String>('imageId');
    imageOptions = registerOutput<InstanceImageOptions>('imageOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceImageOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    includeDataDisks = registerOutput<bool?>('includeDataDisks');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    internetChargeType = registerOutput<String>('internetChargeType');
    internetMaxBandwidthIn = registerOutput<int>('internetMaxBandwidthIn');
    internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    ipv6AddressCount = registerOutput<int>('ipv6AddressCount');
    ipv6Addresses = registerOutput<List<String>>('ipv6Addresses');
    isOutdated = registerOutput<bool?>('isOutdated');
    keyName = registerOutput<String>('keyName');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    launchTemplateId = registerOutput<String?>('launchTemplateId');
    launchTemplateName = registerOutput<String?>('launchTemplateName');
    launchTemplateVersion = registerOutput<String?>('launchTemplateVersion');
    maintenanceAction = registerOutput<String>('maintenanceAction');
    maintenanceNotify = registerOutput<bool?>('maintenanceNotify');
    maintenanceTime = registerOutput<InstanceMaintenanceTime?>('maintenanceTime', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMaintenanceTime.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memory = registerOutput<int>('memory');
    networkCardIndex = registerOutput<int?>('networkCardIndex');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    networkInterfaceTrafficMode = registerOutput<String>('networkInterfaceTrafficMode');
    networkInterfaces = registerOutput<InstanceNetworkInterfaces>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceNetworkInterfaces.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operatorType = registerOutput<String?>('operatorType');
    osName = registerOutput<String>('osName');
    osType = registerOutput<String>('osType');
    password = registerOutput<String?>('password');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    period = registerOutput<int>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    primaryIpAddress = registerOutput<String>('primaryIpAddress');
    privateIp = registerOutput<String>('privateIp');
    privatePoolOptionsId = registerOutput<String>('privatePoolOptionsId');
    privatePoolOptionsMatchCriteria = registerOutput<String>('privatePoolOptionsMatchCriteria');
    publicIp = registerOutput<String>('publicIp');
    queuePairNumber = registerOutput<int?>('queuePairNumber');
    renewalStatus = registerOutput<String?>('renewalStatus');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    roleName = registerOutput<String>('roleName');
    secondaryPrivateIpAddressCount = registerOutput<int>('secondaryPrivateIpAddressCount');
    secondaryPrivateIps = registerOutput<List<String>>('secondaryPrivateIps');
    securityEnhancementStrategy = registerOutput<String>('securityEnhancementStrategy');
    securityGroups = registerOutput<List<String>>('securityGroups');
    spotDuration = registerOutput<int>('spotDuration');
    spotPriceLimit = registerOutput<double>('spotPriceLimit');
    spotStrategy = registerOutput<String>('spotStrategy');
    startTime = registerOutput<String>('startTime');
    status = registerOutput<String>('status');
    stoppedMode = registerOutput<String>('stoppedMode');
    systemDiskAutoSnapshotPolicyId = registerOutput<String>('systemDiskAutoSnapshotPolicyId');
    systemDiskBurstingEnabled = registerOutput<bool?>('systemDiskBurstingEnabled');
    systemDiskCategory = registerOutput<String>('systemDiskCategory');
    systemDiskDescription = registerOutput<String>('systemDiskDescription');
    systemDiskEncryptAlgorithm = registerOutput<String?>('systemDiskEncryptAlgorithm');
    systemDiskEncrypted = registerOutput<bool>('systemDiskEncrypted');
    systemDiskId = registerOutput<String>('systemDiskId');
    systemDiskKmsKeyId = registerOutput<String>('systemDiskKmsKeyId');
    systemDiskName = registerOutput<String>('systemDiskName');
    systemDiskPerformanceLevel = registerOutput<String>('systemDiskPerformanceLevel');
    systemDiskProvisionedIops = registerOutput<int?>('systemDiskProvisionedIops');
    systemDiskSize = registerOutput<int>('systemDiskSize');
    systemDiskStorageClusterId = registerOutput<String?>('systemDiskStorageClusterId');
    tags = registerOutput<Map<String, String>?>('tags');
    userData = registerOutput<String?>('userData');
    volumeTags = registerOutput<Map<String, String>>('volumeTags');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
