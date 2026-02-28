import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_profile_args.dart';
import 'app_profile_data_boost_isolation_read_only.dart';
import 'app_profile_single_cluster_routing.dart';
import 'app_profile_standard_isolation.dart';

/// App profile is a configuration object describing how Cloud Bigtable should treat traffic from a particular end user application.
///
///
/// To get more information about AppProfile, see:
///
/// * [API documentation](https://cloud.google.com/bigtable/docs/reference/admin/rest/v2/projects.instances.appProfiles)
///
/// ## Example Usage
///
/// ### Bigtable App Profile Anycluster
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     clusters: [
///         {
///             clusterId: "cluster-1",
///             zone: "us-central1-a",
///             numNodes: 3,
///             storageType: "HDD",
///         },
///         {
///             clusterId: "cluster-2",
///             zone: "us-central1-b",
///             numNodes: 3,
///             storageType: "HDD",
///         },
///         {
///             clusterId: "cluster-3",
///             zone: "us-central1-c",
///             numNodes: 3,
///             storageType: "HDD",
///         },
///     ],
///     deletionProtection: true,
/// });
/// const ap = new gcp.bigtable.AppProfile("ap", {
///     instance: instance.name,
///     appProfileId: "bt-profile",
///     multiClusterRoutingUseAny: true,
///     ignoreWarnings: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     clusters=[
///         {
///             "cluster_id": "cluster-1",
///             "zone": "us-central1-a",
///             "num_nodes": 3,
///             "storage_type": "HDD",
///         },
///         {
///             "cluster_id": "cluster-2",
///             "zone": "us-central1-b",
///             "num_nodes": 3,
///             "storage_type": "HDD",
///         },
///         {
///             "cluster_id": "cluster-3",
///             "zone": "us-central1-c",
///             "num_nodes": 3,
///             "storage_type": "HDD",
///         },
///     ],
///     deletion_protection=True)
/// ap = gcp.bigtable.AppProfile("ap",
///     instance=instance.name,
///     app_profile_id="bt-profile",
///     multi_cluster_routing_use_any=True,
///     ignore_warnings=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "bt-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-1",
///                 Zone = "us-central1-a",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-2",
///                 Zone = "us-central1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-3",
///                 Zone = "us-central1-c",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var ap = new Gcp.BigTable.AppProfile("ap", new()
///     {
///         Instance = instance.Name,
///         AppProfileId = "bt-profile",
///         MultiClusterRoutingUseAny = true,
///         IgnoreWarnings = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("bt-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-1"),
/// 					Zone:        pulumi.String("us-central1-a"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-2"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-3"),
/// 					Zone:        pulumi.String("us-central1-c"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewAppProfile(ctx, "ap", &bigtable.AppProfileArgs{
/// 			Instance:                  instance.Name,
/// 			AppProfileId:              pulumi.String("bt-profile"),
/// 			MultiClusterRoutingUseAny: pulumi.Bool(true),
/// 			IgnoreWarnings:            pulumi.Bool(true),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.AppProfile;
/// import com.pulumi.gcp.bigtable.AppProfileArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("bt-instance")
///             .clusters(
///                 InstanceClusterArgs.builder()
///                     .clusterId("cluster-1")
///                     .zone("us-central1-a")
///                     .numNodes(3)
///                     .storageType("HDD")
///                     .build(),
///                 InstanceClusterArgs.builder()
///                     .clusterId("cluster-2")
///                     .zone("us-central1-b")
///                     .numNodes(3)
///                     .storageType("HDD")
///                     .build(),
///                 InstanceClusterArgs.builder()
///                     .clusterId("cluster-3")
///                     .zone("us-central1-c")
///                     .numNodes(3)
///                     .storageType("HDD")
///                     .build())
///             .deletionProtection(true)
///             .build());
///
///         var ap = new AppProfile("ap", AppProfileArgs.builder()
///             .instance(instance.name())
///             .appProfileId("bt-profile")
///             .multiClusterRoutingUseAny(true)
///             .ignoreWarnings(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: bt-instance
///       clusters:
///         - clusterId: cluster-1
///           zone: us-central1-a
///           numNodes: 3
///           storageType: HDD
///         - clusterId: cluster-2
///           zone: us-central1-b
///           numNodes: 3
///           storageType: HDD
///         - clusterId: cluster-3
///           zone: us-central1-c
///           numNodes: 3
///           storageType: HDD
///       deletionProtection: true
///   ap:
///     type: gcp:bigtable:AppProfile
///     properties:
///       instance: ${instance.name}
///       appProfileId: bt-profile
///       multiClusterRoutingUseAny: true
///       ignoreWarnings: true
/// ```
///
/// ### Bigtable App Profile Singlecluster
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     clusters: [{
///         clusterId: "cluster-1",
///         zone: "us-central1-b",
///         numNodes: 3,
///         storageType: "HDD",
///     }],
///     deletionProtection: true,
/// });
/// const ap = new gcp.bigtable.AppProfile("ap", {
///     instance: instance.name,
///     appProfileId: "bt-profile",
///     singleClusterRouting: {
///         clusterId: "cluster-1",
///         allowTransactionalWrites: true,
///     },
///     ignoreWarnings: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     clusters=[{
///         "cluster_id": "cluster-1",
///         "zone": "us-central1-b",
///         "num_nodes": 3,
///         "storage_type": "HDD",
///     }],
///     deletion_protection=True)
/// ap = gcp.bigtable.AppProfile("ap",
///     instance=instance.name,
///     app_profile_id="bt-profile",
///     single_cluster_routing={
///         "cluster_id": "cluster-1",
///         "allow_transactional_writes": True,
///     },
///     ignore_warnings=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "bt-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-1",
///                 Zone = "us-central1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var ap = new Gcp.BigTable.AppProfile("ap", new()
///     {
///         Instance = instance.Name,
///         AppProfileId = "bt-profile",
///         SingleClusterRouting = new Gcp.BigTable.Inputs.AppProfileSingleClusterRoutingArgs
///         {
///             ClusterId = "cluster-1",
///             AllowTransactionalWrites = true,
///         },
///         IgnoreWarnings = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("bt-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-1"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewAppProfile(ctx, "ap", &bigtable.AppProfileArgs{
/// 			Instance:     instance.Name,
/// 			AppProfileId: pulumi.String("bt-profile"),
/// 			SingleClusterRouting: &bigtable.AppProfileSingleClusterRoutingArgs{
/// 				ClusterId:                pulumi.String("cluster-1"),
/// 				AllowTransactionalWrites: pulumi.Bool(true),
/// 			},
/// 			IgnoreWarnings: pulumi.Bool(true),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.AppProfile;
/// import com.pulumi.gcp.bigtable.AppProfileArgs;
/// import com.pulumi.gcp.bigtable.inputs.AppProfileSingleClusterRoutingArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("bt-instance")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("cluster-1")
///                 .zone("us-central1-b")
///                 .numNodes(3)
///                 .storageType("HDD")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var ap = new AppProfile("ap", AppProfileArgs.builder()
///             .instance(instance.name())
///             .appProfileId("bt-profile")
///             .singleClusterRouting(AppProfileSingleClusterRoutingArgs.builder()
///                 .clusterId("cluster-1")
///                 .allowTransactionalWrites(true)
///                 .build())
///             .ignoreWarnings(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: bt-instance
///       clusters:
///         - clusterId: cluster-1
///           zone: us-central1-b
///           numNodes: 3
///           storageType: HDD
///       deletionProtection: true
///   ap:
///     type: gcp:bigtable:AppProfile
///     properties:
///       instance: ${instance.name}
///       appProfileId: bt-profile
///       singleClusterRouting:
///         clusterId: cluster-1
///         allowTransactionalWrites: true
///       ignoreWarnings: true
/// ```
///
/// ### Bigtable App Profile Multicluster
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     clusters: [
///         {
///             clusterId: "cluster-1",
///             zone: "us-central1-a",
///             numNodes: 3,
///             storageType: "HDD",
///         },
///         {
///             clusterId: "cluster-2",
///             zone: "us-central1-b",
///             numNodes: 3,
///             storageType: "HDD",
///         },
///         {
///             clusterId: "cluster-3",
///             zone: "us-central1-c",
///             numNodes: 3,
///             storageType: "HDD",
///         },
///     ],
///     deletionProtection: true,
/// });
/// const ap = new gcp.bigtable.AppProfile("ap", {
///     instance: instance.name,
///     appProfileId: "bt-profile",
///     multiClusterRoutingUseAny: true,
///     multiClusterRoutingClusterIds: [
///         "cluster-1",
///         "cluster-2",
///     ],
///     ignoreWarnings: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     clusters=[
///         {
///             "cluster_id": "cluster-1",
///             "zone": "us-central1-a",
///             "num_nodes": 3,
///             "storage_type": "HDD",
///         },
///         {
///             "cluster_id": "cluster-2",
///             "zone": "us-central1-b",
///             "num_nodes": 3,
///             "storage_type": "HDD",
///         },
///         {
///             "cluster_id": "cluster-3",
///             "zone": "us-central1-c",
///             "num_nodes": 3,
///             "storage_type": "HDD",
///         },
///     ],
///     deletion_protection=True)
/// ap = gcp.bigtable.AppProfile("ap",
///     instance=instance.name,
///     app_profile_id="bt-profile",
///     multi_cluster_routing_use_any=True,
///     multi_cluster_routing_cluster_ids=[
///         "cluster-1",
///         "cluster-2",
///     ],
///     ignore_warnings=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "bt-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-1",
///                 Zone = "us-central1-a",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-2",
///                 Zone = "us-central1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-3",
///                 Zone = "us-central1-c",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var ap = new Gcp.BigTable.AppProfile("ap", new()
///     {
///         Instance = instance.Name,
///         AppProfileId = "bt-profile",
///         MultiClusterRoutingUseAny = true,
///         MultiClusterRoutingClusterIds = new[]
///         {
///             "cluster-1",
///             "cluster-2",
///         },
///         IgnoreWarnings = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("bt-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-1"),
/// 					Zone:        pulumi.String("us-central1-a"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-2"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-3"),
/// 					Zone:        pulumi.String("us-central1-c"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewAppProfile(ctx, "ap", &bigtable.AppProfileArgs{
/// 			Instance:                  instance.Name,
/// 			AppProfileId:              pulumi.String("bt-profile"),
/// 			MultiClusterRoutingUseAny: pulumi.Bool(true),
/// 			MultiClusterRoutingClusterIds: pulumi.StringArray{
/// 				pulumi.String("cluster-1"),
/// 				pulumi.String("cluster-2"),
/// 			},
/// 			IgnoreWarnings: pulumi.Bool(true),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.AppProfile;
/// import com.pulumi.gcp.bigtable.AppProfileArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("bt-instance")
///             .clusters(
///                 InstanceClusterArgs.builder()
///                     .clusterId("cluster-1")
///                     .zone("us-central1-a")
///                     .numNodes(3)
///                     .storageType("HDD")
///                     .build(),
///                 InstanceClusterArgs.builder()
///                     .clusterId("cluster-2")
///                     .zone("us-central1-b")
///                     .numNodes(3)
///                     .storageType("HDD")
///                     .build(),
///                 InstanceClusterArgs.builder()
///                     .clusterId("cluster-3")
///                     .zone("us-central1-c")
///                     .numNodes(3)
///                     .storageType("HDD")
///                     .build())
///             .deletionProtection(true)
///             .build());
///
///         var ap = new AppProfile("ap", AppProfileArgs.builder()
///             .instance(instance.name())
///             .appProfileId("bt-profile")
///             .multiClusterRoutingUseAny(true)
///             .multiClusterRoutingClusterIds(
///                 "cluster-1",
///                 "cluster-2")
///             .ignoreWarnings(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: bt-instance
///       clusters:
///         - clusterId: cluster-1
///           zone: us-central1-a
///           numNodes: 3
///           storageType: HDD
///         - clusterId: cluster-2
///           zone: us-central1-b
///           numNodes: 3
///           storageType: HDD
///         - clusterId: cluster-3
///           zone: us-central1-c
///           numNodes: 3
///           storageType: HDD
///       deletionProtection: true
///   ap:
///     type: gcp:bigtable:AppProfile
///     properties:
///       instance: ${instance.name}
///       appProfileId: bt-profile
///       multiClusterRoutingUseAny: true
///       multiClusterRoutingClusterIds:
///         - cluster-1
///         - cluster-2
///       ignoreWarnings: true
/// ```
///
/// ### Bigtable App Profile Priority
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "bt-instance",
///     clusters: [{
///         clusterId: "cluster-1",
///         zone: "us-central1-b",
///         numNodes: 3,
///         storageType: "HDD",
///     }],
///     deletionProtection: true,
/// });
/// const ap = new gcp.bigtable.AppProfile("ap", {
///     instance: instance.name,
///     appProfileId: "bt-profile",
///     singleClusterRouting: {
///         clusterId: "cluster-1",
///         allowTransactionalWrites: true,
///     },
///     standardIsolation: {
///         priority: "PRIORITY_LOW",
///     },
///     ignoreWarnings: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.bigtable.Instance("instance",
///     name="bt-instance",
///     clusters=[{
///         "cluster_id": "cluster-1",
///         "zone": "us-central1-b",
///         "num_nodes": 3,
///         "storage_type": "HDD",
///     }],
///     deletion_protection=True)
/// ap = gcp.bigtable.AppProfile("ap",
///     instance=instance.name,
///     app_profile_id="bt-profile",
///     single_cluster_routing={
///         "cluster_id": "cluster-1",
///         "allow_transactional_writes": True,
///     },
///     standard_isolation={
///         "priority": "PRIORITY_LOW",
///     },
///     ignore_warnings=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "bt-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "cluster-1",
///                 Zone = "us-central1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///         DeletionProtection = true,
///     });
///
///     var ap = new Gcp.BigTable.AppProfile("ap", new()
///     {
///         Instance = instance.Name,
///         AppProfileId = "bt-profile",
///         SingleClusterRouting = new Gcp.BigTable.Inputs.AppProfileSingleClusterRoutingArgs
///         {
///             ClusterId = "cluster-1",
///             AllowTransactionalWrites = true,
///         },
///         StandardIsolation = new Gcp.BigTable.Inputs.AppProfileStandardIsolationArgs
///         {
///             Priority = "PRIORITY_LOW",
///         },
///         IgnoreWarnings = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("bt-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("cluster-1"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewAppProfile(ctx, "ap", &bigtable.AppProfileArgs{
/// 			Instance:     instance.Name,
/// 			AppProfileId: pulumi.String("bt-profile"),
/// 			SingleClusterRouting: &bigtable.AppProfileSingleClusterRoutingArgs{
/// 				ClusterId:                pulumi.String("cluster-1"),
/// 				AllowTransactionalWrites: pulumi.Bool(true),
/// 			},
/// 			StandardIsolation: &bigtable.AppProfileStandardIsolationArgs{
/// 				Priority: pulumi.String("PRIORITY_LOW"),
/// 			},
/// 			IgnoreWarnings: pulumi.Bool(true),
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
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.AppProfile;
/// import com.pulumi.gcp.bigtable.AppProfileArgs;
/// import com.pulumi.gcp.bigtable.inputs.AppProfileSingleClusterRoutingArgs;
/// import com.pulumi.gcp.bigtable.inputs.AppProfileStandardIsolationArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("bt-instance")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("cluster-1")
///                 .zone("us-central1-b")
///                 .numNodes(3)
///                 .storageType("HDD")
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var ap = new AppProfile("ap", AppProfileArgs.builder()
///             .instance(instance.name())
///             .appProfileId("bt-profile")
///             .singleClusterRouting(AppProfileSingleClusterRoutingArgs.builder()
///                 .clusterId("cluster-1")
///                 .allowTransactionalWrites(true)
///                 .build())
///             .standardIsolation(AppProfileStandardIsolationArgs.builder()
///                 .priority("PRIORITY_LOW")
///                 .build())
///             .ignoreWarnings(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: bt-instance
///       clusters:
///         - clusterId: cluster-1
///           zone: us-central1-b
///           numNodes: 3
///           storageType: HDD
///       deletionProtection: true
///   ap:
///     type: gcp:bigtable:AppProfile
///     properties:
///       instance: ${instance.name}
///       appProfileId: bt-profile
///       singleClusterRouting:
///         clusterId: cluster-1
///         allowTransactionalWrites: true
///       standardIsolation:
///         priority: PRIORITY_LOW
///       ignoreWarnings: true
/// ```
///
///
/// ## Import
///
/// AppProfile can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/appProfiles/{{app_profile_id}}`
///
/// * `{{project}}/{{instance}}/{{app_profile_id}}`
///
/// * `{{instance}}/{{app_profile_id}}`
///
/// When using the `pulumi import` command, AppProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/appProfile:AppProfile default projects/{{project}}/instances/{{instance}}/appProfiles/{{app_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/appProfile:AppProfile default {{project}}/{{instance}}/{{app_profile_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigtable/appProfile:AppProfile default {{instance}}/{{app_profile_id}}
/// ```
class AppProfile extends pulumi.CustomResource {
  /// The unique name of the app profile in the form `[_a-zA-Z0-9][-_.a-zA-Z0-9]*`.
  late final pulumi.Output<String> appProfileId;

  /// Specifies that this app profile is intended for read-only usage via the Data Boost feature.
  /// Structure is documented below.
  late final pulumi.Output<AppProfileDataBoostIsolationReadOnly?>
      dataBoostIsolationReadOnly;

  /// Long form description of the use case for this app profile.
  late final pulumi.Output<String?> description;

  /// If true, ignore safety checks when deleting/updating the app profile.
  late final pulumi.Output<bool?> ignoreWarnings;

  /// The name of the instance to create the app profile within.
  late final pulumi.Output<String?> instance;

  /// The set of clusters to route to. The order is ignored; clusters will be tried in order of distance. If left empty, all clusters are eligible.
  late final pulumi.Output<List<String>?> multiClusterRoutingClusterIds;

  /// If true, read/write requests are routed to the nearest cluster in the instance, and will fail over to the nearest cluster that is available
  /// in the event of transient errors or delays. Clusters in a region are considered equidistant. Choosing this option sacrifices read-your-writes
  /// consistency to improve availability.
  late final pulumi.Output<bool?> multiClusterRoutingUseAny;

  /// The unique name of the requested app profile. Values are of the form `projects/<project>/instances/<instance>/appProfiles/<appProfileId>`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Must be used with multi-cluster routing. If true, then this app profile will use row affinity sticky routing. With row affinity, Bigtable will route single row key requests based on the row key, rather than randomly. Instead, each row key will be assigned to a cluster by Cloud Bigtable, and will stick to that cluster. Choosing this option improves read-your-writes consistency for most requests under most circumstances, without sacrificing availability. Consistency is not guaranteed, as requests may still fail over between clusters in the event of errors or latency.
  late final pulumi.Output<bool?> rowAffinity;

  /// Use a single-cluster routing policy.
  /// Structure is documented below.
  late final pulumi.Output<AppProfileSingleClusterRouting?>
      singleClusterRouting;

  /// The standard options used for isolating this app profile's traffic from other use cases.
  /// Structure is documented below.
  late final pulumi.Output<AppProfileStandardIsolation> standardIsolation;

  /// Creates a new [AppProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppProfile]. {@macro pulumi_bigtable_app_profile_app_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppProfile(
    String name, {
    AppProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/appProfile:AppProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appProfileId = registerOutput<String>('appProfileId');
    this.dataBoostIsolationReadOnly =
        registerOutput<AppProfileDataBoostIsolationReadOnly?>(
            'dataBoostIsolationReadOnly');
    this.description = registerOutput<String?>('description');
    this.ignoreWarnings = registerOutput<bool?>('ignoreWarnings');
    this.instance = registerOutput<String?>('instance');
    this.multiClusterRoutingClusterIds =
        registerOutput<List<String>?>('multiClusterRoutingClusterIds');
    this.multiClusterRoutingUseAny =
        registerOutput<bool?>('multiClusterRoutingUseAny');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.rowAffinity = registerOutput<bool?>('rowAffinity');
    this.singleClusterRouting =
        registerOutput<AppProfileSingleClusterRouting?>('singleClusterRouting');
    this.standardIsolation =
        registerOutput<AppProfileStandardIsolation>('standardIsolation');
  }
}
