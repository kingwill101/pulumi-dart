import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_args.dart';
import 'node_group_ip_allocation_policy.dart';
import 'node_group_node.dart';
import 'node_group_state.dart';

/// Provides a Eflo Node Group resource.
///
/// Node group. Divide a cluster into multiple node groups, each containing multiple nodes.
///
/// For information about Eflo Node Group and how to use it, see [What is Node Group](https://next.api.alibabacloud.com/document/eflo-controller/2022-12-15/CreateNodeGroup).
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
/// const defaultNode = new alicloud.eflo.Node("default", {
///     period: 36,
///     discountLevel: "36",
///     billingCycle: "1month",
///     classify: "gpuserver",
///     zone: "cn-hangzhou-b",
///     productForm: "instance",
///     paymentRatio: "0",
///     hpnZone: "B1",
///     serverArch: "bmserver",
///     computingServer: "efg1.nvga1n",
///     stageNum: "36",
///     renewalStatus: "AutoRenewal",
///     renewPeriod: 36,
///     status: "Unused",
/// });
/// const defaultNodeGroup = new alicloud.eflo.NodeGroup("default", {
///     nodes: [{
///         nodeId: defaultNode.id,
///         vpcId: createVpc.id,
///         vswitchId: createVswitch.id,
///         hostname: "jxyhostname",
///         loginPassword: "Alibaba@2025",
///     }],
///     ignoreFailedNodeTasks: true,
///     clusterId: defaultCluster.id,
///     imageId: "i195048661660874208657",
///     zoneId: "cn-hangzhou-b",
///     vpdSubnets: ["example"],
///     userData: "YWxpLGFsaSxhbGliYWJh",
///     vswitchZoneId: "cn-hangzhou-b",
///     ipAllocationPolicies: [{
///         bondPolicy: {
///             bondDefaultSubnet: "example",
///             bonds: [{
///                 name: "example",
///                 subnet: "example",
///             }],
///         },
///         machineTypePolicies: [{
///             bonds: [{
///                 name: "example",
///                 subnet: "example",
///             }],
///             machineType: "example",
///         }],
///         nodePolicies: [{
///             nodeId: defaultNode.id,
///             bonds: [{
///                 name: "example",
///                 subnet: "example",
///             }],
///         }],
///     }],
///     machineType: "efg1.nvga1",
///     az: "cn-hangzhou-b",
///     nodeGroupDescription: "resource-example1",
///     nodeGroupName: "tfacceflo63657_update",
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
/// default_node = alicloud.eflo.Node("default",
///     period=36,
///     discount_level="36",
///     billing_cycle="1month",
///     classify="gpuserver",
///     zone="cn-hangzhou-b",
///     product_form="instance",
///     payment_ratio="0",
///     hpn_zone="B1",
///     server_arch="bmserver",
///     computing_server="efg1.nvga1n",
///     stage_num="36",
///     renewal_status="AutoRenewal",
///     renew_period=36,
///     status="Unused")
/// default_node_group = alicloud.eflo.NodeGroup("default",
///     nodes=[{
///         "node_id": default_node.id,
///         "vpc_id": create_vpc.id,
///         "vswitch_id": create_vswitch.id,
///         "hostname": "jxyhostname",
///         "login_password": "Alibaba@2025",
///     }],
///     ignore_failed_node_tasks=True,
///     cluster_id=default_cluster.id,
///     image_id="i195048661660874208657",
///     zone_id="cn-hangzhou-b",
///     vpd_subnets=["example"],
///     user_data="YWxpLGFsaSxhbGliYWJh",
///     vswitch_zone_id="cn-hangzhou-b",
///     ip_allocation_policies=[{
///         "bond_policy": {
///             "bond_default_subnet": "example",
///             "bonds": [{
///                 "name": "example",
///                 "subnet": "example",
///             }],
///         },
///         "machine_type_policies": [{
///             "bonds": [{
///                 "name": "example",
///                 "subnet": "example",
///             }],
///             "machine_type": "example",
///         }],
///         "node_policies": [{
///             "node_id": default_node.id,
///             "bonds": [{
///                 "name": "example",
///                 "subnet": "example",
///             }],
///         }],
///     }],
///     machine_type="efg1.nvga1",
///     az="cn-hangzhou-b",
///     node_group_description="resource-example1",
///     node_group_name="tfacceflo63657_update")
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
///     var defaultNode = new AliCloud.Eflo.Node("default", new()
///     {
///         Period = 36,
///         DiscountLevel = "36",
///         BillingCycle = "1month",
///         Classify = "gpuserver",
///         Zone = "cn-hangzhou-b",
///         ProductForm = "instance",
///         PaymentRatio = "0",
///         HpnZone = "B1",
///         ServerArch = "bmserver",
///         ComputingServer = "efg1.nvga1n",
///         StageNum = "36",
///         RenewalStatus = "AutoRenewal",
///         RenewPeriod = 36,
///         Status = "Unused",
///     });
///
///     var defaultNodeGroup = new AliCloud.Eflo.NodeGroup("default", new()
///     {
///         Nodes = new[]
///         {
///             new AliCloud.Eflo.Inputs.NodeGroupNodeArgs
///             {
///                 NodeId = defaultNode.Id,
///                 VpcId = createVpc.Id,
///                 VswitchId = createVswitch.Id,
///                 Hostname = "jxyhostname",
///                 LoginPassword = "Alibaba@2025",
///             },
///         },
///         IgnoreFailedNodeTasks = true,
///         ClusterId = defaultCluster.Id,
///         ImageId = "i195048661660874208657",
///         ZoneId = "cn-hangzhou-b",
///         VpdSubnets = new[]
///         {
///             "example",
///         },
///         UserData = "YWxpLGFsaSxhbGliYWJh",
///         VswitchZoneId = "cn-hangzhou-b",
///         IpAllocationPolicies = new[]
///         {
///             new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyArgs
///             {
///                 BondPolicy = new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyBondPolicyArgs
///                 {
///                     BondDefaultSubnet = "example",
///                     Bonds = new[]
///                     {
///                         new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyBondPolicyBondArgs
///                         {
///                             Name = "example",
///                             Subnet = "example",
///                         },
///                     },
///                 },
///                 MachineTypePolicies = new[]
///                 {
///                     new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyMachineTypePolicyArgs
///                     {
///                         Bonds = new[]
///                         {
///                             new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyMachineTypePolicyBondArgs
///                             {
///                                 Name = "example",
///                                 Subnet = "example",
///                             },
///                         },
///                         MachineType = "example",
///                     },
///                 },
///                 NodePolicies = new[]
///                 {
///                     new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyNodePolicyArgs
///                     {
///                         NodeId = defaultNode.Id,
///                         Bonds = new[]
///                         {
///                             new AliCloud.Eflo.Inputs.NodeGroupIpAllocationPolicyNodePolicyBondArgs
///                             {
///                                 Name = "example",
///                                 Subnet = "example",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         MachineType = "efg1.nvga1",
///         Az = "cn-hangzhou-b",
///         NodeGroupDescription = "resource-example1",
///         NodeGroupName = "tfacceflo63657_update",
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
/// 		defaultCluster, err := eflo.NewCluster(ctx, "default", &eflo.ClusterArgs{
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
/// 		defaultNode, err := eflo.NewNode(ctx, "default", &eflo.NodeArgs{
/// 			Period:          pulumi.Int(36),
/// 			DiscountLevel:   pulumi.String("36"),
/// 			BillingCycle:    pulumi.String("1month"),
/// 			Classify:        pulumi.String("gpuserver"),
/// 			Zone:            pulumi.String("cn-hangzhou-b"),
/// 			ProductForm:     pulumi.String("instance"),
/// 			PaymentRatio:    pulumi.String("0"),
/// 			HpnZone:         pulumi.String("B1"),
/// 			ServerArch:      pulumi.String("bmserver"),
/// 			ComputingServer: pulumi.String("efg1.nvga1n"),
/// 			StageNum:        pulumi.String("36"),
/// 			RenewalStatus:   pulumi.String("AutoRenewal"),
/// 			RenewPeriod:     pulumi.Int(36),
/// 			Status:          pulumi.String("Unused"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewNodeGroup(ctx, "default", &eflo.NodeGroupArgs{
/// 			Nodes: eflo.NodeGroupNodeArray{
/// 				&eflo.NodeGroupNodeArgs{
/// 					NodeId:        defaultNode.ID(),
/// 					VpcId:         createVpc.ID(),
/// 					VswitchId:     createVswitch.ID(),
/// 					Hostname:      pulumi.String("jxyhostname"),
/// 					LoginPassword: pulumi.String("Alibaba@2025"),
/// 				},
/// 			},
/// 			IgnoreFailedNodeTasks: pulumi.Bool(true),
/// 			ClusterId:             defaultCluster.ID(),
/// 			ImageId:               pulumi.String("i195048661660874208657"),
/// 			ZoneId:                pulumi.String("cn-hangzhou-b"),
/// 			VpdSubnets: pulumi.StringArray{
/// 				pulumi.String("example"),
/// 			},
/// 			UserData:      pulumi.String("YWxpLGFsaSxhbGliYWJh"),
/// 			VswitchZoneId: pulumi.String("cn-hangzhou-b"),
/// 			IpAllocationPolicies: eflo.NodeGroupIpAllocationPolicyArray{
/// 				&eflo.NodeGroupIpAllocationPolicyArgs{
/// 					BondPolicy: &eflo.NodeGroupIpAllocationPolicyBondPolicyArgs{
/// 						BondDefaultSubnet: pulumi.String("example"),
/// 						Bonds: eflo.NodeGroupIpAllocationPolicyBondPolicyBondArray{
/// 							&eflo.NodeGroupIpAllocationPolicyBondPolicyBondArgs{
/// 								Name:   pulumi.String("example"),
/// 								Subnet: pulumi.String("example"),
/// 							},
/// 						},
/// 					},
/// 					MachineTypePolicies: eflo.NodeGroupIpAllocationPolicyMachineTypePolicyArray{
/// 						&eflo.NodeGroupIpAllocationPolicyMachineTypePolicyArgs{
/// 							Bonds: eflo.NodeGroupIpAllocationPolicyMachineTypePolicyBondArray{
/// 								&eflo.NodeGroupIpAllocationPolicyMachineTypePolicyBondArgs{
/// 									Name:   pulumi.String("example"),
/// 									Subnet: pulumi.String("example"),
/// 								},
/// 							},
/// 							MachineType: pulumi.String("example"),
/// 						},
/// 					},
/// 					NodePolicies: eflo.NodeGroupIpAllocationPolicyNodePolicyArray{
/// 						&eflo.NodeGroupIpAllocationPolicyNodePolicyArgs{
/// 							NodeId: defaultNode.ID(),
/// 							Bonds: eflo.NodeGroupIpAllocationPolicyNodePolicyBondArray{
/// 								&eflo.NodeGroupIpAllocationPolicyNodePolicyBondArgs{
/// 									Name:   pulumi.String("example"),
/// 									Subnet: pulumi.String("example"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MachineType:          pulumi.String("efg1.nvga1"),
/// 			Az:                   pulumi.String("cn-hangzhou-b"),
/// 			NodeGroupDescription: pulumi.String("resource-example1"),
/// 			NodeGroupName:        pulumi.String("tfacceflo63657_update"),
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
/// import com.pulumi.alicloud.eflo.Node;
/// import com.pulumi.alicloud.eflo.NodeArgs;
/// import com.pulumi.alicloud.eflo.NodeGroup;
/// import com.pulumi.alicloud.eflo.NodeGroupArgs;
/// import com.pulumi.alicloud.eflo.inputs.NodeGroupNodeArgs;
/// import com.pulumi.alicloud.eflo.inputs.NodeGroupIpAllocationPolicyArgs;
/// import com.pulumi.alicloud.eflo.inputs.NodeGroupIpAllocationPolicyBondPolicyArgs;
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
///         var defaultNode = new Node("defaultNode", NodeArgs.builder()
///             .period(36)
///             .discountLevel("36")
///             .billingCycle("1month")
///             .classify("gpuserver")
///             .zone("cn-hangzhou-b")
///             .productForm("instance")
///             .paymentRatio("0")
///             .hpnZone("B1")
///             .serverArch("bmserver")
///             .computingServer("efg1.nvga1n")
///             .stageNum("36")
///             .renewalStatus("AutoRenewal")
///             .renewPeriod(36)
///             .status("Unused")
///             .build());
///
///         var defaultNodeGroup = new NodeGroup("defaultNodeGroup", NodeGroupArgs.builder()
///             .nodes(NodeGroupNodeArgs.builder()
///                 .nodeId(defaultNode.id())
///                 .vpcId(createVpc.id())
///                 .vswitchId(createVswitch.id())
///                 .hostname("jxyhostname")
///                 .loginPassword("Alibaba@2025")
///                 .build())
///             .ignoreFailedNodeTasks(true)
///             .clusterId(defaultCluster.id())
///             .imageId("i195048661660874208657")
///             .zoneId("cn-hangzhou-b")
///             .vpdSubnets("example")
///             .userData("YWxpLGFsaSxhbGliYWJh")
///             .vswitchZoneId("cn-hangzhou-b")
///             .ipAllocationPolicies(NodeGroupIpAllocationPolicyArgs.builder()
///                 .bondPolicy(NodeGroupIpAllocationPolicyBondPolicyArgs.builder()
///                     .bondDefaultSubnet("example")
///                     .bonds(NodeGroupIpAllocationPolicyBondPolicyBondArgs.builder()
///                         .name("example")
///                         .subnet("example")
///                         .build())
///                     .build())
///                 .machineTypePolicies(NodeGroupIpAllocationPolicyMachineTypePolicyArgs.builder()
///                     .bonds(NodeGroupIpAllocationPolicyMachineTypePolicyBondArgs.builder()
///                         .name("example")
///                         .subnet("example")
///                         .build())
///                     .machineType("example")
///                     .build())
///                 .nodePolicies(NodeGroupIpAllocationPolicyNodePolicyArgs.builder()
///                     .nodeId(defaultNode.id())
///                     .bonds(NodeGroupIpAllocationPolicyNodePolicyBondArgs.builder()
///                         .name("example")
///                         .subnet("example")
///                         .build())
///                     .build())
///                 .build())
///             .machineType("efg1.nvga1")
///             .az("cn-hangzhou-b")
///             .nodeGroupDescription("resource-example1")
///             .nodeGroupName("tfacceflo63657_update")
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
///   defaultNode:
///     type: alicloud:eflo:Node
///     name: default
///     properties:
///       period: '36'
///       discountLevel: '36'
///       billingCycle: 1month
///       classify: gpuserver
///       zone: cn-hangzhou-b
///       productForm: instance
///       paymentRatio: '0'
///       hpnZone: B1
///       serverArch: bmserver
///       computingServer: efg1.nvga1n
///       stageNum: '36'
///       renewalStatus: AutoRenewal
///       renewPeriod: '36'
///       status: Unused
///   defaultNodeGroup:
///     type: alicloud:eflo:NodeGroup
///     name: default
///     properties:
///       nodes:
///         - nodeId: ${defaultNode.id}
///           vpcId: ${createVpc.id}
///           vswitchId: ${createVswitch.id}
///           hostname: jxyhostname
///           loginPassword: Alibaba@2025
///       ignoreFailedNodeTasks: 'true'
///       clusterId: ${defaultCluster.id}
///       imageId: i195048661660874208657
///       zoneId: cn-hangzhou-b
///       vpdSubnets:
///         - example
///       userData: YWxpLGFsaSxhbGliYWJh
///       vswitchZoneId: cn-hangzhou-b
///       ipAllocationPolicies:
///         - bondPolicy:
///             bondDefaultSubnet: example
///             bonds:
///               - name: example
///                 subnet: example
///           machineTypePolicies:
///             - bonds:
///                 - name: example
///                   subnet: example
///               machineType: example
///           nodePolicies:
///             - nodeId: ${defaultNode.id}
///               bonds:
///                 - name: example
///                   subnet: example
///       machineType: efg1.nvga1
///       az: cn-hangzhou-b
///       nodeGroupDescription: resource-example1
///       nodeGroupName: tfacceflo63657_update
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
/// Eflo Node Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/nodeGroup:NodeGroup example <cluster_id>:<node_group_id>
/// ```
class NodeGroup extends pulumi.CustomResource {
  /// Az
  late final pulumi.Output<String> az;
  /// Cluster ID
  late final pulumi.Output<String> clusterId;
  /// Create time
  late final pulumi.Output<String> createTime;
  /// Whether to allow skipping failed nodes. Default value: False
  late final pulumi.Output<bool?> ignoreFailedNodeTasks;
  /// Image ID. You can modify the image ID since v1.252.0.
  late final pulumi.Output<String> imageId;
  /// IP address combination policy: only one policy type can be selected for each policy, and multiple policies can be combined. See `ip_allocation_policy` below.
  late final pulumi.Output<List<NodeGroupIpAllocationPolicy>?> ipAllocationPolicies;
  /// key pair name
  late final pulumi.Output<String?> keyPairName;
  /// Login Password
  late final pulumi.Output<String?> loginPassword;
  /// Machine type
  late final pulumi.Output<String> machineType;
  /// NodeGroupDescription
  late final pulumi.Output<String?> nodeGroupDescription;
  /// The first ID of the resource
  late final pulumi.Output<String> nodeGroupId;
  /// The name of the resource
  late final pulumi.Output<String> nodeGroupName;
  /// Node List See `nodes` below.
  late final pulumi.Output<List<NodeGroupNode>?> nodes;
  /// Custom Data
  late final pulumi.Output<String?> userData;
  /// Cluster subnet list
  late final pulumi.Output<List<String>?> vpdSubnets;
  /// Zone ID of the switch
  late final pulumi.Output<String?> vswitchZoneId;
  /// Zone ID
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [NodeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeGroup]. {@macro pulumi_eflo_node_group_node_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeGroup(
    String name, {
    NodeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.az = registerOutput<String>('az');
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.ignoreFailedNodeTasks = registerOutput<bool?>('ignoreFailedNodeTasks');
    this.imageId = registerOutput<String>('imageId');
    this.ipAllocationPolicies = registerOutput<List<NodeGroupIpAllocationPolicy>?>('ipAllocationPolicies');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.machineType = registerOutput<String>('machineType');
    this.nodeGroupDescription = registerOutput<String?>('nodeGroupDescription');
    this.nodeGroupId = registerOutput<String>('nodeGroupId');
    this.nodeGroupName = registerOutput<String>('nodeGroupName');
    this.nodes = registerOutput<List<NodeGroupNode>?>('nodes');
    this.userData = registerOutput<String?>('userData');
    this.vpdSubnets = registerOutput<List<String>?>('vpdSubnets');
    this.vswitchZoneId = registerOutput<String?>('vswitchZoneId');
    this.zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [NodeGroup] resource's state with the given [name] and [id].
  static NodeGroup get(
    String name,
    pulumi.Input<String> id, {
    NodeGroupState? state,
  }) {
    return NodeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/nodeGroup:NodeGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.az = registerOutput<String>('az');
    this.clusterId = registerOutput<String>('clusterId');
    this.createTime = registerOutput<String>('createTime');
    this.ignoreFailedNodeTasks = registerOutput<bool?>('ignoreFailedNodeTasks');
    this.imageId = registerOutput<String>('imageId');
    this.ipAllocationPolicies = registerOutput<List<NodeGroupIpAllocationPolicy>?>('ipAllocationPolicies');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.loginPassword = registerOutput<String?>('loginPassword');
    this.machineType = registerOutput<String>('machineType');
    this.nodeGroupDescription = registerOutput<String?>('nodeGroupDescription');
    this.nodeGroupId = registerOutput<String>('nodeGroupId');
    this.nodeGroupName = registerOutput<String>('nodeGroupName');
    this.nodes = registerOutput<List<NodeGroupNode>?>('nodes');
    this.userData = registerOutput<String?>('userData');
    this.vpdSubnets = registerOutput<List<String>?>('vpdSubnets');
    this.vswitchZoneId = registerOutput<String?>('vswitchZoneId');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
