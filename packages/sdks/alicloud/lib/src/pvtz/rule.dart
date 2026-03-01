import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_forward_ip.dart';
import 'rule_state.dart';

/// Provides a Private Zone Rule resource.
///
/// For information about Private Zone Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/privatezone/latest/add-forwarding-rule).
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
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "example_value";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
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
///     endpointName: `${name}-${defaultInteger.result}`,
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
/// const defaultRule = new alicloud.pvtz.Rule("default", {
///     endpointId: defaultEndpoint.id,
///     ruleName: `${name}-${defaultInteger.result}`,
///     type: "OUTBOUND",
///     zoneName: name,
///     forwardIps: [{
///         ip: "114.114.114.114",
///         port: 8080,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
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
///     endpoint_name=f"{name}-{default_integer['result']}",
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
/// default_rule = alicloud.pvtz.Rule("default",
///     endpoint_id=default_endpoint.id,
///     rule_name=f"{name}-{default_integer['result']}",
///     type="OUTBOUND",
///     zone_name=name,
///     forward_ips=[{
///         "ip": "114.114.114.114",
///         "port": 8080,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "example_value";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
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
///         EndpointName = $"{name}-{defaultInteger.Result}",
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
///     var defaultRule = new AliCloud.Pvtz.Rule("default", new()
///     {
///         EndpointId = defaultEndpoint.Id,
///         RuleName = $"{name}-{defaultInteger.Result}",
///         Type = "OUTBOUND",
///         ZoneName = name,
///         ForwardIps = new[]
///         {
///             new AliCloud.Pvtz.Inputs.RuleForwardIpArgs
///             {
///                 Ip = "114.114.114.114",
///                 Port = 8080,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "example_value";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
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
/// defaultEndpoint, err := pvtz.NewEndpoint(ctx, "default", &pvtz.EndpointArgs{
/// EndpointName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// _, err = pvtz.NewRule(ctx, "default", &pvtz.RuleArgs{
/// EndpointId: defaultEndpoint.ID(),
/// RuleName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// Type: pulumi.String("OUTBOUND"),
/// ZoneName: pulumi.String(name),
/// ForwardIps: pvtz.RuleForwardIpArray{
/// &pvtz.RuleForwardIpArgs{
/// Ip: pulumi.String("114.114.114.114"),
/// Port: pulumi.Int(8080),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
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
/// import com.pulumi.alicloud.pvtz.Rule;
/// import com.pulumi.alicloud.pvtz.RuleArgs;
/// import com.pulumi.alicloud.pvtz.inputs.RuleForwardIpArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
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
///             .endpointName(String.format("%s-%s", name,defaultInteger.result()))
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
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .endpointId(defaultEndpoint.id())
///             .ruleName(String.format("%s-%s", name,defaultInteger.result()))
///             .type("OUTBOUND")
///             .zoneName(name)
///             .forwardIps(RuleForwardIpArgs.builder()
///                 .ip("114.114.114.114")
///                 .port(8080)
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
/// ## Import
///
/// Private Zone Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pvtz/rule:Rule example <id>
/// ```
class Rule extends pulumi.CustomResource {
  /// The ID of the Endpoint.
  late final pulumi.Output<String> endpointId;
  /// Forwarding target. See `forward_ips` below.
  late final pulumi.Output<List<RuleForwardIp>> forwardIps;
  /// The name of the resource.
  late final pulumi.Output<String> ruleName;
  /// The type of the rule. Valid values: `OUTBOUND`.
  late final pulumi.Output<String?> type;
  /// The name of the forwarding zone.
  late final pulumi.Output<String> zoneName;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_pvtz_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpointId = registerOutput<String>('endpointId');
    this.forwardIps = registerOutput<List<RuleForwardIp>>('forwardIps');
    this.ruleName = registerOutput<String>('ruleName');
    this.type = registerOutput<String?>('type');
    this.zoneName = registerOutput<String>('zoneName');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpointId = registerOutput<String>('endpointId');
    this.forwardIps = registerOutput<List<RuleForwardIp>>('forwardIps');
    this.ruleName = registerOutput<String>('ruleName');
    this.type = registerOutput<String?>('type');
    this.zoneName = registerOutput<String>('zoneName');
  }
}
