import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_attachment_args.dart';

/// Provides a RAM role attachment resource to bind role for several ECS instances.
///
/// > **NOTE:** Deprecated since v1.250.0.
///
/// > **DEPRECATED:** This resource has been deprecated from version `1.250.0`. Please use new resource alicloud_ecs_ram_role_attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 2,
///     memorySize: 8,
///     instanceTypeFamily: "ecs.g6",
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "ecsInstanceVPCExample";
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultSecurityGroupRule = new alicloud.ecs.SecurityGroupRule("default", {
///     type: "ingress",
///     ipProtocol: "tcp",
///     nicType: "intranet",
///     policy: "accept",
///     portRange: "22/22",
///     priority: 1,
///     securityGroupId: defaultSecurityGroup.id,
///     cidrIp: "172.16.0.0/24",
/// });
/// const foo = new alicloud.ecs.Instance("foo", {
///     vswitchId: defaultSwitch.id,
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     systemDiskCategory: "cloud_efficiency",
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 5,
///     securityGroups: [defaultSecurityGroup.id],
///     instanceName: name,
/// });
/// const role = new alicloud.ram.Role("role", {
///     name: "terraform-example",
///     document: `  {
///     \\"Statement\\": [
///       {
///         \\"Action\\": \\"sts:AssumeRole\\",
///         \\"Effect\\": \\"Allow\\",
///         \\"Principal\\": {
///           \\"Service\\": [
///             \\"ecs.aliyuncs.com\\"
///           ]
///         }
///       }
///     ],
///     \\"Version\\": \\"1\\"
///   }
///
/// `,
///     description: "this is a test",
///     force: true,
/// });
/// const attach = new alicloud.ram.RoleAttachment("attach", {
///     roleName: role.name,
///     instanceIds: [foo].map(__item => __item.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=2,
///     memory_size=8,
///     instance_type_family="ecs.g6")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "ecsInstanceVPCExample"
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name=name,
///     vpc_id=default_network.id)
/// default_security_group_rule = alicloud.ecs.SecurityGroupRule("default",
///     type="ingress",
///     ip_protocol="tcp",
///     nic_type="intranet",
///     policy="accept",
///     port_range="22/22",
///     priority=1,
///     security_group_id=default_security_group.id,
///     cidr_ip="172.16.0.0/24")
/// foo = alicloud.ecs.Instance("foo",
///     vswitch_id=default_switch.id,
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     system_disk_category="cloud_efficiency",
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=5,
///     security_groups=[default_security_group.id],
///     instance_name=name)
/// role = alicloud.ram.Role("role",
///     name="terraform-example",
///     document="""  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///
/// """,
///     description="this is a test",
///     force=True)
/// attach = alicloud.ram.RoleAttachment("attach",
///     role_name=role.name,
///     instance_ids=[__item.id for __item in [foo]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 2,
///         MemorySize = 8,
///         InstanceTypeFamily = "ecs.g6",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "ecsInstanceVPCExample";
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultSecurityGroupRule = new AliCloud.Ecs.SecurityGroupRule("default", new()
///     {
///         Type = "ingress",
///         IpProtocol = "tcp",
///         NicType = "intranet",
///         Policy = "accept",
///         PortRange = "22/22",
///         Priority = 1,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         CidrIp = "172.16.0.0/24",
///     });
///
///     var foo = new AliCloud.Ecs.Instance("foo", new()
///     {
///         VswitchId = defaultSwitch.Id,
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 5,
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         InstanceName = name,
///     });
///
///     var role = new AliCloud.Ram.Role("role", new()
///     {
///         Name = "terraform-example",
///         Document = @"  {
///     \""Statement\"": [
///       {
///         \""Action\"": \""sts:AssumeRole\"",
///         \""Effect\"": \""Allow\"",
///         \""Principal\"": {
///           \""Service\"": [
///             \""ecs.aliyuncs.com\""
///           ]
///         }
///       }
///     ],
///     \""Version\"": \""1\""
///   }
///
/// ",
///         Description = "this is a test",
///         Force = true,
///     });
///
///     var attach = new AliCloud.Ram.RoleAttachment("attach", new()
///     {
///         RoleName = role.Name,
///         InstanceIds = new[]
///         {
///             foo,
///         }.Select(__item => __item.Id).ToList(),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// CpuCoreCount: pulumi.IntRef(2),
/// MemorySize: pulumi.Float64Ref(8),
/// InstanceTypeFamily: pulumi.StringRef("ecs.g6"),
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
/// cfg := config.New(ctx, "")
/// name := "ecsInstanceVPCExample";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("172.16.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/24"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// VswitchName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// SecurityGroupName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewSecurityGroupRule(ctx, "default", &ecs.SecurityGroupRuleArgs{
/// Type: pulumi.String("ingress"),
/// IpProtocol: pulumi.String("tcp"),
/// NicType: pulumi.String("intranet"),
/// Policy: pulumi.String("accept"),
/// PortRange: pulumi.String("22/22"),
/// Priority: pulumi.Int(1),
/// SecurityGroupId: defaultSecurityGroup.ID(),
/// CidrIp: pulumi.String("172.16.0.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// foo, err := ecs.NewInstance(ctx, "foo", &ecs.InstanceArgs{
/// VswitchId: defaultSwitch.ID(),
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(5),
/// SecurityGroups: pulumi.StringArray{
/// defaultSecurityGroup.ID(),
/// },
/// InstanceName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// role, err := ram.NewRole(ctx, "role", &ram.RoleArgs{
/// Name: pulumi.String("terraform-example"),
/// Document: pulumi.String(`  {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///
/// `),
/// Description: pulumi.String("this is a test"),
/// Force: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// _, err = ram.NewRoleAttachment(ctx, "attach", &ram.RoleAttachmentArgs{
/// RoleName: role.Name,
/// InstanceIds: splat0,
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
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.ram.RoleAttachment;
/// import com.pulumi.alicloud.ram.RoleAttachmentArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(2)
///             .memorySize(8)
///             .instanceTypeFamily("ecs.g6")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var name = config.get("name").orElse("ecsInstanceVPCExample");
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultSecurityGroupRule = new SecurityGroupRule("defaultSecurityGroupRule", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .ipProtocol("tcp")
///             .nicType("intranet")
///             .policy("accept")
///             .portRange("22/22")
///             .priority(1)
///             .securityGroupId(defaultSecurityGroup.id())
///             .cidrIp("172.16.0.0/24")
///             .build());
///
///         var foo = new Instance("foo", InstanceArgs.builder()
///             .vswitchId(defaultSwitch.id())
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(5)
///             .securityGroups(defaultSecurityGroup.id())
///             .instanceName(name)
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .name("terraform-example")
///             .document("""
///   {
///     \"Statement\": [
///       {
///         \"Action\": \"sts:AssumeRole\",
///         \"Effect\": \"Allow\",
///         \"Principal\": {
///           \"Service\": [
///             \"ecs.aliyuncs.com\"
///           ]
///         }
///       }
///     ],
///     \"Version\": \"1\"
///   }
///
///             """)
///             .description("this is a test")
///             .force(true)
///             .build());
///
///         var attach = new RoleAttachment("attach", RoleAttachmentArgs.builder()
///             .roleName(role.name())
///             .instanceIds(foo.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
class RoleAttachment extends pulumi.CustomResource {
  /// The list of ECS instance's IDs.
  late final pulumi.Output<List<String>> instanceIds;
  /// The name of role used to bind. This name can have a string of 1 to 64 characters, must contain only alphanumeric characters or hyphens, such as "-", "_", and must not begin with a hyphen.
  late final pulumi.Output<String> roleName;

  /// Creates a new [RoleAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleAttachment]. {@macro pulumi_ram_role_attachment_role_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleAttachment(
    String name, {
    RoleAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ram/roleAttachment:RoleAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceIds = registerOutput<List<String>>('instanceIds');
    this.roleName = registerOutput<String>('roleName');
  }
}
