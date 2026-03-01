import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_ip_config.dart';
import 'endpoint_state.dart';

/// Provides a Private Zone Endpoint resource.
///
/// For information about Private Zone Endpoint and how to use it, see [What is Endpoint](https://www.alibabacloud.com/help/en/privatezone/latest/add-endpoint).
///
/// > **NOTE:** Available since v1.143.0.
///
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "example_name";
/// const _default = alicloud.pvtz.getResolverZones({
///     status: "NORMAL",
/// });
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///         vpcId: defaultNetwork.id,
///         cidrBlock: defaultNetwork.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///             input: cidrBlock,
///             newbits: 8,
///             netnum: range.value,
///         })).apply(invoke => invoke.result),
///         zoneId: _default.then(_default => _default.zones[range.value].zoneId),
///     }));
/// }
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     vpcId: defaultNetwork.id,
///     name: name,
/// });
/// const defaultEndpoint = new alicloud.pvtz.Endpoint("default", {
///     endpointName: name,
///     securityGroupId: defaultSecurityGroup.id,
///     vpcId: defaultNetwork.id,
///     vpcRegionId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///     ipConfigs: [
///         {
///             zoneId: defaultSwitch[0].zoneId,
///             cidrBlock: defaultSwitch[0].cidrBlock,
///             vswitchId: defaultSwitch[0].id,
///         },
///         {
///             zoneId: defaultSwitch[1].zoneId,
///             cidrBlock: defaultSwitch[1].cidrBlock,
///             vswitchId: defaultSwitch[1].id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_name"
/// default = alicloud.pvtz.get_resolver_zones(status="NORMAL")
/// default_get_regions = alicloud.get_regions(current=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///         vpc_id=default_network.id,
///         cidr_block=default_network.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///             newbits=8,
///             netnum=range["value"])).apply(lambda invoke: invoke.result),
///         zone_id=default.zones[range["value"]].zone_id))
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     vpc_id=default_network.id,
///     name=name)
/// default_endpoint = alicloud.pvtz.Endpoint("default",
///     endpoint_name=name,
///     security_group_id=default_security_group.id,
///     vpc_id=default_network.id,
///     vpc_region_id=default_get_regions.regions[0].id,
///     ip_configs=[
///         {
///             "zone_id": default_switch[0].zone_id,
///             "cidr_block": default_switch[0].cidr_block,
///             "vswitch_id": default_switch[0].id,
///         },
///         {
///             "zone_id": default_switch[1].zone_id,
///             "cidr_block": default_switch[1].cidr_block,
///             "vswitch_id": default_switch[1].id,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "example_name";
///     var @default = AliCloud.Pvtz.GetResolverZones.Invoke(new()
///     {
///         Status = "NORMAL",
///     });
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = defaultNetwork.Id,
///             CidrBlock = defaultNetwork.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
///             {
///                 Input = cidrBlock,
///                 Newbits = 8,
///                 Netnum = range.Value,
///             })).Apply(invoke => invoke.Result),
///             ZoneId = @default.Apply(@default => @default.Apply(getResolverZonesResult => getResolverZonesResult.Zones)[range.Value].ZoneId),
///         }));
///     }
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         Name = name,
///     });
///
///     var defaultEndpoint = new AliCloud.Pvtz.Endpoint("default", new()
///     {
///         EndpointName = name,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VpcId = defaultNetwork.Id,
///         VpcRegionId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         IpConfigs = new[]
///         {
///             new AliCloud.Pvtz.Inputs.EndpointIpConfigArgs
///             {
///                 ZoneId = defaultSwitch[0].ZoneId,
///                 CidrBlock = defaultSwitch[0].CidrBlock,
///                 VswitchId = defaultSwitch[0].Id,
///             },
///             new AliCloud.Pvtz.Inputs.EndpointIpConfigArgs
///             {
///                 ZoneId = defaultSwitch[1].ZoneId,
///                 CidrBlock = defaultSwitch[1].CidrBlock,
///                 VswitchId = defaultSwitch[1].Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "example_name";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := pvtz.GetResolverZones(ctx, &pvtz.GetResolverZonesArgs{
/// Status: pulumi.StringRef("NORMAL"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// Current: pulumi.BoolRef(true),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 8,
/// Netnum: val0,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var defaultSwitch []*vpc.Switch
/// for index := 0; index < 2; index++ {
///     key0 := index
///     val0 := index
/// __res, err := vpc.NewSwitch(ctx, fmt.Sprintf("default-%v", key0), &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String(defaultNetwork.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// ZoneId: pulumi.String(_default.Zones[val0].ZoneId),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch = append(defaultSwitch, __res)
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// VpcId: defaultNetwork.ID(),
/// Name: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = pvtz.NewEndpoint(ctx, "default", &pvtz.EndpointArgs{
/// EndpointName: pulumi.String(name),
/// SecurityGroupId: defaultSecurityGroup.ID(),
/// VpcId: defaultNetwork.ID(),
/// VpcRegionId: pulumi.String(defaultGetRegions.Regions[0].Id),
/// IpConfigs: pvtz.EndpointIpConfigArray{
/// &pvtz.EndpointIpConfigArgs{
/// ZoneId: defaultSwitch[0].ZoneId,
/// CidrBlock: defaultSwitch[0].CidrBlock,
/// VswitchId: defaultSwitch[0].ID(),
/// },
/// &pvtz.EndpointIpConfigArgs{
/// ZoneId: defaultSwitch[1].ZoneId,
/// CidrBlock: defaultSwitch[1].CidrBlock,
/// VswitchId: defaultSwitch[1].ID(),
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
/// import com.pulumi.alicloud.pvtz.PvtzFunctions;
/// import com.pulumi.alicloud.pvtz.inputs.GetResolverZonesArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.pvtz.Endpoint;
/// import com.pulumi.alicloud.pvtz.EndpointArgs;
/// import com.pulumi.alicloud.pvtz.inputs.EndpointIpConfigArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var name = config.get("name").orElse("example_name");
///         final var default = PvtzFunctions.getResolverZones(GetResolverZonesArgs.builder()
///             .status("NORMAL")
///             .build());
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(defaultNetwork.id())
///                 .cidrBlock(defaultNetwork.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                     .input(_cidrBlock)
///                     .newbits(8)
///                     .netnum(range.value())
///                     .build())).applyValue(_invoke -> _invoke.result()))
///                 .zoneId(default_.zones()[range.value()].zoneId())
///                 .build());
///
///
/// }
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .name(name)
///             .build());
///
///         var defaultEndpoint = new Endpoint("defaultEndpoint", EndpointArgs.builder()
///             .endpointName(name)
///             .securityGroupId(defaultSecurityGroup.id())
///             .vpcId(defaultNetwork.id())
///             .vpcRegionId(defaultGetRegions.regions()[0].id())
///             .ipConfigs(
///                 EndpointIpConfigArgs.builder()
///                     .zoneId(defaultSwitch[0].zoneId())
///                     .cidrBlock(defaultSwitch[0].cidrBlock())
///                     .vswitchId(defaultSwitch[0].id())
///                     .build(),
///                 EndpointIpConfigArgs.builder()
///                     .zoneId(defaultSwitch[1].zoneId())
///                     .cidrBlock(defaultSwitch[1].cidrBlock())
///                     .vswitchId(defaultSwitch[1].id())
///                     .build())
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
/// Private Zone Endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pvtz/endpoint:Endpoint example <id>
/// ```
class Endpoint extends pulumi.CustomResource {
  /// The name of the resource.
  late final pulumi.Output<String> endpointName;
  /// The Ip Configs. See `ip_configs` below. **NOTE:** In order to ensure high availability, add at least 2 and up to 6.
  late final pulumi.Output<List<EndpointIpConfig>> ipConfigs;
  /// The ID of the Security Group.
  late final pulumi.Output<String> securityGroupId;
  /// The status of the resource. Valid values: `CHANGE_FAILED`, `CHANGE_INIT`, `EXCEPTION`, `FAILED`, `INIT`, `SUCCESS`.
  late final pulumi.Output<String> status;
  /// The VPC ID.
  late final pulumi.Output<String> vpcId;
  /// The Region of the VPC.
  late final pulumi.Output<String> vpcRegionId;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_pvtz_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpointName = registerOutput<String>('endpointName');
    this.ipConfigs = registerOutput<List<EndpointIpConfig>>('ipConfigs');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcRegionId = registerOutput<String>('vpcRegionId');
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpointName = registerOutput<String>('endpointName');
    this.ipConfigs = registerOutput<List<EndpointIpConfig>>('ipConfigs');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcRegionId = registerOutput<String>('vpcRegionId');
  }
}
