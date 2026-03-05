import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_network_interface_permission_args.dart';
import 'ecs_network_interface_permission_state.dart';

/// Provides a ECS Network Interface Permission resource.
///
/// For information about ECS Network Interface Permission and how to use it, see [What is Network Interface Permission](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/elastic-network-interfaces-overview).
///
/// &gt; **NOTE:** Available since v1.166.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetAccount = alicloud.getAccount({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: "terraform-example",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("default", {
///     networkInterfaceName: "terraform-example",
///     vswitchId: defaultSwitch.id,
///     securityGroupIds: [defaultSecurityGroup.id],
///     description: "terraform-example",
///     primaryIpAddress: defaultSwitch.cidrBlock.apply(cidrBlock => std.cidrhostOutput({
///         input: cidrBlock,
///         host: 100,
///     })).apply(invoke => invoke.result),
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
/// });
/// const example = new alicloud.ecs.EcsNetworkInterfacePermission("example", {
///     accountId: defaultGetAccount.then(defaultGetAccount => defaultGetAccount.id),
///     networkInterfaceId: defaultEcsNetworkInterface.id,
///     permission: "InstanceAttach",
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_account = alicloud.get_account()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name="terraform-example",
///     vpc_id=default_network.id)
/// default_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("default",
///     network_interface_name="terraform-example",
///     vswitch_id=default_switch.id,
///     security_group_ids=[default_security_group.id],
///     description="terraform-example",
///     primary_ip_address=default_switch.cidr_block.apply(lambda cidr_block: std.cidrhost_output(input=cidr_block,
///         host=100)).apply(lambda invoke: invoke.result),
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     resource_group_id=default_get_resource_groups.ids[0])
/// example = alicloud.ecs.EcsNetworkInterfacePermission("example",
///     account_id=default_get_account.id,
///     network_interface_id=default_ecs_network_interface.id,
///     permission="InstanceAttach",
///     force=True)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetAccount = AliCloud.GetAccount.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = "terraform-example",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("default", new()
///     {
///         NetworkInterfaceName = "terraform-example",
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         Description = "terraform-example",
///         PrimaryIpAddress = defaultSwitch.CidrBlock.Apply(cidrBlock => Std.Cidrhost.Invoke(new()
///         {
///             Input = cidrBlock,
///             Host = 100,
///         })).Apply(invoke => invoke.Result),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///     });
///
///     var example = new AliCloud.Ecs.EcsNetworkInterfacePermission("example", new()
///     {
///         AccountId = defaultGetAccount.Apply(getAccountResult => getAccountResult.Id),
///         NetworkInterfaceId = defaultEcsNetworkInterface.Id,
///         Permission = "InstanceAttach",
///         Force = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String("terraform-example"),
/// CidrBlock: pulumi.String("172.17.3.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String("terraform-example"),
/// CidrBlock: pulumi.String("172.17.3.0/24"),
/// VpcId: defaultNetwork.ID(),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// Name: pulumi.String("terraform-example"),
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrhost, err := std.Cidrhost(ctx, &std.CidrhostArgs{
/// Input: cidrBlock,
/// Host: 100,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultEcsNetworkInterface, err := ecs.NewEcsNetworkInterface(ctx, "default", &ecs.EcsNetworkInterfaceArgs{
/// NetworkInterfaceName: pulumi.String("terraform-example"),
/// VswitchId: defaultSwitch.ID(),
/// SecurityGroupIds: pulumi.StringArray{
/// defaultSecurityGroup.ID(),
/// },
/// Description: pulumi.String("terraform-example"),
/// PrimaryIpAddress: pulumi.String(defaultSwitch.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrhostResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrhostResultOutput).ApplyT(func(invoke std.CidrhostResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// Tags: pulumi.StringMap{
/// "Created": pulumi.String("TF"),
/// "For": pulumi.String("example"),
/// },
/// ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewEcsNetworkInterfacePermission(ctx, "example", &ecs.EcsNetworkInterfacePermissionArgs{
/// AccountId: pulumi.String(defaultGetAccount.Id),
/// NetworkInterfaceId: defaultEcsNetworkInterface.ID(),
/// Permission: pulumi.String("InstanceAttach"),
/// Force: pulumi.Bool(true),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrhostArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfacePermission;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfacePermissionArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name("terraform-example")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultEcsNetworkInterface = new EcsNetworkInterface("defaultEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .networkInterfaceName("terraform-example")
///             .vswitchId(defaultSwitch.id())
///             .securityGroupIds(defaultSecurityGroup.id())
///             .description("terraform-example")
///             .primaryIpAddress(defaultSwitch.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrhost(CidrhostArgs.builder()
///                 .input(_cidrBlock)
///                 .host(100)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .build());
///
///         var example = new EcsNetworkInterfacePermission("example", EcsNetworkInterfacePermissionArgs.builder()
///             .accountId(defaultGetAccount.id())
///             .networkInterfaceId(defaultEcsNetworkInterface.id())
///             .permission("InstanceAttach")
///             .force(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: terraform-example
///       vpcId: ${defaultNetwork.id}
///   defaultEcsNetworkInterface:
///     type: alicloud:ecs:EcsNetworkInterface
///     name: default
///     properties:
///       networkInterfaceName: terraform-example
///       vswitchId: ${defaultSwitch.id}
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       description: terraform-example
///       primaryIpAddress:
///         fn::invoke:
///           function: std:cidrhost
///           arguments:
///             input: ${defaultSwitch.cidrBlock}
///             host: 100
///           return: result
///       tags:
///         Created: TF
///         For: example
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///   example:
///     type: alicloud:ecs:EcsNetworkInterfacePermission
///     properties:
///       accountId: ${defaultGetAccount.id}
///       networkInterfaceId: ${defaultEcsNetworkInterface.id}
///       permission: InstanceAttach
///       force: true
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Network Interface Permission can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsNetworkInterfacePermission:EcsNetworkInterfacePermission example <id>
/// ```
class EcsNetworkInterfacePermission extends pulumi.CustomResource {
  /// Alibaba Cloud Partner (Certified ISV) account ID or individual user ID.
  late final pulumi.Output<String> accountId;
  /// Whether to force deletion of Network Interface Permission. Default value: `true`.
  late final pulumi.Output<bool?> force;
  /// The ID of the network interface.
  late final pulumi.Output<String> networkInterfaceId;
  /// The permissions of the Network Interface. Valid values: `InstanceAttach`. `InstanceAttach`: Allows authorized users to mount your ENI to the other ECS instance. The ECS instance must be in the same zone as the ENI.
  late final pulumi.Output<String> permission;
  /// The Status of the Network Interface Permissions. Valid values: `Pending`, `Granted`, `Revoking`, `Revoked`.
  late final pulumi.Output<String> status;

  /// Creates a new [EcsNetworkInterfacePermission].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsNetworkInterfacePermission]. {@macro pulumi_ecs_ecs_network_interface_permission_ecs_network_interface_permission_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsNetworkInterfacePermission(
    String name, {
    EcsNetworkInterfacePermissionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsNetworkInterfacePermission:EcsNetworkInterfacePermission',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    force = registerOutput<bool?>('force');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    permission = registerOutput<String>('permission');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [EcsNetworkInterfacePermission] resource's state with the given [name] and [id].
  static EcsNetworkInterfacePermission get(
    String name,
    pulumi.Input<String> id, {
    EcsNetworkInterfacePermissionState? state,
  }) {
    return EcsNetworkInterfacePermission._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsNetworkInterfacePermission._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsNetworkInterfacePermission:EcsNetworkInterfacePermission',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    force = registerOutput<bool?>('force');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    permission = registerOutput<String>('permission');
    status = registerOutput<String>('status');
  }
}
