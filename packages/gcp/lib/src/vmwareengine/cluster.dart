import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_autoscaling_settings.dart';
import 'cluster_node_type_config.dart';

/// A cluster in a private cloud.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
///
/// ## Example Usage
///
/// ### Vmware Engine Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_nw = new gcp.vmwareengine.Network("cluster-nw", {
///     name: "pc-nw",
///     type: "STANDARD",
///     location: "global",
///     description: "PC network description.",
/// });
/// const cluster_pc = new gcp.vmwareengine.PrivateCloud("cluster-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: cluster_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///         }],
///     },
/// });
/// const vmw_engine_ext_cluster = new gcp.vmwareengine.Cluster("vmw-engine-ext-cluster", {
///     name: "ext-cluster",
///     parent: cluster_pc.id,
///     nodeTypeConfigs: [{
///         nodeTypeId: "standard-72",
///         nodeCount: 3,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_nw = gcp.vmwareengine.Network("cluster-nw",
///     name="pc-nw",
///     type="STANDARD",
///     location="global",
///     description="PC network description.")
/// cluster_pc = gcp.vmwareengine.PrivateCloud("cluster-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": cluster_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///         }],
///     })
/// vmw_engine_ext_cluster = gcp.vmwareengine.Cluster("vmw-engine-ext-cluster",
///     name="ext-cluster",
///     parent=cluster_pc.id,
///     node_type_configs=[{
///         "node_type_id": "standard-72",
///         "node_count": 3,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster_nw = new Gcp.VMwareEngine.Network("cluster-nw", new()
///     {
///         Name = "pc-nw",
///         Type = "STANDARD",
///         Location = "global",
///         Description = "PC network description.",
///     });
///
///     var cluster_pc = new Gcp.VMwareEngine.PrivateCloud("cluster-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = cluster_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                 },
///             },
///         },
///     });
///
///     var vmw_engine_ext_cluster = new Gcp.VMwareEngine.Cluster("vmw-engine-ext-cluster", new()
///     {
///         Name = "ext-cluster",
///         Parent = cluster_pc.Id,
///         NodeTypeConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterNodeTypeConfigArgs
///             {
///                 NodeTypeId = "standard-72",
///                 NodeCount = 3,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cluster_nw, err := vmwareengine.NewNetwork(ctx, "cluster-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_pc, err := vmwareengine.NewPrivateCloud(ctx, "cluster-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: cluster_nw.ID(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId: pulumi.String("standard-72"),
/// 						NodeCount:  pulumi.Int(3),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewCluster(ctx, "vmw-engine-ext-cluster", &vmwareengine.ClusterArgs{
/// 			Name:   pulumi.String("ext-cluster"),
/// 			Parent: cluster_pc.ID(),
/// 			NodeTypeConfigs: vmwareengine.ClusterNodeTypeConfigArray{
/// 				&vmwareengine.ClusterNodeTypeConfigArgs{
/// 					NodeTypeId: pulumi.String("standard-72"),
/// 					NodeCount:  pulumi.Int(3),
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
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.Cluster;
/// import com.pulumi.gcp.vmwareengine.ClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterNodeTypeConfigArgs;
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
///         var cluster_nw = new Network("cluster-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .type("STANDARD")
///             .location("global")
///             .description("PC network description.")
///             .build());
///
///         var cluster_pc = new PrivateCloud("cluster-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(cluster_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .build())
///                 .build())
///             .build());
///
///         var vmw_engine_ext_cluster = new Cluster("vmw-engine-ext-cluster", ClusterArgs.builder()
///             .name("ext-cluster")
///             .parent(cluster_pc.id())
///             .nodeTypeConfigs(ClusterNodeTypeConfigArgs.builder()
///                 .nodeTypeId("standard-72")
///                 .nodeCount(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-engine-ext-cluster:
///     type: gcp:vmwareengine:Cluster
///     properties:
///       name: ext-cluster
///       parent: ${["cluster-pc"].id}
///       nodeTypeConfigs:
///         - nodeTypeId: standard-72
///           nodeCount: 3
///   cluster-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["cluster-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///   cluster-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       type: STANDARD
///       location: global
///       description: PC network description.
/// ```
///
/// ### Vmware Engine Cluster Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_nw = new gcp.vmwareengine.Network("cluster-nw", {
///     name: "pc-nw",
///     type: "STANDARD",
///     location: "global",
///     description: "PC network description.",
/// });
/// const cluster_pc = new gcp.vmwareengine.PrivateCloud("cluster-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: cluster_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///             customCoreCount: 32,
///         }],
///     },
/// });
/// const vmw_ext_cluster = new gcp.vmwareengine.Cluster("vmw-ext-cluster", {
///     name: "ext-cluster",
///     parent: cluster_pc.id,
///     nodeTypeConfigs: [{
///         nodeTypeId: "standard-72",
///         nodeCount: 3,
///         customCoreCount: 32,
///     }],
///     autoscalingSettings: {
///         autoscalingPolicies: [{
///             autoscalePolicyId: "autoscaling-policy",
///             nodeTypeId: "standard-72",
///             scaleOutSize: 1,
///             cpuThresholds: {
///                 scaleOut: 80,
///                 scaleIn: 15,
///             },
///             consumedMemoryThresholds: {
///                 scaleOut: 75,
///                 scaleIn: 20,
///             },
///             storageThresholds: {
///                 scaleOut: 80,
///                 scaleIn: 20,
///             },
///         }],
///         minClusterNodeCount: 3,
///         maxClusterNodeCount: 8,
///         coolDownPeriod: "1800s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_nw = gcp.vmwareengine.Network("cluster-nw",
///     name="pc-nw",
///     type="STANDARD",
///     location="global",
///     description="PC network description.")
/// cluster_pc = gcp.vmwareengine.PrivateCloud("cluster-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": cluster_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///             "custom_core_count": 32,
///         }],
///     })
/// vmw_ext_cluster = gcp.vmwareengine.Cluster("vmw-ext-cluster",
///     name="ext-cluster",
///     parent=cluster_pc.id,
///     node_type_configs=[{
///         "node_type_id": "standard-72",
///         "node_count": 3,
///         "custom_core_count": 32,
///     }],
///     autoscaling_settings={
///         "autoscaling_policies": [{
///             "autoscale_policy_id": "autoscaling-policy",
///             "node_type_id": "standard-72",
///             "scale_out_size": 1,
///             "cpu_thresholds": {
///                 "scale_out": 80,
///                 "scale_in": 15,
///             },
///             "consumed_memory_thresholds": {
///                 "scale_out": 75,
///                 "scale_in": 20,
///             },
///             "storage_thresholds": {
///                 "scale_out": 80,
///                 "scale_in": 20,
///             },
///         }],
///         "min_cluster_node_count": 3,
///         "max_cluster_node_count": 8,
///         "cool_down_period": "1800s",
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
///     var cluster_nw = new Gcp.VMwareEngine.Network("cluster-nw", new()
///     {
///         Name = "pc-nw",
///         Type = "STANDARD",
///         Location = "global",
///         Description = "PC network description.",
///     });
///
///     var cluster_pc = new Gcp.VMwareEngine.PrivateCloud("cluster-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = cluster_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                     CustomCoreCount = 32,
///                 },
///             },
///         },
///     });
///
///     var vmw_ext_cluster = new Gcp.VMwareEngine.Cluster("vmw-ext-cluster", new()
///     {
///         Name = "ext-cluster",
///         Parent = cluster_pc.Id,
///         NodeTypeConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterNodeTypeConfigArgs
///             {
///                 NodeTypeId = "standard-72",
///                 NodeCount = 3,
///                 CustomCoreCount = 32,
///             },
///         },
///         AutoscalingSettings = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsArgs
///         {
///             AutoscalingPolicies = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyArgs
///                 {
///                     AutoscalePolicyId = "autoscaling-policy",
///                     NodeTypeId = "standard-72",
///                     ScaleOutSize = 1,
///                     CpuThresholds = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs
///                     {
///                         ScaleOut = 80,
///                         ScaleIn = 15,
///                     },
///                     ConsumedMemoryThresholds = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs
///                     {
///                         ScaleOut = 75,
///                         ScaleIn = 20,
///                     },
///                     StorageThresholds = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs
///                     {
///                         ScaleOut = 80,
///                         ScaleIn = 20,
///                     },
///                 },
///             },
///             MinClusterNodeCount = 3,
///             MaxClusterNodeCount = 8,
///             CoolDownPeriod = "1800s",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cluster_nw, err := vmwareengine.NewNetwork(ctx, "cluster-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_pc, err := vmwareengine.NewPrivateCloud(ctx, "cluster-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: cluster_nw.ID(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId:      pulumi.String("standard-72"),
/// 						NodeCount:       pulumi.Int(3),
/// 						CustomCoreCount: pulumi.Int(32),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewCluster(ctx, "vmw-ext-cluster", &vmwareengine.ClusterArgs{
/// 			Name:   pulumi.String("ext-cluster"),
/// 			Parent: cluster_pc.ID(),
/// 			NodeTypeConfigs: vmwareengine.ClusterNodeTypeConfigArray{
/// 				&vmwareengine.ClusterNodeTypeConfigArgs{
/// 					NodeTypeId:      pulumi.String("standard-72"),
/// 					NodeCount:       pulumi.Int(3),
/// 					CustomCoreCount: pulumi.Int(32),
/// 				},
/// 			},
/// 			AutoscalingSettings: &vmwareengine.ClusterAutoscalingSettingsArgs{
/// 				AutoscalingPolicies: vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyArray{
/// 					&vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyArgs{
/// 						AutoscalePolicyId: pulumi.String("autoscaling-policy"),
/// 						NodeTypeId:        pulumi.String("standard-72"),
/// 						ScaleOutSize:      pulumi.Int(1),
/// 						CpuThresholds: &vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs{
/// 							ScaleOut: pulumi.Int(80),
/// 							ScaleIn:  pulumi.Int(15),
/// 						},
/// 						ConsumedMemoryThresholds: &vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs{
/// 							ScaleOut: pulumi.Int(75),
/// 							ScaleIn:  pulumi.Int(20),
/// 						},
/// 						StorageThresholds: &vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs{
/// 							ScaleOut: pulumi.Int(80),
/// 							ScaleIn:  pulumi.Int(20),
/// 						},
/// 					},
/// 				},
/// 				MinClusterNodeCount: pulumi.Int(3),
/// 				MaxClusterNodeCount: pulumi.Int(8),
/// 				CoolDownPeriod:      pulumi.String("1800s"),
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
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.Cluster;
/// import com.pulumi.gcp.vmwareengine.ClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterAutoscalingSettingsArgs;
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
///         var cluster_nw = new Network("cluster-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .type("STANDARD")
///             .location("global")
///             .description("PC network description.")
///             .build());
///
///         var cluster_pc = new PrivateCloud("cluster-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(cluster_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .customCoreCount(32)
///                     .build())
///                 .build())
///             .build());
///
///         var vmw_ext_cluster = new Cluster("vmw-ext-cluster", ClusterArgs.builder()
///             .name("ext-cluster")
///             .parent(cluster_pc.id())
///             .nodeTypeConfigs(ClusterNodeTypeConfigArgs.builder()
///                 .nodeTypeId("standard-72")
///                 .nodeCount(3)
///                 .customCoreCount(32)
///                 .build())
///             .autoscalingSettings(ClusterAutoscalingSettingsArgs.builder()
///                 .autoscalingPolicies(ClusterAutoscalingSettingsAutoscalingPolicyArgs.builder()
///                     .autoscalePolicyId("autoscaling-policy")
///                     .nodeTypeId("standard-72")
///                     .scaleOutSize(1)
///                     .cpuThresholds(ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs.builder()
///                         .scaleOut(80)
///                         .scaleIn(15)
///                         .build())
///                     .consumedMemoryThresholds(ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs.builder()
///                         .scaleOut(75)
///                         .scaleIn(20)
///                         .build())
///                     .storageThresholds(ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs.builder()
///                         .scaleOut(80)
///                         .scaleIn(20)
///                         .build())
///                     .build())
///                 .minClusterNodeCount(3)
///                 .maxClusterNodeCount(8)
///                 .coolDownPeriod("1800s")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-ext-cluster:
///     type: gcp:vmwareengine:Cluster
///     properties:
///       name: ext-cluster
///       parent: ${["cluster-pc"].id}
///       nodeTypeConfigs:
///         - nodeTypeId: standard-72
///           nodeCount: 3
///           customCoreCount: 32
///       autoscalingSettings:
///         autoscalingPolicies:
///           - autoscalePolicyId: autoscaling-policy
///             nodeTypeId: standard-72
///             scaleOutSize: 1
///             cpuThresholds:
///               scaleOut: 80
///               scaleIn: 15
///             consumedMemoryThresholds:
///               scaleOut: 75
///               scaleIn: 20
///             storageThresholds:
///               scaleOut: 80
///               scaleIn: 20
///         minClusterNodeCount: 3
///         maxClusterNodeCount: 8
///         coolDownPeriod: 1800s
///   cluster-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["cluster-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///             customCoreCount: 32
///   cluster-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       type: STANDARD
///       location: global
///       description: PC network description.
/// ```
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `{{parent}}/clusters/{{name}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/cluster:Cluster default {{parent}}/clusters/{{name}}
/// ```
class Cluster extends pulumi.CustomResource {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  late final pulumi.Output<ClusterAutoscalingSettings?> autoscalingSettings;

  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// True if the cluster is a management cluster; false otherwise.
  /// There can only be one management cluster in a private cloud and it has to be the first one.
  late final pulumi.Output<bool> management;

  /// The ID of the Cluster.
  late final pulumi.Output<String> name;

  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterNodeTypeConfig>?> nodeTypeConfigs;

  /// The resource name of the private cloud to create a new cluster in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final pulumi.Output<String> parent;

  /// State of the Cluster.
  late final pulumi.Output<String> state;

  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_vmwareengine_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:vmwareengine/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.autoscalingSettings = registerOutput<ClusterAutoscalingSettings?>(
      'autoscalingSettings',
    );
    this.createTime = registerOutput<String>('createTime');
    this.management = registerOutput<bool>('management');
    this.name = registerOutput<String>('name');
    this.nodeTypeConfigs = registerOutput<List<ClusterNodeTypeConfig>?>(
      'nodeTypeConfigs',
    );
    this.parent = registerOutput<String>('parent');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
