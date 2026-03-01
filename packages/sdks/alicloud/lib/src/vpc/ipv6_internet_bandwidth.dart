import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_internet_bandwidth_args.dart';
import 'ipv6_internet_bandwidth_state.dart';

/// Provides a VPC Ipv6 Internet Bandwidth resource. Public network bandwidth of IPv6 address.
///
/// For information about VPC Ipv6 Internet Bandwidth and how to use it, see [What is Ipv6 Internet Bandwidth](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/allocateipv6internetbandwidth).
///
/// > **NOTE:** Available since v1.143.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     enableIpv6: true,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const vsw = new alicloud.vpc.Switch("vsw", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
///     ipv6CidrBlockMask: 22,
/// });
/// const group = new alicloud.ecs.SecurityGroup("group", {
///     name: name,
///     description: "foo",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     systemDiskCategory: "cloud_efficiency",
///     cpuCoreCount: 4,
///     minimumEniIpv6AddressQuantity: 1,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const vpcInstance = new alicloud.ecs.Instance("vpc_instance", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     ipv6AddressCount: 1,
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     systemDiskCategory: "cloud_efficiency",
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceName: name,
///     vswitchId: vsw.id,
///     internetMaxBandwidthOut: 10,
///     securityGroups: [group].map(__item => __item.id),
/// });
/// const example = new alicloud.vpc.Ipv6Gateway("example", {
///     ipv6GatewayName: "example_value",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetIpv6Addresses = alicloud.vpc.getIpv6AddressesOutput({
///     associatedInstanceId: vpcInstance.id,
///     status: "Available",
/// });
/// const exampleIpv6InternetBandwidth = new alicloud.vpc.Ipv6InternetBandwidth("example", {
///     ipv6AddressId: defaultGetIpv6Addresses.apply(defaultGetIpv6Addresses => defaultGetIpv6Addresses.addresses?.[0]?.id),
///     ipv6GatewayId: example.ipv6GatewayId,
///     internetChargeType: "PayByBandwidth",
///     bandwidth: 20,
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
/// default = alicloud.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     enable_ipv6=True,
///     cidr_block="172.16.0.0/12")
/// vsw = alicloud.vpc.Switch("vsw",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name,
///     ipv6_cidr_block_mask=22)
/// group = alicloud.ecs.SecurityGroup("group",
///     name=name,
///     description="foo",
///     vpc_id=default_network.id)
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     system_disk_category="cloud_efficiency",
///     cpu_core_count=4,
///     minimum_eni_ipv6_address_quantity=1)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// vpc_instance = alicloud.ecs.Instance("vpc_instance",
///     availability_zone=default.zones[0].id,
///     ipv6_address_count=1,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     system_disk_category="cloud_efficiency",
///     image_id=default_get_images.images[0].id,
///     instance_name=name,
///     vswitch_id=vsw.id,
///     internet_max_bandwidth_out=10,
///     security_groups=[__item.id for __item in [group]])
/// example = alicloud.vpc.Ipv6Gateway("example",
///     ipv6_gateway_name="example_value",
///     vpc_id=default_network.id)
/// default_get_ipv6_addresses = alicloud.vpc.get_ipv6_addresses_output(associated_instance_id=vpc_instance.id,
///     status="Available")
/// example_ipv6_internet_bandwidth = alicloud.vpc.Ipv6InternetBandwidth("example",
///     ipv6_address_id=default_get_ipv6_addresses.addresses[0].id,
///     ipv6_gateway_id=example.ipv6_gateway_id,
///     internet_charge_type="PayByBandwidth",
///     bandwidth=20)
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
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         EnableIpv6 = true,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var vsw = new AliCloud.Vpc.Switch("vsw", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///         Ipv6CidrBlockMask = 22,
///     });
///
///     var @group = new AliCloud.Ecs.SecurityGroup("group", new()
///     {
///         Name = name,
///         Description = "foo",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///         CpuCoreCount = 4,
///         MinimumEniIpv6AddressQuantity = 1,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var vpcInstance = new AliCloud.Ecs.Instance("vpc_instance", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Ipv6AddressCount = 1,
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceName = name,
///         VswitchId = vsw.Id,
///         InternetMaxBandwidthOut = 10,
///         SecurityGroups = new[]
///         {
///             @group,
///         }.Select(__item => __item.Id).ToList(),
///     });
///
///     var example = new AliCloud.Vpc.Ipv6Gateway("example", new()
///     {
///         Ipv6GatewayName = "example_value",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetIpv6Addresses = AliCloud.Vpc.GetIpv6Addresses.Invoke(new()
///     {
///         AssociatedInstanceId = vpcInstance.Id,
///         Status = "Available",
///     });
///
///     var exampleIpv6InternetBandwidth = new AliCloud.Vpc.Ipv6InternetBandwidth("example", new()
///     {
///         Ipv6AddressId = defaultGetIpv6Addresses.Apply(getIpv6AddressesResult => getIpv6AddressesResult.Addresses[0]?.Id),
///         Ipv6GatewayId = example.Ipv6GatewayId,
///         InternetChargeType = "PayByBandwidth",
///         Bandwidth = 20,
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
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// EnableIpv6: pulumi.Bool(true),
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// })
/// if err != nil {
/// return err
/// }
/// vsw, err := vpc.NewSwitch(ctx, "vsw", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("172.16.0.0/21"),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// VswitchName: pulumi.String(name),
/// Ipv6CidrBlockMask: pulumi.Int(22),
/// })
/// if err != nil {
/// return err
/// }
/// group, err := ecs.NewSecurityGroup(ctx, "group", &ecs.SecurityGroupArgs{
/// Name: pulumi.String(name),
/// Description: pulumi.String("foo"),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// SystemDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// CpuCoreCount: pulumi.IntRef(4),
/// MinimumEniIpv6AddressQuantity: pulumi.IntRef(1),
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
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// vpcInstance, err := ecs.NewInstance(ctx, "vpc_instance", &ecs.InstanceArgs{
/// AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// Ipv6AddressCount: pulumi.Int(1),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceName: pulumi.String(name),
/// VswitchId: vsw.ID(),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// SecurityGroups: splat0,
/// })
/// if err != nil {
/// return err
/// }
/// example, err := vpc.NewIpv6Gateway(ctx, "example", &vpc.Ipv6GatewayArgs{
/// Ipv6GatewayName: pulumi.String("example_value"),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultGetIpv6Addresses := vpc.GetIpv6AddressesOutput(ctx, vpc.GetIpv6AddressesOutputArgs{
/// AssociatedInstanceId: vpcInstance.ID(),
/// Status: pulumi.String("Available"),
/// }, nil);
/// _, err = vpc.NewIpv6InternetBandwidth(ctx, "example", &vpc.Ipv6InternetBandwidthArgs{
/// Ipv6AddressId: pulumi.String(defaultGetIpv6Addresses.ApplyT(func(defaultGetIpv6Addresses vpc.GetIpv6AddressesResult) (*string, error) {
/// return &defaultGetIpv6Addresses.Addresses[0].Id, nil
/// }).(pulumi.StringPtrOutput)),
/// Ipv6GatewayId: example.Ipv6GatewayId,
/// InternetChargeType: pulumi.String("PayByBandwidth"),
/// Bandwidth: pulumi.Int(20),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.vpc.Ipv6Gateway;
/// import com.pulumi.alicloud.vpc.Ipv6GatewayArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv6AddressesArgs;
/// import com.pulumi.alicloud.vpc.Ipv6InternetBandwidth;
/// import com.pulumi.alicloud.vpc.Ipv6InternetBandwidthArgs;
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
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .enableIpv6(true)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var vsw = new Switch("vsw", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .ipv6CidrBlockMask(22)
///             .build());
///
///         var group = new SecurityGroup("group", SecurityGroupArgs.builder()
///             .name(name)
///             .description("foo")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .cpuCoreCount(4)
///             .minimumEniIpv6AddressQuantity(1)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var vpcInstance = new Instance("vpcInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .ipv6AddressCount(1)
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceName(name)
///             .vswitchId(vsw.id())
///             .internetMaxBandwidthOut(10)
///             .securityGroups(group.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///         var example = new Ipv6Gateway("example", Ipv6GatewayArgs.builder()
///             .ipv6GatewayName("example_value")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetIpv6Addresses = VpcFunctions.getIpv6Addresses(GetIpv6AddressesArgs.builder()
///             .associatedInstanceId(vpcInstance.id())
///             .status("Available")
///             .build());
///
///         var exampleIpv6InternetBandwidth = new Ipv6InternetBandwidth("exampleIpv6InternetBandwidth", Ipv6InternetBandwidthArgs.builder()
///             .ipv6AddressId(defaultGetIpv6Addresses.applyValue(_defaultGetIpv6Addresses -> _defaultGetIpv6Addresses.addresses()[0].id()))
///             .ipv6GatewayId(example.ipv6GatewayId())
///             .internetChargeType("PayByBandwidth")
///             .bandwidth(20)
///             .build());
///
///     }
/// }
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Ipv6 Internet Bandwidth can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipv6InternetBandwidth:Ipv6InternetBandwidth example <id>
/// ```
class Ipv6InternetBandwidth extends pulumi.CustomResource {
  /// The amount of Internet bandwidth resources of the IPv6 address, Unit: `Mbit/s`. Valid values: `1` to `5000`. **NOTE:** If `internet_charge_type` is set to `PayByTraffic`, the amount of Internet bandwidth resources of the IPv6 address is limited by the specification of the IPv6 gateway. `Small` (default): specifies the Free edition and the Internet bandwidth is from `1` to `500` Mbit/s. `Medium`: specifies the Medium edition and the Internet bandwidth is from `1` to `1000` Mbit/s. `Large`: specifies the Large edition and the Internet bandwidth is from `1` to `2000` Mbit/s.
  late final pulumi.Output<int> bandwidth;
  /// The metering method of the Internet bandwidth resources of the IPv6 gateway. Valid values: `PayByBandwidth`, `PayByTraffic`.
  late final pulumi.Output<String> internetChargeType;
  /// The ID of the IPv6 address instance.
  late final pulumi.Output<String> ipv6AddressId;
  /// The ID of the IPv6 gateway to which the IPv6 address belongs.
  late final pulumi.Output<String> ipv6GatewayId;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [Ipv6InternetBandwidth].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv6InternetBandwidth]. {@macro pulumi_vpc_ipv6_internet_bandwidth_ipv6_internet_bandwidth_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv6InternetBandwidth(
    String name, {
    Ipv6InternetBandwidthArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv6InternetBandwidth:Ipv6InternetBandwidth',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidth = registerOutput<int>('bandwidth');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.ipv6AddressId = registerOutput<String>('ipv6AddressId');
    this.ipv6GatewayId = registerOutput<String>('ipv6GatewayId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Ipv6InternetBandwidth] resource's state with the given [name] and [id].
  static Ipv6InternetBandwidth get(
    String name,
    pulumi.Input<String> id, {
    Ipv6InternetBandwidthState? state,
  }) {
    return Ipv6InternetBandwidth._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ipv6InternetBandwidth._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv6InternetBandwidth:Ipv6InternetBandwidth',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidth = registerOutput<int>('bandwidth');
    this.internetChargeType = registerOutput<String>('internetChargeType');
    this.ipv6AddressId = registerOutput<String>('ipv6AddressId');
    this.ipv6GatewayId = registerOutput<String>('ipv6GatewayId');
    this.status = registerOutput<String>('status');
  }
}
