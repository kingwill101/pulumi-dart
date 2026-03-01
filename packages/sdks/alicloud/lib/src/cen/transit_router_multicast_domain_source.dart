import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_multicast_domain_source_args.dart';
import 'transit_router_multicast_domain_source_state.dart';

/// Provides a Cen Transit Router Multicast Domain Source resource.
///
/// For information about Cen Transit Router Multicast Domain Source and how to use it, see [What is Transit Router Multicast Domain Source](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/api-cbn-2017-09-12-registertransitroutermulticastgroupsources).
///
/// > **NOTE:** Available since v1.195.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultMaster = new alicloud.vpc.Switch("default_master", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.1.0/24",
///     zoneId: "cn-hangzhou-i",
/// });
/// const defaultSlave = new alicloud.vpc.Switch("default_slave", {
///     vswitchName: name,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.2.0/24",
///     zoneId: "cn-hangzhou-j",
/// });
/// const defaultInstance = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     cenId: defaultInstance.id,
///     supportMulticast: true,
/// });
/// const defaultTransitRouterVpcAttachment = new alicloud.cen.TransitRouterVpcAttachment("default", {
///     cenId: defaultInstance.id,
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     vpcId: defaultNetwork.id,
///     zoneMappings: [
///         {
///             zoneId: defaultMaster.zoneId,
///             vswitchId: defaultMaster.id,
///         },
///         {
///             zoneId: defaultSlave.zoneId,
///             vswitchId: defaultSlave.id,
///         },
///     ],
///     transitRouterAttachmentName: name,
///     transitRouterAttachmentDescription: name,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultTransitRouterMulticastDomain = new alicloud.cen.TransitRouterMulticastDomain("default", {
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     transitRouterMulticastDomainName: name,
///     transitRouterMulticastDomainDescription: name,
/// });
/// const defaultEcsNetworkInterface = new alicloud.ecs.EcsNetworkInterface("default", {
///     networkInterfaceName: name,
///     vswitchId: defaultMaster.id,
///     securityGroupIds: [defaultSecurityGroup.id],
///     description: "Basic test",
///     primaryIpAddress: defaultMaster.cidrBlock.apply(cidrBlock => std.cidrhostOutput({
///         input: cidrBlock,
///         host: 100,
///     })).apply(invoke => invoke.result),
///     tags: {
///         Created: "TF",
///         For: "Test",
///     },
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
/// });
/// const defaultTransitRouterMulticastDomainAssociation = new alicloud.cen.TransitRouterMulticastDomainAssociation("default", {
///     transitRouterMulticastDomainId: defaultTransitRouterMulticastDomain.id,
///     transitRouterAttachmentId: defaultTransitRouterVpcAttachment.transitRouterAttachmentId,
///     vswitchId: defaultMaster.id,
/// });
/// const example = new alicloud.cen.TransitRouterMulticastDomainSource("example", {
///     vpcId: defaultNetwork.id,
///     transitRouterMulticastDomainId: defaultTransitRouterMulticastDomainAssociation.transitRouterMulticastDomainId,
///     networkInterfaceId: defaultEcsNetworkInterface.id,
///     groupIpAddress: "239.1.1.1",
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
///     name = "tf_example"
/// default = alicloud.cen.get_transit_router_available_resources()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_master = alicloud.vpc.Switch("default_master",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.1.0/24",
///     zone_id="cn-hangzhou-i")
/// default_slave = alicloud.vpc.Switch("default_slave",
///     vswitch_name=name,
///     vpc_id=default_network.id,
///     cidr_block="192.168.2.0/24",
///     zone_id="cn-hangzhou-j")
/// default_instance = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     cen_id=default_instance.id,
///     support_multicast=True)
/// default_transit_router_vpc_attachment = alicloud.cen.TransitRouterVpcAttachment("default",
///     cen_id=default_instance.id,
///     transit_router_id=default_transit_router.transit_router_id,
///     vpc_id=default_network.id,
///     zone_mappings=[
///         {
///             "zone_id": default_master.zone_id,
///             "vswitch_id": default_master.id,
///         },
///         {
///             "zone_id": default_slave.zone_id,
///             "vswitch_id": default_slave.id,
///         },
///     ],
///     transit_router_attachment_name=name,
///     transit_router_attachment_description=name)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_transit_router_multicast_domain = alicloud.cen.TransitRouterMulticastDomain("default",
///     transit_router_id=default_transit_router.transit_router_id,
///     transit_router_multicast_domain_name=name,
///     transit_router_multicast_domain_description=name)
/// default_ecs_network_interface = alicloud.ecs.EcsNetworkInterface("default",
///     network_interface_name=name,
///     vswitch_id=default_master.id,
///     security_group_ids=[default_security_group.id],
///     description="Basic test",
///     primary_ip_address=default_master.cidr_block.apply(lambda cidr_block: std.cidrhost_output(input=cidr_block,
///         host=100)).apply(lambda invoke: invoke.result),
///     tags={
///         "Created": "TF",
///         "For": "Test",
///     },
///     resource_group_id=default_get_resource_groups.ids[0])
/// default_transit_router_multicast_domain_association = alicloud.cen.TransitRouterMulticastDomainAssociation("default",
///     transit_router_multicast_domain_id=default_transit_router_multicast_domain.id,
///     transit_router_attachment_id=default_transit_router_vpc_attachment.transit_router_attachment_id,
///     vswitch_id=default_master.id)
/// example = alicloud.cen.TransitRouterMulticastDomainSource("example",
///     vpc_id=default_network.id,
///     transit_router_multicast_domain_id=default_transit_router_multicast_domain_association.transit_router_multicast_domain_id,
///     network_interface_id=default_ecs_network_interface.id,
///     group_ip_address="239.1.1.1")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultMaster = new AliCloud.Vpc.Switch("default_master", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.1.0/24",
///         ZoneId = "cn-hangzhou-i",
///     });
///
///     var defaultSlave = new AliCloud.Vpc.Switch("default_slave", new()
///     {
///         VswitchName = name,
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.2.0/24",
///         ZoneId = "cn-hangzhou-j",
///     });
///
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = defaultInstance.Id,
///         SupportMulticast = true,
///     });
///
///     var defaultTransitRouterVpcAttachment = new AliCloud.Cen.TransitRouterVpcAttachment("default", new()
///     {
///         CenId = defaultInstance.Id,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         VpcId = defaultNetwork.Id,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = defaultMaster.ZoneId,
///                 VswitchId = defaultMaster.Id,
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = defaultSlave.ZoneId,
///                 VswitchId = defaultSlave.Id,
///             },
///         },
///         TransitRouterAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultTransitRouterMulticastDomain = new AliCloud.Cen.TransitRouterMulticastDomain("default", new()
///     {
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         TransitRouterMulticastDomainName = name,
///         TransitRouterMulticastDomainDescription = name,
///     });
///
///     var defaultEcsNetworkInterface = new AliCloud.Ecs.EcsNetworkInterface("default", new()
///     {
///         NetworkInterfaceName = name,
///         VswitchId = defaultMaster.Id,
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         Description = "Basic test",
///         PrimaryIpAddress = defaultMaster.CidrBlock.Apply(cidrBlock => Std.Cidrhost.Invoke(new()
///         {
///             Input = cidrBlock,
///             Host = 100,
///         })).Apply(invoke => invoke.Result),
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Test" },
///         },
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///     });
///
///     var defaultTransitRouterMulticastDomainAssociation = new AliCloud.Cen.TransitRouterMulticastDomainAssociation("default", new()
///     {
///         TransitRouterMulticastDomainId = defaultTransitRouterMulticastDomain.Id,
///         TransitRouterAttachmentId = defaultTransitRouterVpcAttachment.TransitRouterAttachmentId,
///         VswitchId = defaultMaster.Id,
///     });
///
///     var example = new AliCloud.Cen.TransitRouterMulticastDomainSource("example", new()
///     {
///         VpcId = defaultNetwork.Id,
///         TransitRouterMulticastDomainId = defaultTransitRouterMulticastDomainAssociation.TransitRouterMulticastDomainId,
///         NetworkInterfaceId = defaultEcsNetworkInterface.Id,
///         GroupIpAddress = "239.1.1.1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf_example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{
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
/// defaultMaster, err := vpc.NewSwitch(ctx, "default_master", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.1.0/24"),
/// ZoneId: pulumi.String("cn-hangzhou-i"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSlave, err := vpc.NewSwitch(ctx, "default_slave", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String("192.168.2.0/24"),
/// ZoneId: pulumi.String("cn-hangzhou-j"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// CenInstanceName: pulumi.String(name),
/// ProtectionLevel: pulumi.String("REDUCED"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// CenId: defaultInstance.ID(),
/// SupportMulticast: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// defaultTransitRouterVpcAttachment, err := cen.NewTransitRouterVpcAttachment(ctx, "default", &cen.TransitRouterVpcAttachmentArgs{
/// CenId: defaultInstance.ID(),
/// TransitRouterId: defaultTransitRouter.TransitRouterId,
/// VpcId: defaultNetwork.ID(),
/// ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// &cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// ZoneId: defaultMaster.ZoneId,
/// VswitchId: defaultMaster.ID(),
/// },
/// &cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// ZoneId: defaultSlave.ZoneId,
/// VswitchId: defaultSlave.ID(),
/// },
/// },
/// TransitRouterAttachmentName: pulumi.String(name),
/// TransitRouterAttachmentDescription: pulumi.String(name),
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
/// defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// Status: pulumi.StringRef("OK"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultTransitRouterMulticastDomain, err := cen.NewTransitRouterMulticastDomain(ctx, "default", &cen.TransitRouterMulticastDomainArgs{
/// TransitRouterId: defaultTransitRouter.TransitRouterId,
/// TransitRouterMulticastDomainName: pulumi.String(name),
/// TransitRouterMulticastDomainDescription: pulumi.String(name),
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
/// NetworkInterfaceName: pulumi.String(name),
/// VswitchId: defaultMaster.ID(),
/// SecurityGroupIds: pulumi.StringArray{
/// defaultSecurityGroup.ID(),
/// },
/// Description: pulumi.String("Basic test"),
/// PrimaryIpAddress: pulumi.String(defaultMaster.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrhostResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrhostResultOutput).ApplyT(func(invoke std.CidrhostResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// Tags: pulumi.StringMap{
/// "Created": pulumi.String("TF"),
/// "For": pulumi.String("Test"),
/// },
/// ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// })
/// if err != nil {
/// return err
/// }
/// defaultTransitRouterMulticastDomainAssociation, err := cen.NewTransitRouterMulticastDomainAssociation(ctx, "default", &cen.TransitRouterMulticastDomainAssociationArgs{
/// TransitRouterMulticastDomainId: defaultTransitRouterMulticastDomain.ID(),
/// TransitRouterAttachmentId: defaultTransitRouterVpcAttachment.TransitRouterAttachmentId,
/// VswitchId: defaultMaster.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cen.NewTransitRouterMulticastDomainSource(ctx, "example", &cen.TransitRouterMulticastDomainSourceArgs{
/// VpcId: defaultNetwork.ID(),
/// TransitRouterMulticastDomainId: defaultTransitRouterMulticastDomainAssociation.TransitRouterMulticastDomainId,
/// NetworkInterfaceId: defaultEcsNetworkInterface.ID(),
/// GroupIpAddress: pulumi.String("239.1.1.1"),
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
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterAvailableResourcesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomain;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainArgs;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterface;
/// import com.pulumi.alicloud.ecs.EcsNetworkInterfaceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrhostArgs;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainAssociation;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainAssociationArgs;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainSource;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainSourceArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultMaster = new Switch("defaultMaster", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.1.0/24")
///             .zoneId("cn-hangzhou-i")
///             .build());
///
///         var defaultSlave = new Switch("defaultSlave", SwitchArgs.builder()
///             .vswitchName(name)
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.2.0/24")
///             .zoneId("cn-hangzhou-j")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultInstance.id())
///             .supportMulticast(true)
///             .build());
///
///         var defaultTransitRouterVpcAttachment = new TransitRouterVpcAttachment("defaultTransitRouterVpcAttachment", TransitRouterVpcAttachmentArgs.builder()
///             .cenId(defaultInstance.id())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .vpcId(defaultNetwork.id())
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(defaultMaster.zoneId())
///                     .vswitchId(defaultMaster.id())
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(defaultSlave.zoneId())
///                     .vswitchId(defaultSlave.id())
///                     .build())
///             .transitRouterAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var defaultTransitRouterMulticastDomain = new TransitRouterMulticastDomain("defaultTransitRouterMulticastDomain", TransitRouterMulticastDomainArgs.builder()
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .transitRouterMulticastDomainName(name)
///             .transitRouterMulticastDomainDescription(name)
///             .build());
///
///         var defaultEcsNetworkInterface = new EcsNetworkInterface("defaultEcsNetworkInterface", EcsNetworkInterfaceArgs.builder()
///             .networkInterfaceName(name)
///             .vswitchId(defaultMaster.id())
///             .securityGroupIds(defaultSecurityGroup.id())
///             .description("Basic test")
///             .primaryIpAddress(defaultMaster.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrhost(CidrhostArgs.builder()
///                 .input(_cidrBlock)
///                 .host(100)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Test")
///             ))
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .build());
///
///         var defaultTransitRouterMulticastDomainAssociation = new TransitRouterMulticastDomainAssociation("defaultTransitRouterMulticastDomainAssociation", TransitRouterMulticastDomainAssociationArgs.builder()
///             .transitRouterMulticastDomainId(defaultTransitRouterMulticastDomain.id())
///             .transitRouterAttachmentId(defaultTransitRouterVpcAttachment.transitRouterAttachmentId())
///             .vswitchId(defaultMaster.id())
///             .build());
///
///         var example = new TransitRouterMulticastDomainSource("example", TransitRouterMulticastDomainSourceArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .transitRouterMulticastDomainId(defaultTransitRouterMulticastDomainAssociation.transitRouterMulticastDomainId())
///             .networkInterfaceId(defaultEcsNetworkInterface.id())
///             .groupIpAddress("239.1.1.1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   defaultMaster:
///     type: alicloud:vpc:Switch
///     name: default_master
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.1.0/24
///       zoneId: cn-hangzhou-i
///   defaultSlave:
///     type: alicloud:vpc:Switch
///     name: default_slave
///     properties:
///       vswitchName: ${name}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.2.0/24
///       zoneId: cn-hangzhou-j
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   defaultTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       supportMulticast: true
///   defaultTransitRouterVpcAttachment:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       vpcId: ${defaultNetwork.id}
///       zoneMappings:
///         - zoneId: ${defaultMaster.zoneId}
///           vswitchId: ${defaultMaster.id}
///         - zoneId: ${defaultSlave.zoneId}
///           vswitchId: ${defaultSlave.id}
///       transitRouterAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultTransitRouterMulticastDomain:
///     type: alicloud:cen:TransitRouterMulticastDomain
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       transitRouterMulticastDomainName: ${name}
///       transitRouterMulticastDomainDescription: ${name}
///   defaultEcsNetworkInterface:
///     type: alicloud:ecs:EcsNetworkInterface
///     name: default
///     properties:
///       networkInterfaceName: ${name}
///       vswitchId: ${defaultMaster.id}
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       description: Basic test
///       primaryIpAddress:
///         fn::invoke:
///           function: std:cidrhost
///           arguments:
///             input: ${defaultMaster.cidrBlock}
///             host: 100
///           return: result
///       tags:
///         Created: TF
///         For: Test
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///   defaultTransitRouterMulticastDomainAssociation:
///     type: alicloud:cen:TransitRouterMulticastDomainAssociation
///     name: default
///     properties:
///       transitRouterMulticastDomainId: ${defaultTransitRouterMulticastDomain.id}
///       transitRouterAttachmentId: ${defaultTransitRouterVpcAttachment.transitRouterAttachmentId}
///       vswitchId: ${defaultMaster.id}
///   example:
///     type: alicloud:cen:TransitRouterMulticastDomainSource
///     properties:
///       vpcId: ${defaultNetwork.id}
///       transitRouterMulticastDomainId: ${defaultTransitRouterMulticastDomainAssociation.transitRouterMulticastDomainId}
///       networkInterfaceId: ${defaultEcsNetworkInterface.id}
///       groupIpAddress: 239.1.1.1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cen Transit Router Multicast Domain Source can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterMulticastDomainSource:TransitRouterMulticastDomainSource example <transit_router_multicast_domain_id>:<group_ip_address>:<network_interface_id>
/// ```
class TransitRouterMulticastDomainSource extends pulumi.CustomResource {
  /// The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  late final pulumi.Output<String> groupIpAddress;
  /// ENI ID of the multicast source.
  late final pulumi.Output<String> networkInterfaceId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The ID of the multicast domain to which the multicast source belongs.
  late final pulumi.Output<String> transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [TransitRouterMulticastDomainSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterMulticastDomainSource]. {@macro pulumi_cen_transit_router_multicast_domain_source_transit_router_multicast_domain_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterMulticastDomainSource(
    String name, {
    TransitRouterMulticastDomainSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterMulticastDomainSource:TransitRouterMulticastDomainSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupIpAddress = registerOutput<String>('groupIpAddress');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.status = registerOutput<String>('status');
    this.transitRouterMulticastDomainId = registerOutput<String>('transitRouterMulticastDomainId');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [TransitRouterMulticastDomainSource] resource's state with the given [name] and [id].
  static TransitRouterMulticastDomainSource get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterMulticastDomainSourceState? state,
  }) {
    return TransitRouterMulticastDomainSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterMulticastDomainSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterMulticastDomainSource:TransitRouterMulticastDomainSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupIpAddress = registerOutput<String>('groupIpAddress');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.status = registerOutput<String>('status');
    this.transitRouterMulticastDomainId = registerOutput<String>('transitRouterMulticastDomainId');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
