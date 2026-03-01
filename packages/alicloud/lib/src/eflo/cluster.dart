import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_component.dart';
import 'cluster_networks.dart';
import 'cluster_node_group.dart';

/// Provides a Eflo Cluster resource.
///
/// Large computing cluster.
///
/// For information about Eflo Cluster and how to use it, see [What is Cluster](https://next.api.alibabacloud.com/document/eflo-controller/2022-12-15/CreateCluster).
///
/// > **NOTE:** Available since v1.246.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const createVpc = new alicloud.vpc.Network("create_vpc", {
///     cidrBlock: "192.168.0.0/16",
///     vpcName: "cluster-resoure-example",
/// });
/// const createVswitch = new alicloud.vpc.Switch("create_vswitch", {
///     vpcId: createVpc.id,
///     zoneId: "cn-hangzhou-b",
///     cidrBlock: "192.168.0.0/24",
///     vswitchName: "cluster-resoure-example",
/// });
/// const createSecurityGroup = new alicloud.ecs.SecurityGroup("create_security_group", {
///     description: "sg",
///     securityGroupName: "cluster-resoure-example",
///     securityGroupType: "normal",
///     vpcId: createVpc.id,
/// });
/// const defaultCluster = new alicloud.eflo.Cluster("default", {
///     clusterDescription: "cluster-resource-example",
///     openEniJumboFrame: false,
///     hpnZone: "B1",
///     nimizVswitches: ["1111"],
///     ignoreFailedNodeTasks: true,
///     resourceGroupId: _default.then(_default => _default.ids?.[1]),
///     nodeGroups: [{
///         imageId: "i198448731735114628708",
///         zoneId: "cn-hangzhou-b",
///         nodeGroupName: "cluster-resource-example",
///         nodeGroupDescription: "cluster-resource-example",
///         machineType: "efg2.C48cA3sen",
///     }],
///     networks: {
///         tailIpVersion: "ipv4",
///         newVpdInfo: {
///             monitorVpcId: createVpc.id,
///             monitorVswitchId: createVswitch.id,
///             cenId: "11111",
///             cloudLinkId: "1111",
///             vpdCidr: "111",
///             vpdSubnets: [{
///                 zoneId: "1111",
///                 subnetCidr: "111",
///                 subnetType: "111",
///             }],
///             cloudLinkCidr: "169.254.128.0/23",
///         },
///         securityGroupId: createSecurityGroup.id,
///         vswitchZoneId: "cn-hangzhou-b",
///         vpcId: createVpc.id,
///         vswitchId: createVswitch.id,
///         vpdInfo: {
///             vpdId: "111",
///             vpdSubnets: ["111"],
///         },
///         ipAllocationPolicies: [{
///             bondPolicy: {
///                 bondDefaultSubnet: "111",
///                 bonds: [{
///                     name: "111",
///                     subnet: "111",
///                 }],
///             },
///             machineTypePolicies: [{
///                 bonds: [{
///                     name: "111",
///                     subnet: "111",
///                 }],
///                 machineType: "111",
///             }],
///             nodePolicies: [{
///                 bonds: [{
///                     name: "111",
///                     subnet: "111",
///                 }],
///                 nodeId: "111",
///             }],
///         }],
///     },
///     clusterName: "tfacceflo7165",
///     clusterType: "Lite",
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// create_vpc = alicloud.vpc.Network("create_vpc",
///     cidr_block="192.168.0.0/16",
///     vpc_name="cluster-resoure-example")
/// create_vswitch = alicloud.vpc.Switch("create_vswitch",
///     vpc_id=create_vpc.id,
///     zone_id="cn-hangzhou-b",
///     cidr_block="192.168.0.0/24",
///     vswitch_name="cluster-resoure-example")
/// create_security_group = alicloud.ecs.SecurityGroup("create_security_group",
///     description="sg",
///     security_group_name="cluster-resoure-example",
///     security_group_type="normal",
///     vpc_id=create_vpc.id)
/// default_cluster = alicloud.eflo.Cluster("default",
///     cluster_description="cluster-resource-example",
///     open_eni_jumbo_frame=False,
///     hpn_zone="B1",
///     nimiz_vswitches=["1111"],
///     ignore_failed_node_tasks=True,
///     resource_group_id=default.ids[1],
///     node_groups=[{
///         "image_id": "i198448731735114628708",
///         "zone_id": "cn-hangzhou-b",
///         "node_group_name": "cluster-resource-example",
///         "node_group_description": "cluster-resource-example",
///         "machine_type": "efg2.C48cA3sen",
///     }],
///     networks={
///         "tail_ip_version": "ipv4",
///         "new_vpd_info": {
///             "monitor_vpc_id": create_vpc.id,
///             "monitor_vswitch_id": create_vswitch.id,
///             "cen_id": "11111",
///             "cloud_link_id": "1111",
///             "vpd_cidr": "111",
///             "vpd_subnets": [{
///                 "zone_id": "1111",
///                 "subnet_cidr": "111",
///                 "subnet_type": "111",
///             }],
///             "cloud_link_cidr": "169.254.128.0/23",
///         },
///         "security_group_id": create_security_group.id,
///         "vswitch_zone_id": "cn-hangzhou-b",
///         "vpc_id": create_vpc.id,
///         "vswitch_id": create_vswitch.id,
///         "vpd_info": {
///             "vpd_id": "111",
///             "vpd_subnets": ["111"],
///         },
///         "ip_allocation_policies": [{
///             "bond_policy": {
///                 "bond_default_subnet": "111",
///                 "bonds": [{
///                     "name": "111",
///                     "subnet": "111",
///                 }],
///             },
///             "machine_type_policies": [{
///                 "bonds": [{
///                     "name": "111",
///                     "subnet": "111",
///                 }],
///                 "machine_type": "111",
///             }],
///             "node_policies": [{
///                 "bonds": [{
///                     "name": "111",
///                     "subnet": "111",
///                 }],
///                 "node_id": "111",
///             }],
///         }],
///     },
///     cluster_name="tfacceflo7165",
///     cluster_type="Lite")
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var createVpc = new AliCloud.Vpc.Network("create_vpc", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///         VpcName = "cluster-resoure-example",
///     });
///
///     var createVswitch = new AliCloud.Vpc.Switch("create_vswitch", new()
///     {
///         VpcId = createVpc.Id,
///         ZoneId = "cn-hangzhou-b",
///         CidrBlock = "192.168.0.0/24",
///         VswitchName = "cluster-resoure-example",
///     });
///
///     var createSecurityGroup = new AliCloud.Ecs.SecurityGroup("create_security_group", new()
///     {
///         Description = "sg",
///         SecurityGroupName = "cluster-resoure-example",
///         SecurityGroupType = "normal",
///         VpcId = createVpc.Id,
///     });
///
///     var defaultCluster = new AliCloud.Eflo.Cluster("default", new()
///     {
///         ClusterDescription = "cluster-resource-example",
///         OpenEniJumboFrame = false,
///         HpnZone = "B1",
///         NimizVswitches = new[]
///         {
///             "1111",
///         },
///         IgnoreFailedNodeTasks = true,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[1])),
///         NodeGroups = new[]
///         {
///             new AliCloud.Eflo.Inputs.ClusterNodeGroupArgs
///             {
///                 ImageId = "i198448731735114628708",
///                 ZoneId = "cn-hangzhou-b",
///                 NodeGroupName = "cluster-resource-example",
///                 NodeGroupDescription = "cluster-resource-example",
///                 MachineType = "efg2.C48cA3sen",
///             },
///         },
///         Networks = new AliCloud.Eflo.Inputs.ClusterNetworksArgs
///         {
///             TailIpVersion = "ipv4",
///             NewVpdInfo = new AliCloud.Eflo.Inputs.ClusterNetworksNewVpdInfoArgs
///             {
///                 MonitorVpcId = createVpc.Id,
///                 MonitorVswitchId = createVswitch.Id,
///                 CenId = "11111",
///                 CloudLinkId = "1111",
///                 VpdCidr = "111",
///                 VpdSubnets = new[]
///                 {
///                     new AliCloud.Eflo.Inputs.ClusterNetworksNewVpdInfoVpdSubnetArgs
///                     {
///                         ZoneId = "1111",
///                         SubnetCidr = "111",
///                         SubnetType = "111",
///                     },
///                 },
///                 CloudLinkCidr = "169.254.128.0/23",
///             },
///             SecurityGroupId = createSecurityGroup.Id,
///             VswitchZoneId = "cn-hangzhou-b",
///             VpcId = createVpc.Id,
///             VswitchId = createVswitch.Id,
///             VpdInfo = new AliCloud.Eflo.Inputs.ClusterNetworksVpdInfoArgs
///             {
///                 VpdId = "111",
///                 VpdSubnets = new[]
///                 {
///                     "111",
///                 },
///             },
///             IpAllocationPolicies = new[]
///             {
///                 new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyArgs
///                 {
///                     BondPolicy = new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyBondPolicyArgs
///                     {
///                         BondDefaultSubnet = "111",
///                         Bonds = new[]
///                         {
///                             new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyBondPolicyBondArgs
///                             {
///                                 Name = "111",
///                                 Subnet = "111",
///                             },
///                         },
///                     },
///                     MachineTypePolicies = new[]
///                     {
///                         new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyMachineTypePolicyArgs
///                         {
///                             Bonds = new[]
///                             {
///                                 new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyMachineTypePolicyBondArgs
///                                 {
///                                     Name = "111",
///                                     Subnet = "111",
///                                 },
///                             },
///                             MachineType = "111",
///                         },
///                     },
///                     NodePolicies = new[]
///                     {
///                         new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyNodePolicyArgs
///                         {
///                             Bonds = new[]
///                             {
///                                 new AliCloud.Eflo.Inputs.ClusterNetworksIpAllocationPolicyNodePolicyBondArgs
///                                 {
///                                     Name = "111",
///                                     Subnet = "111",
///                                 },
///                             },
///                             NodeId = "111",
///                         },
///                     },
///                 },
///             },
///         },
///         ClusterName = "tfacceflo7165",
///         ClusterType = "Lite",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVpc, err := vpc.NewNetwork(ctx, "create_vpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 			VpcName:   pulumi.String("cluster-resoure-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createVswitch, err := vpc.NewSwitch(ctx, "create_vswitch", &vpc.SwitchArgs{
/// 			VpcId:       createVpc.ID(),
/// 			ZoneId:      pulumi.String("cn-hangzhou-b"),
/// 			CidrBlock:   pulumi.String("192.168.0.0/24"),
/// 			VswitchName: pulumi.String("cluster-resoure-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createSecurityGroup, err := ecs.NewSecurityGroup(ctx, "create_security_group", &ecs.SecurityGroupArgs{
/// 			Description:       pulumi.String("sg"),
/// 			SecurityGroupName: pulumi.String("cluster-resoure-example"),
/// 			SecurityGroupType: pulumi.String("normal"),
/// 			VpcId:             createVpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewCluster(ctx, "default", &eflo.ClusterArgs{
/// 			ClusterDescription: pulumi.String("cluster-resource-example"),
/// 			OpenEniJumboFrame:  pulumi.Bool(false),
/// 			HpnZone:            pulumi.String("B1"),
/// 			NimizVswitches: pulumi.StringArray{
/// 				pulumi.String("1111"),
/// 			},
/// 			IgnoreFailedNodeTasks: pulumi.Bool(true),
/// 			ResourceGroupId:       pulumi.String(_default.Ids[1]),
/// 			NodeGroups: eflo.ClusterNodeGroupArray{
/// 				&eflo.ClusterNodeGroupArgs{
/// 					ImageId:              pulumi.String("i198448731735114628708"),
/// 					ZoneId:               pulumi.String("cn-hangzhou-b"),
/// 					NodeGroupName:        pulumi.String("cluster-resource-example"),
/// 					NodeGroupDescription: pulumi.String("cluster-resource-example"),
/// 					MachineType:          pulumi.String("efg2.C48cA3sen"),
/// 				},
/// 			},
/// 			Networks: &eflo.ClusterNetworksArgs{
/// 				TailIpVersion: pulumi.String("ipv4"),
/// 				NewVpdInfo: &eflo.ClusterNetworksNewVpdInfoArgs{
/// 					MonitorVpcId:     createVpc.ID(),
/// 					MonitorVswitchId: createVswitch.ID(),
/// 					CenId:            pulumi.String("11111"),
/// 					CloudLinkId:      pulumi.String("1111"),
/// 					VpdCidr:          pulumi.String("111"),
/// 					VpdSubnets: eflo.ClusterNetworksNewVpdInfoVpdSubnetArray{
/// 						&eflo.ClusterNetworksNewVpdInfoVpdSubnetArgs{
/// 							ZoneId:     pulumi.String("1111"),
/// 							SubnetCidr: pulumi.String("111"),
/// 							SubnetType: pulumi.String("111"),
/// 						},
/// 					},
/// 					CloudLinkCidr: pulumi.String("169.254.128.0/23"),
/// 				},
/// 				SecurityGroupId: createSecurityGroup.ID(),
/// 				VswitchZoneId:   pulumi.String("cn-hangzhou-b"),
/// 				VpcId:           createVpc.ID(),
/// 				VswitchId:       createVswitch.ID(),
/// 				VpdInfo: &eflo.ClusterNetworksVpdInfoArgs{
/// 					VpdId: pulumi.String("111"),
/// 					VpdSubnets: pulumi.StringArray{
/// 						pulumi.String("111"),
/// 					},
/// 				},
/// 				IpAllocationPolicies: eflo.ClusterNetworksIpAllocationPolicyArray{
/// 					&eflo.ClusterNetworksIpAllocationPolicyArgs{
/// 						BondPolicy: &eflo.ClusterNetworksIpAllocationPolicyBondPolicyArgs{
/// 							BondDefaultSubnet: pulumi.String("111"),
/// 							Bonds: eflo.ClusterNetworksIpAllocationPolicyBondPolicyBondArray{
/// 								&eflo.ClusterNetworksIpAllocationPolicyBondPolicyBondArgs{
/// 									Name:   pulumi.String("111"),
/// 									Subnet: pulumi.String("111"),
/// 								},
/// 							},
/// 						},
/// 						MachineTypePolicies: eflo.ClusterNetworksIpAllocationPolicyMachineTypePolicyArray{
/// 							&eflo.ClusterNetworksIpAllocationPolicyMachineTypePolicyArgs{
/// 								Bonds: eflo.ClusterNetworksIpAllocationPolicyMachineTypePolicyBondArray{
/// 									&eflo.ClusterNetworksIpAllocationPolicyMachineTypePolicyBondArgs{
/// 										Name:   pulumi.String("111"),
/// 										Subnet: pulumi.String("111"),
/// 									},
/// 								},
/// 								MachineType: pulumi.String("111"),
/// 							},
/// 						},
/// 						NodePolicies: eflo.ClusterNetworksIpAllocationPolicyNodePolicyArray{
/// 							&eflo.ClusterNetworksIpAllocationPolicyNodePolicyArgs{
/// 								Bonds: eflo.ClusterNetworksIpAllocationPolicyNodePolicyBondArray{
/// 									&eflo.ClusterNetworksIpAllocationPolicyNodePolicyBondArgs{
/// 										Name:   pulumi.String("111"),
/// 										Subnet: pulumi.String("111"),
/// 									},
/// 								},
/// 								NodeId: pulumi.String("111"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ClusterName: pulumi.String("tfacceflo7165"),
/// 			ClusterType: pulumi.String("Lite"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.eflo.Cluster;
/// import com.pulumi.alicloud.eflo.ClusterArgs;
/// import com.pulumi.alicloud.eflo.inputs.ClusterNodeGroupArgs;
/// import com.pulumi.alicloud.eflo.inputs.ClusterNetworksArgs;
/// import com.pulumi.alicloud.eflo.inputs.ClusterNetworksNewVpdInfoArgs;
/// import com.pulumi.alicloud.eflo.inputs.ClusterNetworksVpdInfoArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var createVpc = new Network("createVpc", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .vpcName("cluster-resoure-example")
///             .build());
///
///         var createVswitch = new Switch("createVswitch", SwitchArgs.builder()
///             .vpcId(createVpc.id())
///             .zoneId("cn-hangzhou-b")
///             .cidrBlock("192.168.0.0/24")
///             .vswitchName("cluster-resoure-example")
///             .build());
///
///         var createSecurityGroup = new SecurityGroup("createSecurityGroup", SecurityGroupArgs.builder()
///             .description("sg")
///             .securityGroupName("cluster-resoure-example")
///             .securityGroupType("normal")
///             .vpcId(createVpc.id())
///             .build());
///
///         var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
///             .clusterDescription("cluster-resource-example")
///             .openEniJumboFrame(false)
///             .hpnZone("B1")
///             .nimizVswitches("1111")
///             .ignoreFailedNodeTasks(true)
///             .resourceGroupId(default_.ids()[1])
///             .nodeGroups(ClusterNodeGroupArgs.builder()
///                 .imageId("i198448731735114628708")
///                 .zoneId("cn-hangzhou-b")
///                 .nodeGroupName("cluster-resource-example")
///                 .nodeGroupDescription("cluster-resource-example")
///                 .machineType("efg2.C48cA3sen")
///                 .build())
///             .networks(ClusterNetworksArgs.builder()
///                 .tailIpVersion("ipv4")
///                 .newVpdInfo(ClusterNetworksNewVpdInfoArgs.builder()
///                     .monitorVpcId(createVpc.id())
///                     .monitorVswitchId(createVswitch.id())
///                     .cenId("11111")
///                     .cloudLinkId("1111")
///                     .vpdCidr("111")
///                     .vpdSubnets(ClusterNetworksNewVpdInfoVpdSubnetArgs.builder()
///                         .zoneId("1111")
///                         .subnetCidr("111")
///                         .subnetType("111")
///                         .build())
///                     .cloudLinkCidr("169.254.128.0/23")
///                     .build())
///                 .securityGroupId(createSecurityGroup.id())
///                 .vswitchZoneId("cn-hangzhou-b")
///                 .vpcId(createVpc.id())
///                 .vswitchId(createVswitch.id())
///                 .vpdInfo(ClusterNetworksVpdInfoArgs.builder()
///                     .vpdId("111")
///                     .vpdSubnets("111")
///                     .build())
///                 .ipAllocationPolicies(ClusterNetworksIpAllocationPolicyArgs.builder()
///                     .bondPolicy(ClusterNetworksIpAllocationPolicyBondPolicyArgs.builder()
///                         .bondDefaultSubnet("111")
///                         .bonds(ClusterNetworksIpAllocationPolicyBondPolicyBondArgs.builder()
///                             .name("111")
///                             .subnet("111")
///                             .build())
///                         .build())
///                     .machineTypePolicies(ClusterNetworksIpAllocationPolicyMachineTypePolicyArgs.builder()
///                         .bonds(ClusterNetworksIpAllocationPolicyMachineTypePolicyBondArgs.builder()
///                             .name("111")
///                             .subnet("111")
///                             .build())
///                         .machineType("111")
///                         .build())
///                     .nodePolicies(ClusterNetworksIpAllocationPolicyNodePolicyArgs.builder()
///                         .bonds(ClusterNetworksIpAllocationPolicyNodePolicyBondArgs.builder()
///                             .name("111")
///                             .subnet("111")
///                             .build())
///                         .nodeId("111")
///                         .build())
///                     .build())
///                 .build())
///             .clusterName("tfacceflo7165")
///             .clusterType("Lite")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   # Before executing this example, you need to confirm with the product team whether the resources are sufficient or you will get an error message with "Failure to check order before create instance"
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   createVpc:
///     type: alicloud:vpc:Network
///     name: create_vpc
///     properties:
///       cidrBlock: 192.168.0.0/16
///       vpcName: cluster-resoure-example
///   createVswitch:
///     type: alicloud:vpc:Switch
///     name: create_vswitch
///     properties:
///       vpcId: ${createVpc.id}
///       zoneId: cn-hangzhou-b
///       cidrBlock: 192.168.0.0/24
///       vswitchName: cluster-resoure-example
///   createSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: create_security_group
///     properties:
///       description: sg
///       securityGroupName: cluster-resoure-example
///       securityGroupType: normal
///       vpcId: ${createVpc.id}
///   defaultCluster:
///     type: alicloud:eflo:Cluster
///     name: default
///     properties:
///       clusterDescription: cluster-resource-example
///       openEniJumboFrame: 'false'
///       hpnZone: B1
///       nimizVswitches:
///         - '1111'
///       ignoreFailedNodeTasks: 'true'
///       resourceGroupId: ${default.ids[1]}
///       nodeGroups:
///         - imageId: i198448731735114628708
///           zoneId: cn-hangzhou-b
///           nodeGroupName: cluster-resource-example
///           nodeGroupDescription: cluster-resource-example
///           machineType: efg2.C48cA3sen
///       networks:
///         tailIpVersion: ipv4
///         newVpdInfo:
///           monitorVpcId: ${createVpc.id}
///           monitorVswitchId: ${createVswitch.id}
///           cenId: '11111'
///           cloudLinkId: '1111'
///           vpdCidr: '111'
///           vpdSubnets:
///             - zoneId: '1111'
///               subnetCidr: '111'
///               subnetType: '111'
///           cloudLinkCidr: 169.254.128.0/23
///         securityGroupId: ${createSecurityGroup.id}
///         vswitchZoneId: cn-hangzhou-b
///         vpcId: ${createVpc.id}
///         vswitchId: ${createVswitch.id}
///         vpdInfo:
///           vpdId: '111'
///           vpdSubnets:
///             - '111'
///         ipAllocationPolicies:
///           - bondPolicy:
///               bondDefaultSubnet: '111'
///               bonds:
///                 - name: '111'
///                   subnet: '111'
///             machineTypePolicies:
///               - bonds:
///                   - name: '111'
///                     subnet: '111'
///                 machineType: '111'
///             nodePolicies:
///               - bonds:
///                   - name: '111'
///                     subnet: '111'
///                 nodeId: '111'
///       clusterName: tfacceflo7165
///       clusterType: Lite
/// variables:
///   default:
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
/// Eflo Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/cluster:Cluster example <id>
/// ```
class Cluster extends pulumi.CustomResource {
  /// cluster description
  late final pulumi.Output<String?> clusterDescription;
  /// ClusterName
  late final pulumi.Output<String?> clusterName;
  /// cluster type
  late final pulumi.Output<String?> clusterType;
  /// Component (software instance) See `components` below.
  late final pulumi.Output<List<ClusterComponent>?> components;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Cluster Number
  late final pulumi.Output<String?> hpnZone;
  /// Whether to allow skipping failed nodes. Default value: False
  late final pulumi.Output<bool?> ignoreFailedNodeTasks;
  /// Network Information See `networks` below.
  late final pulumi.Output<ClusterNetworks?> networks;
  /// Node virtual switch
  late final pulumi.Output<List<String>?> nimizVswitches;
  /// Node Group List See `node_groups` below.
  late final pulumi.Output<List<ClusterNodeGroup>?> nodeGroups;
  /// Whether the network interface supports jumbo frames
  late final pulumi.Output<bool?> openEniJumboFrame;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// tag
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_eflo_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterDescription = registerOutput<String?>('clusterDescription');
    this.clusterName = registerOutput<String?>('clusterName');
    this.clusterType = registerOutput<String?>('clusterType');
    this.components = registerOutput<List<ClusterComponent>?>('components');
    this.createTime = registerOutput<String>('createTime');
    this.hpnZone = registerOutput<String?>('hpnZone');
    this.ignoreFailedNodeTasks = registerOutput<bool?>('ignoreFailedNodeTasks');
    this.networks = registerOutput<ClusterNetworks?>('networks');
    this.nimizVswitches = registerOutput<List<String>?>('nimizVswitches');
    this.nodeGroups = registerOutput<List<ClusterNodeGroup>?>('nodeGroups');
    this.openEniJumboFrame = registerOutput<bool?>('openEniJumboFrame');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
