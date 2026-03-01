import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_access_args.dart';
import 'vpc_access_state.dart';

/// ## Example Usage
///
/// Basic Usage
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
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_[0-9]+_[0-9]+_x64*",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = Promise.all([_default, defaultGetImages]).then(([_default, defaultGetImages]) => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     imageId: defaultGetImages.images?.[0]?.id,
///     systemDiskCategory: "cloud_efficiency",
/// }));
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
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
///     instanceName: name,
///     description: name,
/// });
/// const defaultVpcAccess = new alicloud.apigateway.VpcAccess("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
///     instanceId: defaultInstance.id,
///     port: 8080,
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
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_[0-9]+_[0-9]+_x64*",
///     most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     image_id=default_get_images.images[0].id,
///     system_disk_category="cloud_efficiency")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
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
///     instance_name=name,
///     description=name)
/// default_vpc_access = alicloud.apigateway.VpcAccess("default",
///     name=name,
///     vpc_id=default_network.id,
///     instance_id=default_instance.id,
///     port=8080)
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
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_[0-9]+_[0-9]+_x64*",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
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
///         InstanceName = name,
///         Description = name,
///     });
///
///     var defaultVpcAccess = new AliCloud.ApiGateway.VpcAccess("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///         InstanceId = defaultInstance.Id,
///         Port = 8080,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
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
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// NameRegex: pulumi.StringRef("^ubuntu_[0-9]+_[0-9]+_x64*"),
/// MostRecent: pulumi.BoolRef(true),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// ImageId: pulumi.StringRef(defaultGetImages.Images[0].Id),
/// SystemDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.192.0/24"),
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
/// InstanceName: pulumi.String(name),
/// Description: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewVpcAccess(ctx, "default", &apigateway.VpcAccessArgs{
/// Name: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// InstanceId: defaultInstance.ID(),
/// Port: pulumi.Int(8080),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.apigateway.VpcAccess;
/// import com.pulumi.alicloud.apigateway.VpcAccessArgs;
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
///             .nameRegex("^ubuntu_[0-9]+_[0-9]+_x64*")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .imageId(defaultGetImages.images()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
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
///             .instanceName(name)
///             .description(name)
///             .build());
///
///         var defaultVpcAccess = new VpcAccess("defaultVpcAccess", VpcAccessArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .instanceId(defaultInstance.id())
///             .port(8080)
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
/// Api Gateway Vpc Access can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/vpcAccess:VpcAccess example <name>:<vpc_id>:<instance_id>:<port>
/// ```
class VpcAccess extends pulumi.CustomResource {
  /// The ID of an ECS or SLB instance in the VPC.
  late final pulumi.Output<String> instanceId;
  /// The name of the authorization. The name must be unique.
  late final pulumi.Output<String> name;
  /// The port number that corresponds to the instance.
  late final pulumi.Output<int> port;
  /// The ID of the VPC. The VPC must be an available one that belongs to the same account as the API.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpcAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcAccess]. {@macro pulumi_apigateway_vpc_access_vpc_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcAccess(
    String name, {
    VpcAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/vpcAccess:VpcAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [VpcAccess] resource's state with the given [name] and [id].
  static VpcAccess get(
    String name,
    pulumi.Input<String> id, {
    VpcAccessState? state,
  }) {
    return VpcAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/vpcAccess:VpcAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int>('port');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
