import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_admin_cluster_args.dart';
import 'bare_metal_admin_cluster_cluster_operations.dart';
import 'bare_metal_admin_cluster_control_plane.dart';
import 'bare_metal_admin_cluster_fleet.dart';
import 'bare_metal_admin_cluster_load_balancer.dart';
import 'bare_metal_admin_cluster_maintenance_config.dart';
import 'bare_metal_admin_cluster_network_config.dart';
import 'bare_metal_admin_cluster_node_access_config.dart';
import 'bare_metal_admin_cluster_node_config.dart';
import 'bare_metal_admin_cluster_proxy.dart';
import 'bare_metal_admin_cluster_security_config.dart';
import 'bare_metal_admin_cluster_status.dart';
import 'bare_metal_admin_cluster_storage.dart';
import 'bare_metal_admin_cluster_validation_check.dart';

/// A Google Bare Metal Admin Cluster.
///
///
/// To get more information about BareMetalAdminCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.bareMetalAdminClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Bare Metal Admin Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin_cluster_basic = new gcp.gkeonprem.BareMetalAdminCluster("admin-cluster-basic", {
///     name: "my-cluster",
///     location: "us-west1",
///     bareMetalVersion: "1.13.4",
///     networkConfig: {
///         islandModeCidr: {
///             serviceAddressCidrBlocks: ["172.26.0.0/16"],
///             podAddressCidrBlocks: ["10.240.0.0/13"],
///         },
///     },
///     nodeConfig: {
///         maxPodsPerNode: 250,
///     },
///     controlPlane: {
///         controlPlaneNodePoolConfig: {
///             nodePoolConfig: {
///                 labels: {},
///                 operatingSystem: "LINUX",
///                 nodeConfigs: [
///                     {
///                         labels: {},
///                         nodeIp: "10.200.0.2",
///                     },
///                     {
///                         labels: {},
///                         nodeIp: "10.200.0.3",
///                     },
///                     {
///                         labels: {},
///                         nodeIp: "10.200.0.4",
///                     },
///                 ],
///             },
///         },
///     },
///     loadBalancer: {
///         portConfig: {
///             controlPlaneLoadBalancerPort: 443,
///         },
///         vipConfig: {
///             controlPlaneVip: "10.200.0.5",
///         },
///     },
///     storage: {
///         lvpShareConfig: {
///             lvpConfig: {
///                 path: "/mnt/localpv-share",
///                 storageClass: "local-shared",
///             },
///             sharedPathPvCount: 5,
///         },
///         lvpNodeMountsConfig: {
///             path: "/mnt/localpv-disk",
///             storageClass: "local-disks",
///         },
///     },
///     nodeAccessConfig: {
///         loginUser: "root",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin_cluster_basic = gcp.gkeonprem.BareMetalAdminCluster("admin-cluster-basic",
///     name="my-cluster",
///     location="us-west1",
///     bare_metal_version="1.13.4",
///     network_config={
///         "island_mode_cidr": {
///             "service_address_cidr_blocks": ["172.26.0.0/16"],
///             "pod_address_cidr_blocks": ["10.240.0.0/13"],
///         },
///     },
///     node_config={
///         "max_pods_per_node": 250,
///     },
///     control_plane={
///         "control_plane_node_pool_config": {
///             "node_pool_config": {
///                 "labels": {},
///                 "operating_system": "LINUX",
///                 "node_configs": [
///                     {
///                         "labels": {},
///                         "node_ip": "10.200.0.2",
///                     },
///                     {
///                         "labels": {},
///                         "node_ip": "10.200.0.3",
///                     },
///                     {
///                         "labels": {},
///                         "node_ip": "10.200.0.4",
///                     },
///                 ],
///             },
///         },
///     },
///     load_balancer={
///         "port_config": {
///             "control_plane_load_balancer_port": 443,
///         },
///         "vip_config": {
///             "control_plane_vip": "10.200.0.5",
///         },
///     },
///     storage={
///         "lvp_share_config": {
///             "lvp_config": {
///                 "path": "/mnt/localpv-share",
///                 "storage_class": "local-shared",
///             },
///             "shared_path_pv_count": 5,
///         },
///         "lvp_node_mounts_config": {
///             "path": "/mnt/localpv-disk",
///             "storage_class": "local-disks",
///         },
///     },
///     node_access_config={
///         "login_user": "root",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin_cluster_basic = new Gcp.GkeOnPrem.BareMetalAdminCluster("admin-cluster-basic", new()
///     {
///         Name = "my-cluster",
///         Location = "us-west1",
///         BareMetalVersion = "1.13.4",
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNetworkConfigArgs
///         {
///             IslandModeCidr = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNetworkConfigIslandModeCidrArgs
///             {
///                 ServiceAddressCidrBlocks = new[]
///                 {
///                     "172.26.0.0/16",
///                 },
///                 PodAddressCidrBlocks = new[]
///                 {
///                     "10.240.0.0/13",
///                 },
///             },
///         },
///         NodeConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNodeConfigArgs
///         {
///             MaxPodsPerNode = 250,
///         },
///         ControlPlane = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneArgs
///         {
///             ControlPlaneNodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs
///             {
///                 NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs
///                 {
///                     Labels = null,
///                     OperatingSystem = "LINUX",
///                     NodeConfigs = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.2",
///                         },
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.3",
///                         },
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.4",
///                         },
///                     },
///                 },
///             },
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerArgs
///         {
///             PortConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerPortConfigArgs
///             {
///                 ControlPlaneLoadBalancerPort = 443,
///             },
///             VipConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.200.0.5",
///             },
///         },
///         Storage = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageArgs
///         {
///             LvpShareConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageLvpShareConfigArgs
///             {
///                 LvpConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs
///                 {
///                     Path = "/mnt/localpv-share",
///                     StorageClass = "local-shared",
///                 },
///                 SharedPathPvCount = 5,
///             },
///             LvpNodeMountsConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageLvpNodeMountsConfigArgs
///             {
///                 Path = "/mnt/localpv-disk",
///                 StorageClass = "local-disks",
///             },
///         },
///         NodeAccessConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNodeAccessConfigArgs
///         {
///             LoginUser = "root",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkeonprem.NewBareMetalAdminCluster(ctx, "admin-cluster-basic", &gkeonprem.BareMetalAdminClusterArgs{
/// 			Name:             pulumi.String("my-cluster"),
/// 			Location:         pulumi.String("us-west1"),
/// 			BareMetalVersion: pulumi.String("1.13.4"),
/// 			NetworkConfig: &gkeonprem.BareMetalAdminClusterNetworkConfigArgs{
/// 				IslandModeCidr: &gkeonprem.BareMetalAdminClusterNetworkConfigIslandModeCidrArgs{
/// 					ServiceAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("172.26.0.0/16"),
/// 					},
/// 					PodAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("10.240.0.0/13"),
/// 					},
/// 				},
/// 			},
/// 			NodeConfig: &gkeonprem.BareMetalAdminClusterNodeConfigArgs{
/// 				MaxPodsPerNode: pulumi.Int(250),
/// 			},
/// 			ControlPlane: &gkeonprem.BareMetalAdminClusterControlPlaneArgs{
/// 				ControlPlaneNodePoolConfig: &gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs{
/// 					NodePoolConfig: &gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs{
/// 						Labels:          pulumi.StringMap{},
/// 						OperatingSystem: pulumi.String("LINUX"),
/// 						NodeConfigs: gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArray{
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.2"),
/// 							},
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.3"),
/// 							},
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.4"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LoadBalancer: &gkeonprem.BareMetalAdminClusterLoadBalancerArgs{
/// 				PortConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerPortConfigArgs{
/// 					ControlPlaneLoadBalancerPort: pulumi.Int(443),
/// 				},
/// 				VipConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.200.0.5"),
/// 				},
/// 			},
/// 			Storage: &gkeonprem.BareMetalAdminClusterStorageArgs{
/// 				LvpShareConfig: &gkeonprem.BareMetalAdminClusterStorageLvpShareConfigArgs{
/// 					LvpConfig: &gkeonprem.BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs{
/// 						Path:         pulumi.String("/mnt/localpv-share"),
/// 						StorageClass: pulumi.String("local-shared"),
/// 					},
/// 					SharedPathPvCount: pulumi.Int(5),
/// 				},
/// 				LvpNodeMountsConfig: &gkeonprem.BareMetalAdminClusterStorageLvpNodeMountsConfigArgs{
/// 					Path:         pulumi.String("/mnt/localpv-disk"),
/// 					StorageClass: pulumi.String("local-disks"),
/// 				},
/// 			},
/// 			NodeAccessConfig: &gkeonprem.BareMetalAdminClusterNodeAccessConfigArgs{
/// 				LoginUser: pulumi.String("root"),
/// 			},
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
/// import com.pulumi.gcp.gkeonprem.BareMetalAdminCluster;
/// import com.pulumi.gcp.gkeonprem.BareMetalAdminClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNetworkConfigIslandModeCidrArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterControlPlaneArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerPortConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageLvpShareConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageLvpNodeMountsConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNodeAccessConfigArgs;
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
///         var admin_cluster_basic = new BareMetalAdminCluster("admin-cluster-basic", BareMetalAdminClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-west1")
///             .bareMetalVersion("1.13.4")
///             .networkConfig(BareMetalAdminClusterNetworkConfigArgs.builder()
///                 .islandModeCidr(BareMetalAdminClusterNetworkConfigIslandModeCidrArgs.builder()
///                     .serviceAddressCidrBlocks("172.26.0.0/16")
///                     .podAddressCidrBlocks("10.240.0.0/13")
///                     .build())
///                 .build())
///             .nodeConfig(BareMetalAdminClusterNodeConfigArgs.builder()
///                 .maxPodsPerNode(250)
///                 .build())
///             .controlPlane(BareMetalAdminClusterControlPlaneArgs.builder()
///                 .controlPlaneNodePoolConfig(BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs.builder()
///                     .nodePoolConfig(BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs.builder()
///                         .labels(Map.ofEntries(
///                         ))
///                         .operatingSystem("LINUX")
///                         .nodeConfigs(
///                             BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.2")
///                                 .build(),
///                             BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.3")
///                                 .build(),
///                             BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.4")
///                                 .build())
///                         .build())
///                     .build())
///                 .build())
///             .loadBalancer(BareMetalAdminClusterLoadBalancerArgs.builder()
///                 .portConfig(BareMetalAdminClusterLoadBalancerPortConfigArgs.builder()
///                     .controlPlaneLoadBalancerPort(443)
///                     .build())
///                 .vipConfig(BareMetalAdminClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.200.0.5")
///                     .build())
///                 .build())
///             .storage(BareMetalAdminClusterStorageArgs.builder()
///                 .lvpShareConfig(BareMetalAdminClusterStorageLvpShareConfigArgs.builder()
///                     .lvpConfig(BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs.builder()
///                         .path("/mnt/localpv-share")
///                         .storageClass("local-shared")
///                         .build())
///                     .sharedPathPvCount(5)
///                     .build())
///                 .lvpNodeMountsConfig(BareMetalAdminClusterStorageLvpNodeMountsConfigArgs.builder()
///                     .path("/mnt/localpv-disk")
///                     .storageClass("local-disks")
///                     .build())
///                 .build())
///             .nodeAccessConfig(BareMetalAdminClusterNodeAccessConfigArgs.builder()
///                 .loginUser("root")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   admin-cluster-basic:
///     type: gcp:gkeonprem:BareMetalAdminCluster
///     properties:
///       name: my-cluster
///       location: us-west1
///       bareMetalVersion: 1.13.4
///       networkConfig:
///         islandModeCidr:
///           serviceAddressCidrBlocks:
///             - 172.26.0.0/16
///           podAddressCidrBlocks:
///             - 10.240.0.0/13
///       nodeConfig:
///         maxPodsPerNode: 250
///       controlPlane:
///         controlPlaneNodePoolConfig:
///           nodePoolConfig:
///             labels: {}
///             operatingSystem: LINUX
///             nodeConfigs:
///               - labels: {}
///                 nodeIp: 10.200.0.2
///               - labels: {}
///                 nodeIp: 10.200.0.3
///               - labels: {}
///                 nodeIp: 10.200.0.4
///       loadBalancer:
///         portConfig:
///           controlPlaneLoadBalancerPort: 443
///         vipConfig:
///           controlPlaneVip: 10.200.0.5
///       storage:
///         lvpShareConfig:
///           lvpConfig:
///             path: /mnt/localpv-share
///             storageClass: local-shared
///           sharedPathPvCount: 5
///         lvpNodeMountsConfig:
///           path: /mnt/localpv-disk
///           storageClass: local-disks
///       nodeAccessConfig:
///         loginUser: root
/// ```
///
/// ### Gkeonprem Bare Metal Admin Cluster Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const admin_cluster_basic = new gcp.gkeonprem.BareMetalAdminCluster("admin-cluster-basic", {
///     name: "my-cluster",
///     location: "us-west1",
///     description: "test description",
///     bareMetalVersion: "1.13.4",
///     annotations: {
///         env: "test",
///     },
///     networkConfig: {
///         islandModeCidr: {
///             serviceAddressCidrBlocks: ["172.26.0.0/16"],
///             podAddressCidrBlocks: ["10.240.0.0/13"],
///         },
///         advancedNetworking: true,
///         multipleNetworkInterfacesConfig: {
///             enabled: true,
///         },
///     },
///     nodeConfig: {
///         maxPodsPerNode: 250,
///     },
///     controlPlane: {
///         controlPlaneNodePoolConfig: {
///             nodePoolConfig: {
///                 labels: {},
///                 operatingSystem: "LINUX",
///                 nodeConfigs: [
///                     {
///                         labels: {},
///                         nodeIp: "10.200.0.2",
///                     },
///                     {
///                         labels: {},
///                         nodeIp: "10.200.0.3",
///                     },
///                     {
///                         labels: {},
///                         nodeIp: "10.200.0.4",
///                     },
///                 ],
///                 taints: [{
///                     key: "test-key",
///                     value: "test-value",
///                     effect: "NO_EXECUTE",
///                 }],
///             },
///         },
///         apiServerArgs: [{
///             argument: "test argument",
///             value: "test value",
///         }],
///     },
///     loadBalancer: {
///         portConfig: {
///             controlPlaneLoadBalancerPort: 443,
///         },
///         vipConfig: {
///             controlPlaneVip: "10.200.0.5",
///         },
///         bgpLbConfig: {
///             asn: 123456,
///             bgpPeerConfigs: [{
///                 asn: 123457,
///                 ipAddress: "10.0.0.1",
///                 controlPlaneNodes: ["test-node"],
///             }],
///             addressPools: [{
///                 pool: "loadBalancerAddressPool-1",
///                 addresses: [
///                     "10.200.0.14/32",
///                     "10.200.0.15/32",
///                     "10.200.0.16/32",
///                     "10.200.0.17/32",
///                     "10.200.0.18/32",
///                     "fd00:1::f/128",
///                     "fd00:1::10/128",
///                     "fd00:1::11/128",
///                     "fd00:1::12/128",
///                 ],
///                 manualAssign: true,
///                 avoidBuggyIps: true,
///             }],
///             loadBalancerNodePoolConfig: {
///                 nodePoolConfig: {
///                     labels: {},
///                     operatingSystem: "LINUX",
///                     nodeConfigs: [{
///                         labels: {},
///                         nodeIp: "10.200.0.9",
///                     }],
///                     kubeletConfig: {
///                         registryBurst: 12,
///                         registryPullQps: 10,
///                         serializeImagePullsDisabled: true,
///                     },
///                     taints: [{
///                         key: "test-key",
///                         value: "test-value",
///                         effect: "NO_EXECUTE",
///                     }],
///                 },
///             },
///         },
///     },
///     storage: {
///         lvpShareConfig: {
///             lvpConfig: {
///                 path: "/mnt/localpv-share",
///                 storageClass: "local-shared",
///             },
///             sharedPathPvCount: 5,
///         },
///         lvpNodeMountsConfig: {
///             path: "/mnt/localpv-disk",
///             storageClass: "local-disks",
///         },
///     },
///     nodeAccessConfig: {
///         loginUser: "root",
///     },
///     securityConfig: {
///         authorization: {
///             adminUsers: [{
///                 username: "admin@hashicorptest.com",
///             }],
///         },
///     },
///     maintenanceConfig: {
///         maintenanceAddressCidrBlocks: [
///             "10.0.0.1/32",
///             "10.0.0.2/32",
///         ],
///     },
///     clusterOperations: {
///         enableApplicationLogs: true,
///     },
///     proxy: {
///         uri: "test proxy uri",
///         noProxies: ["127.0.0.1"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// admin_cluster_basic = gcp.gkeonprem.BareMetalAdminCluster("admin-cluster-basic",
///     name="my-cluster",
///     location="us-west1",
///     description="test description",
///     bare_metal_version="1.13.4",
///     annotations={
///         "env": "test",
///     },
///     network_config={
///         "island_mode_cidr": {
///             "service_address_cidr_blocks": ["172.26.0.0/16"],
///             "pod_address_cidr_blocks": ["10.240.0.0/13"],
///         },
///         "advanced_networking": True,
///         "multiple_network_interfaces_config": {
///             "enabled": True,
///         },
///     },
///     node_config={
///         "max_pods_per_node": 250,
///     },
///     control_plane={
///         "control_plane_node_pool_config": {
///             "node_pool_config": {
///                 "labels": {},
///                 "operating_system": "LINUX",
///                 "node_configs": [
///                     {
///                         "labels": {},
///                         "node_ip": "10.200.0.2",
///                     },
///                     {
///                         "labels": {},
///                         "node_ip": "10.200.0.3",
///                     },
///                     {
///                         "labels": {},
///                         "node_ip": "10.200.0.4",
///                     },
///                 ],
///                 "taints": [{
///                     "key": "test-key",
///                     "value": "test-value",
///                     "effect": "NO_EXECUTE",
///                 }],
///             },
///         },
///         "api_server_args": [{
///             "argument": "test argument",
///             "value": "test value",
///         }],
///     },
///     load_balancer={
///         "port_config": {
///             "control_plane_load_balancer_port": 443,
///         },
///         "vip_config": {
///             "control_plane_vip": "10.200.0.5",
///         },
///         "bgp_lb_config": {
///             "asn": 123456,
///             "bgp_peer_configs": [{
///                 "asn": 123457,
///                 "ip_address": "10.0.0.1",
///                 "control_plane_nodes": ["test-node"],
///             }],
///             "address_pools": [{
///                 "pool": "loadBalancerAddressPool-1",
///                 "addresses": [
///                     "10.200.0.14/32",
///                     "10.200.0.15/32",
///                     "10.200.0.16/32",
///                     "10.200.0.17/32",
///                     "10.200.0.18/32",
///                     "fd00:1::f/128",
///                     "fd00:1::10/128",
///                     "fd00:1::11/128",
///                     "fd00:1::12/128",
///                 ],
///                 "manual_assign": True,
///                 "avoid_buggy_ips": True,
///             }],
///             "load_balancer_node_pool_config": {
///                 "node_pool_config": {
///                     "labels": {},
///                     "operating_system": "LINUX",
///                     "node_configs": [{
///                         "labels": {},
///                         "node_ip": "10.200.0.9",
///                     }],
///                     "kubelet_config": {
///                         "registry_burst": 12,
///                         "registry_pull_qps": 10,
///                         "serialize_image_pulls_disabled": True,
///                     },
///                     "taints": [{
///                         "key": "test-key",
///                         "value": "test-value",
///                         "effect": "NO_EXECUTE",
///                     }],
///                 },
///             },
///         },
///     },
///     storage={
///         "lvp_share_config": {
///             "lvp_config": {
///                 "path": "/mnt/localpv-share",
///                 "storage_class": "local-shared",
///             },
///             "shared_path_pv_count": 5,
///         },
///         "lvp_node_mounts_config": {
///             "path": "/mnt/localpv-disk",
///             "storage_class": "local-disks",
///         },
///     },
///     node_access_config={
///         "login_user": "root",
///     },
///     security_config={
///         "authorization": {
///             "admin_users": [{
///                 "username": "admin@hashicorptest.com",
///             }],
///         },
///     },
///     maintenance_config={
///         "maintenance_address_cidr_blocks": [
///             "10.0.0.1/32",
///             "10.0.0.2/32",
///         ],
///     },
///     cluster_operations={
///         "enable_application_logs": True,
///     },
///     proxy={
///         "uri": "test proxy uri",
///         "no_proxies": ["127.0.0.1"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin_cluster_basic = new Gcp.GkeOnPrem.BareMetalAdminCluster("admin-cluster-basic", new()
///     {
///         Name = "my-cluster",
///         Location = "us-west1",
///         Description = "test description",
///         BareMetalVersion = "1.13.4",
///         Annotations =
///         {
///             { "env", "test" },
///         },
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNetworkConfigArgs
///         {
///             IslandModeCidr = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNetworkConfigIslandModeCidrArgs
///             {
///                 ServiceAddressCidrBlocks = new[]
///                 {
///                     "172.26.0.0/16",
///                 },
///                 PodAddressCidrBlocks = new[]
///                 {
///                     "10.240.0.0/13",
///                 },
///             },
///             AdvancedNetworking = true,
///             MultipleNetworkInterfacesConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         NodeConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNodeConfigArgs
///         {
///             MaxPodsPerNode = 250,
///         },
///         ControlPlane = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneArgs
///         {
///             ControlPlaneNodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs
///             {
///                 NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs
///                 {
///                     Labels = null,
///                     OperatingSystem = "LINUX",
///                     NodeConfigs = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.2",
///                         },
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.3",
///                         },
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.4",
///                         },
///                     },
///                     Taints = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs
///                         {
///                             Key = "test-key",
///                             Value = "test-value",
///                             Effect = "NO_EXECUTE",
///                         },
///                     },
///                 },
///             },
///             ApiServerArgs = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterControlPlaneApiServerArgArgs
///                 {
///                     Argument = "test argument",
///                     Value = "test value",
///                 },
///             },
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerArgs
///         {
///             PortConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerPortConfigArgs
///             {
///                 ControlPlaneLoadBalancerPort = 443,
///             },
///             VipConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.200.0.5",
///             },
///             BgpLbConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigArgs
///             {
///                 Asn = 123456,
///                 BgpPeerConfigs = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs
///                     {
///                         Asn = 123457,
///                         IpAddress = "10.0.0.1",
///                         ControlPlaneNodes = new[]
///                         {
///                             "test-node",
///                         },
///                     },
///                 },
///                 AddressPools = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPoolArgs
///                     {
///                         Pool = "loadBalancerAddressPool-1",
///                         Addresses = new[]
///                         {
///                             "10.200.0.14/32",
///                             "10.200.0.15/32",
///                             "10.200.0.16/32",
///                             "10.200.0.17/32",
///                             "10.200.0.18/32",
///                             "fd00:1::f/128",
///                             "fd00:1::10/128",
///                             "fd00:1::11/128",
///                             "fd00:1::12/128",
///                         },
///                         ManualAssign = true,
///                         AvoidBuggyIps = true,
///                     },
///                 },
///                 LoadBalancerNodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs
///                 {
///                     NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs
///                     {
///                         Labels = null,
///                         OperatingSystem = "LINUX",
///                         NodeConfigs = new[]
///                         {
///                             new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs
///                             {
///                                 Labels = null,
///                                 NodeIp = "10.200.0.9",
///                             },
///                         },
///                         KubeletConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs
///                         {
///                             RegistryBurst = 12,
///                             RegistryPullQps = 10,
///                             SerializeImagePullsDisabled = true,
///                         },
///                         Taints = new[]
///                         {
///                             new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs
///                             {
///                                 Key = "test-key",
///                                 Value = "test-value",
///                                 Effect = "NO_EXECUTE",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Storage = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageArgs
///         {
///             LvpShareConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageLvpShareConfigArgs
///             {
///                 LvpConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs
///                 {
///                     Path = "/mnt/localpv-share",
///                     StorageClass = "local-shared",
///                 },
///                 SharedPathPvCount = 5,
///             },
///             LvpNodeMountsConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterStorageLvpNodeMountsConfigArgs
///             {
///                 Path = "/mnt/localpv-disk",
///                 StorageClass = "local-disks",
///             },
///         },
///         NodeAccessConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterNodeAccessConfigArgs
///         {
///             LoginUser = "root",
///         },
///         SecurityConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterSecurityConfigArgs
///         {
///             Authorization = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterSecurityConfigAuthorizationArgs
///             {
///                 AdminUsers = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterSecurityConfigAuthorizationAdminUserArgs
///                     {
///                         Username = "admin@hashicorptest.com",
///                     },
///                 },
///             },
///         },
///         MaintenanceConfig = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterMaintenanceConfigArgs
///         {
///             MaintenanceAddressCidrBlocks = new[]
///             {
///                 "10.0.0.1/32",
///                 "10.0.0.2/32",
///             },
///         },
///         ClusterOperations = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterClusterOperationsArgs
///         {
///             EnableApplicationLogs = true,
///         },
///         Proxy = new Gcp.GkeOnPrem.Inputs.BareMetalAdminClusterProxyArgs
///         {
///             Uri = "test proxy uri",
///             NoProxies = new[]
///             {
///                 "127.0.0.1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gkeonprem.NewBareMetalAdminCluster(ctx, "admin-cluster-basic", &gkeonprem.BareMetalAdminClusterArgs{
/// 			Name:             pulumi.String("my-cluster"),
/// 			Location:         pulumi.String("us-west1"),
/// 			Description:      pulumi.String("test description"),
/// 			BareMetalVersion: pulumi.String("1.13.4"),
/// 			Annotations: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
/// 			NetworkConfig: &gkeonprem.BareMetalAdminClusterNetworkConfigArgs{
/// 				IslandModeCidr: &gkeonprem.BareMetalAdminClusterNetworkConfigIslandModeCidrArgs{
/// 					ServiceAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("172.26.0.0/16"),
/// 					},
/// 					PodAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("10.240.0.0/13"),
/// 					},
/// 				},
/// 				AdvancedNetworking: pulumi.Bool(true),
/// 				MultipleNetworkInterfacesConfig: &gkeonprem.BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			NodeConfig: &gkeonprem.BareMetalAdminClusterNodeConfigArgs{
/// 				MaxPodsPerNode: pulumi.Int(250),
/// 			},
/// 			ControlPlane: &gkeonprem.BareMetalAdminClusterControlPlaneArgs{
/// 				ControlPlaneNodePoolConfig: &gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs{
/// 					NodePoolConfig: &gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs{
/// 						Labels:          pulumi.StringMap{},
/// 						OperatingSystem: pulumi.String("LINUX"),
/// 						NodeConfigs: gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArray{
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.2"),
/// 							},
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.3"),
/// 							},
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.4"),
/// 							},
/// 						},
/// 						Taints: gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArray{
/// 							&gkeonprem.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs{
/// 								Key:    pulumi.String("test-key"),
/// 								Value:  pulumi.String("test-value"),
/// 								Effect: pulumi.String("NO_EXECUTE"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ApiServerArgs: gkeonprem.BareMetalAdminClusterControlPlaneApiServerArgArray{
/// 					&gkeonprem.BareMetalAdminClusterControlPlaneApiServerArgArgs{
/// 						Argument: pulumi.String("test argument"),
/// 						Value:    pulumi.String("test value"),
/// 					},
/// 				},
/// 			},
/// 			LoadBalancer: &gkeonprem.BareMetalAdminClusterLoadBalancerArgs{
/// 				PortConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerPortConfigArgs{
/// 					ControlPlaneLoadBalancerPort: pulumi.Int(443),
/// 				},
/// 				VipConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.200.0.5"),
/// 				},
/// 				BgpLbConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigArgs{
/// 					Asn: pulumi.Int(123456),
/// 					BgpPeerConfigs: gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigArray{
/// 						&gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs{
/// 							Asn:       pulumi.Int(123457),
/// 							IpAddress: pulumi.String("10.0.0.1"),
/// 							ControlPlaneNodes: pulumi.StringArray{
/// 								pulumi.String("test-node"),
/// 							},
/// 						},
/// 					},
/// 					AddressPools: gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPoolArray{
/// 						&gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPoolArgs{
/// 							Pool: pulumi.String("loadBalancerAddressPool-1"),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.200.0.14/32"),
/// 								pulumi.String("10.200.0.15/32"),
/// 								pulumi.String("10.200.0.16/32"),
/// 								pulumi.String("10.200.0.17/32"),
/// 								pulumi.String("10.200.0.18/32"),
/// 								pulumi.String("fd00:1::f/128"),
/// 								pulumi.String("fd00:1::10/128"),
/// 								pulumi.String("fd00:1::11/128"),
/// 								pulumi.String("fd00:1::12/128"),
/// 							},
/// 							ManualAssign:  pulumi.Bool(true),
/// 							AvoidBuggyIps: pulumi.Bool(true),
/// 						},
/// 					},
/// 					LoadBalancerNodePoolConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs{
/// 						NodePoolConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs{
/// 							Labels:          pulumi.StringMap{},
/// 							OperatingSystem: pulumi.String("LINUX"),
/// 							NodeConfigs: gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArray{
/// 								&gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 									Labels: pulumi.StringMap{},
/// 									NodeIp: pulumi.String("10.200.0.9"),
/// 								},
/// 							},
/// 							KubeletConfig: &gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs{
/// 								RegistryBurst:               pulumi.Int(12),
/// 								RegistryPullQps:             pulumi.Int(10),
/// 								SerializeImagePullsDisabled: pulumi.Bool(true),
/// 							},
/// 							Taints: gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArray{
/// 								&gkeonprem.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs{
/// 									Key:    pulumi.String("test-key"),
/// 									Value:  pulumi.String("test-value"),
/// 									Effect: pulumi.String("NO_EXECUTE"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Storage: &gkeonprem.BareMetalAdminClusterStorageArgs{
/// 				LvpShareConfig: &gkeonprem.BareMetalAdminClusterStorageLvpShareConfigArgs{
/// 					LvpConfig: &gkeonprem.BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs{
/// 						Path:         pulumi.String("/mnt/localpv-share"),
/// 						StorageClass: pulumi.String("local-shared"),
/// 					},
/// 					SharedPathPvCount: pulumi.Int(5),
/// 				},
/// 				LvpNodeMountsConfig: &gkeonprem.BareMetalAdminClusterStorageLvpNodeMountsConfigArgs{
/// 					Path:         pulumi.String("/mnt/localpv-disk"),
/// 					StorageClass: pulumi.String("local-disks"),
/// 				},
/// 			},
/// 			NodeAccessConfig: &gkeonprem.BareMetalAdminClusterNodeAccessConfigArgs{
/// 				LoginUser: pulumi.String("root"),
/// 			},
/// 			SecurityConfig: &gkeonprem.BareMetalAdminClusterSecurityConfigArgs{
/// 				Authorization: &gkeonprem.BareMetalAdminClusterSecurityConfigAuthorizationArgs{
/// 					AdminUsers: gkeonprem.BareMetalAdminClusterSecurityConfigAuthorizationAdminUserArray{
/// 						&gkeonprem.BareMetalAdminClusterSecurityConfigAuthorizationAdminUserArgs{
/// 							Username: pulumi.String("admin@hashicorptest.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			MaintenanceConfig: &gkeonprem.BareMetalAdminClusterMaintenanceConfigArgs{
/// 				MaintenanceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.0.0.1/32"),
/// 					pulumi.String("10.0.0.2/32"),
/// 				},
/// 			},
/// 			ClusterOperations: &gkeonprem.BareMetalAdminClusterClusterOperationsArgs{
/// 				EnableApplicationLogs: pulumi.Bool(true),
/// 			},
/// 			Proxy: &gkeonprem.BareMetalAdminClusterProxyArgs{
/// 				Uri: pulumi.String("test proxy uri"),
/// 				NoProxies: pulumi.StringArray{
/// 					pulumi.String("127.0.0.1"),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.gkeonprem.BareMetalAdminCluster;
/// import com.pulumi.gcp.gkeonprem.BareMetalAdminClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNetworkConfigIslandModeCidrArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterControlPlaneArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerPortConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageLvpShareConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterStorageLvpNodeMountsConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterNodeAccessConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterSecurityConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterSecurityConfigAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterMaintenanceConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterClusterOperationsArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalAdminClusterProxyArgs;
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
///         var admin_cluster_basic = new BareMetalAdminCluster("admin-cluster-basic", BareMetalAdminClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-west1")
///             .description("test description")
///             .bareMetalVersion("1.13.4")
///             .annotations(Map.of("env", "test"))
///             .networkConfig(BareMetalAdminClusterNetworkConfigArgs.builder()
///                 .islandModeCidr(BareMetalAdminClusterNetworkConfigIslandModeCidrArgs.builder()
///                     .serviceAddressCidrBlocks("172.26.0.0/16")
///                     .podAddressCidrBlocks("10.240.0.0/13")
///                     .build())
///                 .advancedNetworking(true)
///                 .multipleNetworkInterfacesConfig(BareMetalAdminClusterNetworkConfigMultipleNetworkInterfacesConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .nodeConfig(BareMetalAdminClusterNodeConfigArgs.builder()
///                 .maxPodsPerNode(250)
///                 .build())
///             .controlPlane(BareMetalAdminClusterControlPlaneArgs.builder()
///                 .controlPlaneNodePoolConfig(BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigArgs.builder()
///                     .nodePoolConfig(BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs.builder()
///                         .labels(Map.ofEntries(
///                         ))
///                         .operatingSystem("LINUX")
///                         .nodeConfigs(
///                             BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.2")
///                                 .build(),
///                             BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.3")
///                                 .build(),
///                             BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.4")
///                                 .build())
///                         .taints(BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs.builder()
///                             .key("test-key")
///                             .value("test-value")
///                             .effect("NO_EXECUTE")
///                             .build())
///                         .build())
///                     .build())
///                 .apiServerArgs(BareMetalAdminClusterControlPlaneApiServerArgArgs.builder()
///                     .argument("test argument")
///                     .value("test value")
///                     .build())
///                 .build())
///             .loadBalancer(BareMetalAdminClusterLoadBalancerArgs.builder()
///                 .portConfig(BareMetalAdminClusterLoadBalancerPortConfigArgs.builder()
///                     .controlPlaneLoadBalancerPort(443)
///                     .build())
///                 .vipConfig(BareMetalAdminClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.200.0.5")
///                     .build())
///                 .bgpLbConfig(BareMetalAdminClusterLoadBalancerBgpLbConfigArgs.builder()
///                     .asn(123456)
///                     .bgpPeerConfigs(BareMetalAdminClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs.builder()
///                         .asn(123457)
///                         .ipAddress("10.0.0.1")
///                         .controlPlaneNodes("test-node")
///                         .build())
///                     .addressPools(BareMetalAdminClusterLoadBalancerBgpLbConfigAddressPoolArgs.builder()
///                         .pool("loadBalancerAddressPool-1")
///                         .addresses(
///                             "10.200.0.14/32",
///                             "10.200.0.15/32",
///                             "10.200.0.16/32",
///                             "10.200.0.17/32",
///                             "10.200.0.18/32",
///                             "fd00:1::f/128",
///                             "fd00:1::10/128",
///                             "fd00:1::11/128",
///                             "fd00:1::12/128")
///                         .manualAssign(true)
///                         .avoidBuggyIps(true)
///                         .build())
///                     .loadBalancerNodePoolConfig(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs.builder()
///                         .nodePoolConfig(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs.builder()
///                             .labels(Map.ofEntries(
///                             ))
///                             .operatingSystem("LINUX")
///                             .nodeConfigs(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.9")
///                                 .build())
///                             .kubeletConfig(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs.builder()
///                                 .registryBurst(12)
///                                 .registryPullQps(10)
///                                 .serializeImagePullsDisabled(true)
///                                 .build())
///                             .taints(BareMetalAdminClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs.builder()
///                                 .key("test-key")
///                                 .value("test-value")
///                                 .effect("NO_EXECUTE")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .storage(BareMetalAdminClusterStorageArgs.builder()
///                 .lvpShareConfig(BareMetalAdminClusterStorageLvpShareConfigArgs.builder()
///                     .lvpConfig(BareMetalAdminClusterStorageLvpShareConfigLvpConfigArgs.builder()
///                         .path("/mnt/localpv-share")
///                         .storageClass("local-shared")
///                         .build())
///                     .sharedPathPvCount(5)
///                     .build())
///                 .lvpNodeMountsConfig(BareMetalAdminClusterStorageLvpNodeMountsConfigArgs.builder()
///                     .path("/mnt/localpv-disk")
///                     .storageClass("local-disks")
///                     .build())
///                 .build())
///             .nodeAccessConfig(BareMetalAdminClusterNodeAccessConfigArgs.builder()
///                 .loginUser("root")
///                 .build())
///             .securityConfig(BareMetalAdminClusterSecurityConfigArgs.builder()
///                 .authorization(BareMetalAdminClusterSecurityConfigAuthorizationArgs.builder()
///                     .adminUsers(BareMetalAdminClusterSecurityConfigAuthorizationAdminUserArgs.builder()
///                         .username("admin@hashicorptest.com")
///                         .build())
///                     .build())
///                 .build())
///             .maintenanceConfig(BareMetalAdminClusterMaintenanceConfigArgs.builder()
///                 .maintenanceAddressCidrBlocks(
///                     "10.0.0.1/32",
///                     "10.0.0.2/32")
///                 .build())
///             .clusterOperations(BareMetalAdminClusterClusterOperationsArgs.builder()
///                 .enableApplicationLogs(true)
///                 .build())
///             .proxy(BareMetalAdminClusterProxyArgs.builder()
///                 .uri("test proxy uri")
///                 .noProxies("127.0.0.1")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   admin-cluster-basic:
///     type: gcp:gkeonprem:BareMetalAdminCluster
///     properties:
///       name: my-cluster
///       location: us-west1
///       description: test description
///       bareMetalVersion: 1.13.4
///       annotations:
///         env: test
///       networkConfig:
///         islandModeCidr:
///           serviceAddressCidrBlocks:
///             - 172.26.0.0/16
///           podAddressCidrBlocks:
///             - 10.240.0.0/13
///         advancedNetworking: true
///         multipleNetworkInterfacesConfig:
///           enabled: true
///       nodeConfig:
///         maxPodsPerNode: 250
///       controlPlane:
///         controlPlaneNodePoolConfig:
///           nodePoolConfig:
///             labels: {}
///             operatingSystem: LINUX
///             nodeConfigs:
///               - labels: {}
///                 nodeIp: 10.200.0.2
///               - labels: {}
///                 nodeIp: 10.200.0.3
///               - labels: {}
///                 nodeIp: 10.200.0.4
///             taints:
///               - key: test-key
///                 value: test-value
///                 effect: NO_EXECUTE
///         apiServerArgs:
///           - argument: test argument
///             value: test value
///       loadBalancer:
///         portConfig:
///           controlPlaneLoadBalancerPort: 443
///         vipConfig:
///           controlPlaneVip: 10.200.0.5
///         bgpLbConfig:
///           asn: 123456
///           bgpPeerConfigs:
///             - asn: 123457
///               ipAddress: 10.0.0.1
///               controlPlaneNodes:
///                 - test-node
///           addressPools:
///             - pool: loadBalancerAddressPool-1
///               addresses:
///                 - 10.200.0.14/32
///                 - 10.200.0.15/32
///                 - 10.200.0.16/32
///                 - 10.200.0.17/32
///                 - 10.200.0.18/32
///                 - fd00:1::f/128
///                 - fd00:1::10/128
///                 - fd00:1::11/128
///                 - fd00:1::12/128
///               manualAssign: true
///               avoidBuggyIps: true
///           loadBalancerNodePoolConfig:
///             nodePoolConfig:
///               labels: {}
///               operatingSystem: LINUX
///               nodeConfigs:
///                 - labels: {}
///                   nodeIp: 10.200.0.9
///               kubeletConfig:
///                 registryBurst: 12
///                 registryPullQps: 10
///                 serializeImagePullsDisabled: true
///               taints:
///                 - key: test-key
///                   value: test-value
///                   effect: NO_EXECUTE
///       storage:
///         lvpShareConfig:
///           lvpConfig:
///             path: /mnt/localpv-share
///             storageClass: local-shared
///           sharedPathPvCount: 5
///         lvpNodeMountsConfig:
///           path: /mnt/localpv-disk
///           storageClass: local-disks
///       nodeAccessConfig:
///         loginUser: root
///       securityConfig:
///         authorization:
///           adminUsers:
///             - username: admin@hashicorptest.com
///       maintenanceConfig:
///         maintenanceAddressCidrBlocks:
///           - 10.0.0.1/32
///           - 10.0.0.2/32
///       clusterOperations:
///         enableApplicationLogs: true
///       proxy:
///         uri: test proxy uri
///         noProxies:
///           - 127.0.0.1
/// ```
///
///
/// ## Import
///
/// BareMetalAdminCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bareMetalAdminClusters/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BareMetalAdminCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster default projects/{{project}}/locations/{{location}}/bareMetalAdminClusters/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster default {{location}}/{{name}}
/// ```
class BareMetalAdminCluster extends pulumi.CustomResource {
  /// Annotations on the Bare Metal Admin Cluster.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// A human readable description of this Bare Metal Admin Cluster.
  late final pulumi.Output<String?> bareMetalVersion;
  /// Specifies the Admin Cluster's observability infrastructure.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterClusterOperations?> clusterOperations;
  /// Specifies the control plane configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterControlPlane?> controlPlane;
  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;
  /// A human readable description of this Bare Metal Admin Cluster.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// The IP address name of Bare Metal Admin Cluster's API server.
  late final pulumi.Output<String> endpoint;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// See [Anthos Fleets](https://cloud.google.com/anthos/multicluster-management/fleets) for
  /// more details on Anthos multi-cluster capabilities using Fleets.
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalAdminClusterFleet>> fleets;
  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterLoadBalancer?> loadBalancer;
  /// The object name of the Bare Metal Admin Cluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  late final pulumi.Output<String> localName;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterMaintenanceConfig?> maintenanceConfig;
  /// The bare metal admin cluster name.
  late final pulumi.Output<String> name;
  /// Network configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterNetworkConfig?> networkConfig;
  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterNodeAccessConfig?> nodeAccessConfig;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterNodeConfig?> nodeConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterProxy?> proxy;
  /// If set, there are currently changes in flight to the Bare Metal Admin Cluster.
  late final pulumi.Output<bool> reconciling;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterSecurityConfig?> securityConfig;
  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalAdminClusterStatus>> statuses;
  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalAdminClusterStorage?> storage;
  /// The unique identifier of the Bare Metal Admin Cluster.
  late final pulumi.Output<String> uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;
  /// Specifies the security related settings for the Bare Metal Admin Cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalAdminClusterValidationCheck>> validationChecks;

  /// Creates a new [BareMetalAdminCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalAdminCluster]. {@macro pulumi_gkeonprem_bare_metal_admin_cluster_bare_metal_admin_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalAdminCluster(
    String name, {
    BareMetalAdminClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalAdminCluster:BareMetalAdminCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bareMetalVersion = registerOutput<String?>('bareMetalVersion');
    this.clusterOperations = registerOutput<BareMetalAdminClusterClusterOperations?>('clusterOperations');
    this.controlPlane = registerOutput<BareMetalAdminClusterControlPlane?>('controlPlane');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.description = registerOutput<String?>('description');
    this.effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    this.endpoint = registerOutput<String>('endpoint');
    this.etag = registerOutput<String>('etag');
    this.fleets = registerOutput<List<BareMetalAdminClusterFleet>>('fleets');
    this.loadBalancer = registerOutput<BareMetalAdminClusterLoadBalancer?>('loadBalancer');
    this.localName = registerOutput<String>('localName');
    this.location = registerOutput<String>('location');
    this.maintenanceConfig = registerOutput<BareMetalAdminClusterMaintenanceConfig?>('maintenanceConfig');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<BareMetalAdminClusterNetworkConfig?>('networkConfig');
    this.nodeAccessConfig = registerOutput<BareMetalAdminClusterNodeAccessConfig?>('nodeAccessConfig');
    this.nodeConfig = registerOutput<BareMetalAdminClusterNodeConfig?>('nodeConfig');
    this.project = registerOutput<String>('project');
    this.proxy = registerOutput<BareMetalAdminClusterProxy?>('proxy');
    this.reconciling = registerOutput<bool>('reconciling');
    this.securityConfig = registerOutput<BareMetalAdminClusterSecurityConfig?>('securityConfig');
    this.state = registerOutput<String>('state');
    this.statuses = registerOutput<List<BareMetalAdminClusterStatus>>('statuses');
    this.storage = registerOutput<BareMetalAdminClusterStorage?>('storage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.validationChecks = registerOutput<List<BareMetalAdminClusterValidationCheck>>('validationChecks');
  }
}
