import 'package:pulumi/pulumi.dart' as pulumi;
import 'ram_role_attachment_args.dart';
import 'ram_role_attachment_state.dart';

/// Provides a ECS Ram Role Attachment resource.
///
/// Mount RAM role.
///
/// For information about ECS Ram Role Attachment and how to use it, see [What is Ram Role Attachment](https://next.api.alibabacloud.com/document/Ecs/2014-05-26/AttachInstanceRamRole).
///
/// &gt; **NOTE:** Available since v1.250.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = Promise.all([_default, defaultGetImages]).then(([_default, defaultGetImages]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     imageId: defaultGetImages.images?.[0]?.id,
/// }));
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: `${name}-${defaultInteger.result}`,
///     document: `\\t\\t{
/// \\t\\t\\t\\"Statement\\": [
/// \\t\\t\\t\\t{
/// \\t\\t\\t\\t\\t\\"Action\\": \\"sts:AssumeRole\\",
/// \\t\\t\\t\\t\\t\\"Effect\\": \\"Allow\\",
/// \\t\\t\\t\\t\\t\\"Principal\\": {
/// \\t\\t\\t\\t\\t\\t\\"Service\\": [
/// \\t\\t\\t\\t\\t\\t\\t\\"ecs.aliyuncs.com\\"
/// \\t\\t\\t\\t\\t\\t]
/// \\t\\t\\t\\t\\t}
/// \\t\\t\\t\\t}
/// \\t\\t  \\t],
/// \\t\\t\\t\\"Version\\": \\"1\\"
/// \\t\\t}
/// `,
///     force: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: `${name}-${defaultInteger.result}`,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup].map(__item => __item.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 10,
///     availabilityZone: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.availabilityZones?.[0]),
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: defaultSwitch.id,
///     instanceName: `${name}-${defaultInteger.result}`,
/// });
/// const defaultRamRoleAttachment = new alicloud.ecs.RamRoleAttachment("default", {
///     ramRoleName: defaultRole.id,
///     instanceId: defaultInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     image_id=default_get_images.images[0].id)
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_role = alicloud.ram.Role("default",
///     name=f"{name}-{default_integer['result']}",
///     document="""\t\t{
/// \t\t\t\"Statement\": [
/// \t\t\t\t{
/// \t\t\t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\t\"Principal\": {
/// \t\t\t\t\t\t\"Service\": [
/// \t\t\t\t\t\t\t\"ecs.aliyuncs.com\"
/// \t\t\t\t\t\t]
/// \t\t\t\t\t}
/// \t\t\t\t}
/// \t\t  \t],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// """,
///     force=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}-{default_integer['result']}",
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=f"{name}-{default_integer['result']}",
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[__item.id for __item in [default_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=default_get_instance_types.instance_types[0].availability_zones[0],
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=default_switch.id,
///     instance_name=f"{name}-{default_integer['result']}")
/// default_ram_role_attachment = alicloud.ecs.RamRoleAttachment("default",
///     ram_role_name=default_role.id,
///     instance_id=default_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
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
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = $"{name}-{defaultInteger.Result}",
///         Document = @"\t\t{
/// \t\t\t\""Statement\"": [
/// \t\t\t\t{
/// \t\t\t\t\t\""Action\"": \""sts:AssumeRole\"",
/// \t\t\t\t\t\""Effect\"": \""Allow\"",
/// \t\t\t\t\t\""Principal\"": {
/// \t\t\t\t\t\t\""Service\"": [
/// \t\t\t\t\t\t\t\""ecs.aliyuncs.com\""
/// \t\t\t\t\t\t]
/// \t\t\t\t\t}
/// \t\t\t\t}
/// \t\t  \t],
/// \t\t\t\""Version\"": \""1\""
/// \t\t}
/// ",
///         Force = true,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = $"{name}-{defaultInteger.Result}",
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 10,
///         AvailabilityZone = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.AvailabilityZones[0]),
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = defaultSwitch.Id,
///         InstanceName = $"{name}-{defaultInteger.Result}",
///     });
///
///     var defaultRamRoleAttachment = new AliCloud.Ecs.RamRoleAttachment("default", new()
///     {
///         RamRoleName = defaultRole.Id,
///         InstanceId = defaultInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// ImageId: pulumi.StringRef(defaultGetImages.Images[0].Id),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// Name: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// Document: pulumi.String(`\t\t{
/// \t\t\t\"Statement\": [
/// \t\t\t\t{
/// \t\t\t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\t\"Principal\": {
/// \t\t\t\t\t\t\"Service\": [
/// \t\t\t\t\t\t\t\"ecs.aliyuncs.com\"
/// \t\t\t\t\t\t]
/// \t\t\t\t\t}
/// \t\t\t\t}
/// \t\t  \t],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
/// `),
/// Force: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.192.0/24"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].AvailabilityZones[0]),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// VswitchId: defaultSwitch.ID(),
/// InstanceName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewRamRoleAttachment(ctx, "default", &ecs.RamRoleAttachmentArgs{
/// RamRoleName: defaultRole.ID(),
/// InstanceId: defaultInstance.ID(),
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
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.ecs.RamRoleAttachment;
/// import com.pulumi.alicloud.ecs.RamRoleAttachmentArgs;
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
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .imageId(defaultGetImages.images()[0].id())
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .document("""
/// \t\t{
/// \t\t\t\"Statement\": [
/// \t\t\t\t{
/// \t\t\t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\t\"Principal\": {
/// \t\t\t\t\t\t\"Service\": [
/// \t\t\t\t\t\t\t\"ecs.aliyuncs.com\"
/// \t\t\t\t\t\t]
/// \t\t\t\t\t}
/// \t\t\t\t}
/// \t\t  \t],
/// \t\t\t\"Version\": \"1\"
/// \t\t}
///             """)
///             .force(true)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(10)
///             .availabilityZone(defaultGetInstanceTypes.instanceTypes()[0].availabilityZones()[0])
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(defaultSwitch.id())
///             .instanceName(String.format("%s-%s", name,defaultInteger.result()))
///             .build());
///
///         var defaultRamRoleAttachment = new RamRoleAttachment("defaultRamRoleAttachment", RamRoleAttachmentArgs.builder()
///             .ramRoleName(defaultRole.id())
///             .instanceId(defaultInstance.id())
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Ram Role Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ramRoleAttachment:RamRoleAttachment example <instance_id>:<ram_role_name>
/// ```
class RamRoleAttachment extends pulumi.CustomResource {
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// The additional policy. When you attach an instance RAM role to instances, you can specify an additional policy to further limit the permissions of the role.
  late final pulumi.Output<String?> policy;

  /// The name of the instance RAM role.
  late final pulumi.Output<String> ramRoleName;

  /// Creates a new [RamRoleAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RamRoleAttachment]. {@macro pulumi_ecs_ram_role_attachment_ram_role_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RamRoleAttachment(
    String name, {
    RamRoleAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ramRoleAttachment:RamRoleAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    policy = registerOutput<String?>('policy');
    ramRoleName = registerOutput<String>('ramRoleName');
  }

  /// Gets an existing [RamRoleAttachment] resource's state with the given [name] and [id].
  static RamRoleAttachment get(
    String name,
    pulumi.Input<String> id, {
    RamRoleAttachmentState? state,
  }) {
    return RamRoleAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RamRoleAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/ramRoleAttachment:RamRoleAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    policy = registerOutput<String?>('policy');
    ramRoleName = registerOutput<String>('ramRoleName');
  }
}
