import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_block_storage_clusters_args.dart';
import 'get_dedicated_block_storage_clusters_result.dart';
import 'get_disk_replica_groups_args.dart';
import 'get_disk_replica_groups_result.dart';
import 'get_disk_replica_pairs_args.dart';
import 'get_disk_replica_pairs_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';

/// This data source provides Ebs Dedicated Block Storage Cluster available to the user.
///
/// > **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ebs.getDedicatedBlockStorageClusters({
///     ids: ["example_id"],
///     nameRegex: defaultAlicloudEbsDedicatedBlockStorageCluster.name,
/// });
/// export const alicloudEbsDedicatedBlockStorageClusterExampleId = _default.then(_default => _default.clusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ebs.get_dedicated_block_storage_clusters(ids=["example_id"],
///     name_regex=default_alicloud_ebs_dedicated_block_storage_cluster["name"])
/// pulumi.export("alicloudEbsDedicatedBlockStorageClusterExampleId", default.clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ebs.GetDedicatedBlockStorageClusters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         NameRegex = defaultAlicloudEbsDedicatedBlockStorageCluster.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEbsDedicatedBlockStorageClusterExampleId"] = @default.Apply(@default => @default.Apply(getDedicatedBlockStorageClustersResult => getDedicatedBlockStorageClustersResult.Clusters[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ebs.GetDedicatedBlockStorageClusters(ctx, &ebs.GetDedicatedBlockStorageClustersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			NameRegex: pulumi.StringRef(defaultAlicloudEbsDedicatedBlockStorageCluster.Name),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudEbsDedicatedBlockStorageClusterExampleId", _default.Clusters[0].Id)
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
/// import com.pulumi.alicloud.ebs.EbsFunctions;
/// import com.pulumi.alicloud.ebs.inputs.GetDedicatedBlockStorageClustersArgs;
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
///         final var default = EbsFunctions.getDedicatedBlockStorageClusters(GetDedicatedBlockStorageClustersArgs.builder()
///             .ids("example_id")
///             .nameRegex(defaultAlicloudEbsDedicatedBlockStorageCluster.name())
///             .build());
///
///         ctx.export("alicloudEbsDedicatedBlockStorageClusterExampleId", default_.clusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ebs:getDedicatedBlockStorageClusters
///       arguments:
///         ids:
///           - example_id
///         nameRegex: ${defaultAlicloudEbsDedicatedBlockStorageCluster.name}
/// outputs:
///   alicloudEbsDedicatedBlockStorageClusterExampleId: ${default.clusters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_dedicated_block_storage_clusters_get_dedicated_block_storage_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedBlockStorageClustersResult> getDedicatedBlockStorageClusters(
  GetDedicatedBlockStorageClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ebs/getDedicatedBlockStorageClusters:getDedicatedBlockStorageClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedBlockStorageClustersResult.fromMap(result);
}

/// This data source provides the Ebs Disk Replica Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.187.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.ebs.getDiskReplicaGroups({
///     ids: ["example_id"],
/// });
/// export const ebsDiskReplicaGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ebs.get_disk_replica_groups(ids=["example_id"])
/// pulumi.export("ebsDiskReplicaGroupId1", ids.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ebs.GetDiskReplicaGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ebsDiskReplicaGroupId1"] = ids.Apply(getDiskReplicaGroupsResult => getDiskReplicaGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ebs.GetDiskReplicaGroups(ctx, &ebs.GetDiskReplicaGroupsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ebsDiskReplicaGroupId1", ids.Groups[0].Id)
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
/// import com.pulumi.alicloud.ebs.EbsFunctions;
/// import com.pulumi.alicloud.ebs.inputs.GetDiskReplicaGroupsArgs;
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
///         final var ids = EbsFunctions.getDiskReplicaGroups(GetDiskReplicaGroupsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("ebsDiskReplicaGroupId1", ids.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ebs:getDiskReplicaGroups
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   ebsDiskReplicaGroupId1: ${ids.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_disk_replica_groups_get_disk_replica_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskReplicaGroupsResult> getDiskReplicaGroups(
  GetDiskReplicaGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ebs/getDiskReplicaGroups:getDiskReplicaGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskReplicaGroupsResult.fromMap(result);
}

/// This data source provides Ebs Disk Replica Pair available to the user.
///
/// > **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ebs.getDiskReplicaPairs({
///     ids: [defaultAlicloudEbsDiskReplicaPair.id],
/// });
/// export const alicloudEbsDiskReplicaPairExampleId = _default.then(_default => _default.pairs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ebs.get_disk_replica_pairs(ids=[default_alicloud_ebs_disk_replica_pair["id"]])
/// pulumi.export("alicloudEbsDiskReplicaPairExampleId", default.pairs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ebs.GetDiskReplicaPairs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudEbsDiskReplicaPair.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEbsDiskReplicaPairExampleId"] = @default.Apply(@default => @default.Apply(getDiskReplicaPairsResult => getDiskReplicaPairsResult.Pairs[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := ebs.GetDiskReplicaPairs(ctx, &ebs.GetDiskReplicaPairsArgs{
/// Ids: interface{}{
/// defaultAlicloudEbsDiskReplicaPair.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudEbsDiskReplicaPairExampleId", _default.Pairs[0].Id)
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
/// import com.pulumi.alicloud.ebs.EbsFunctions;
/// import com.pulumi.alicloud.ebs.inputs.GetDiskReplicaPairsArgs;
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
///         final var default = EbsFunctions.getDiskReplicaPairs(GetDiskReplicaPairsArgs.builder()
///             .ids(defaultAlicloudEbsDiskReplicaPair.id())
///             .build());
///
///         ctx.export("alicloudEbsDiskReplicaPairExampleId", default_.pairs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ebs:getDiskReplicaPairs
///       arguments:
///         ids:
///           - ${defaultAlicloudEbsDiskReplicaPair.id}
/// outputs:
///   alicloudEbsDiskReplicaPairExampleId: ${default.pairs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_disk_replica_pairs_get_disk_replica_pairs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskReplicaPairsResult> getDiskReplicaPairs(
  GetDiskReplicaPairsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ebs/getDiskReplicaPairs:getDiskReplicaPairs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskReplicaPairsResult.fromMap(result);
}

/// This data source provides the Ebs Regions of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.187.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ebs.getRegions({
///     regionId: "cn-hangzhou",
/// });
/// export const regions = _default.then(_default => _default.regions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ebs.get_regions(region_id="cn-hangzhou")
/// pulumi.export("regions", default.regions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ebs.GetRegions.Invoke(new()
///     {
///         RegionId = "cn-hangzhou",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["regions"] = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ebs.GetRegions(ctx, &ebs.GetRegionsArgs{
/// 			RegionId: pulumi.StringRef("cn-hangzhou"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("regions", _default.Regions)
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
/// import com.pulumi.alicloud.ebs.EbsFunctions;
/// import com.pulumi.alicloud.ebs.inputs.GetRegionsArgs;
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
///         final var default = EbsFunctions.getRegions(GetRegionsArgs.builder()
///             .regionId("cn-hangzhou")
///             .build());
///
///         ctx.export("regions", default_.regions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ebs:getRegions
///       arguments:
///         regionId: cn-hangzhou
/// outputs:
///   regions: ${default.regions}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ebs_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ebs/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}
