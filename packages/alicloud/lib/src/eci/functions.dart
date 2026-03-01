import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_args.dart';
import 'get_container_groups_result.dart';
import 'get_image_caches_args.dart';
import 'get_image_caches_result.dart';
import 'get_virtual_nodes_args.dart';
import 'get_virtual_nodes_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Eci Container Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.111.0+.
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
/// const example = alicloud.eci.getContainerGroups({
///     ids: ["example_value"],
/// });
/// export const firstEciContainerGroupId = example.then(example => example.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.eci.get_container_groups(ids=["example_value"])
/// pulumi.export("firstEciContainerGroupId", example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Eci.GetContainerGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEciContainerGroupId"] = example.Apply(getContainerGroupsResult => getContainerGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eci.GetContainerGroups(ctx, &eci.GetContainerGroupsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEciContainerGroupId", example.Groups[0].Id)
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetContainerGroupsArgs;
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
///         final var example = EciFunctions.getContainerGroups(GetContainerGroupsArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("firstEciContainerGroupId", example.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:eci:getContainerGroups
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   firstEciContainerGroupId: ${example.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eci_get_container_groups_get_container_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetContainerGroupsResult> getContainerGroups(
  GetContainerGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eci/getContainerGroups:getContainerGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContainerGroupsResult.fromMap(result);
}

/// Provides a collection of ECI Image Cache to the specified filters.
///
/// > **NOTE:** Available in 1.90.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.eci.getImageCaches({
///     ids: ["imc-bp1ef0dyp7ldhb1d****"],
/// });
/// export const imageCache = example.then(example => example.caches?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.eci.get_image_caches(ids=["imc-bp1ef0dyp7ldhb1d****"])
/// pulumi.export("imageCache", example.caches[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Eci.GetImageCaches.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "imc-bp1ef0dyp7ldhb1d****",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["imageCache"] = example.Apply(getImageCachesResult => getImageCachesResult.Caches[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eci.GetImageCaches(ctx, &eci.GetImageCachesArgs{
/// 			Ids: []string{
/// 				"imc-bp1ef0dyp7ldhb1d****",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("imageCache", example.Caches[0].Id)
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetImageCachesArgs;
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
///         final var example = EciFunctions.getImageCaches(GetImageCachesArgs.builder()
///             .ids("imc-bp1ef0dyp7ldhb1d****")
///             .build());
///
///         ctx.export("imageCache", example.caches()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:eci:getImageCaches
///       arguments:
///         ids:
///           - imc-bp1ef0dyp7ldhb1d****
/// outputs:
///   imageCache: ${example.caches[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eci_get_image_caches_get_image_caches_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageCachesResult> getImageCaches(
  GetImageCachesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eci/getImageCaches:getImageCaches',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageCachesResult.fromMap(result);
}

/// This data source provides the Eci Virtual Nodes of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.145.0+.
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
/// const ids = alicloud.eci.getVirtualNodes({
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const eciVirtualNodeId1 = ids.then(ids => ids.nodes?.[0]?.id);
/// const nameRegex = alicloud.eci.getVirtualNodes({
///     nameRegex: "^my-VirtualNode",
/// });
/// export const eciVirtualNodeId2 = nameRegex.then(nameRegex => nameRegex.nodes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eci.get_virtual_nodes(ids=[
///     "example_value-1",
///     "example_value-2",
/// ])
/// pulumi.export("eciVirtualNodeId1", ids.nodes[0].id)
/// name_regex = alicloud.eci.get_virtual_nodes(name_regex="^my-VirtualNode")
/// pulumi.export("eciVirtualNodeId2", name_regex.nodes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Eci.GetVirtualNodes.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Eci.GetVirtualNodes.Invoke(new()
///     {
///         NameRegex = "^my-VirtualNode",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eciVirtualNodeId1"] = ids.Apply(getVirtualNodesResult => getVirtualNodesResult.Nodes[0]?.Id),
///         ["eciVirtualNodeId2"] = nameRegex.Apply(getVirtualNodesResult => getVirtualNodesResult.Nodes[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eci.GetVirtualNodes(ctx, &eci.GetVirtualNodesArgs{
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eciVirtualNodeId1", ids.Nodes[0].Id)
/// 		nameRegex, err := eci.GetVirtualNodes(ctx, &eci.GetVirtualNodesArgs{
/// 			NameRegex: pulumi.StringRef("^my-VirtualNode"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eciVirtualNodeId2", nameRegex.Nodes[0].Id)
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetVirtualNodesArgs;
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
///         final var ids = EciFunctions.getVirtualNodes(GetVirtualNodesArgs.builder()
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("eciVirtualNodeId1", ids.nodes()[0].id());
///         final var nameRegex = EciFunctions.getVirtualNodes(GetVirtualNodesArgs.builder()
///             .nameRegex("^my-VirtualNode")
///             .build());
///
///         ctx.export("eciVirtualNodeId2", nameRegex.nodes()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eci:getVirtualNodes
///       arguments:
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eci:getVirtualNodes
///       arguments:
///         nameRegex: ^my-VirtualNode
/// outputs:
///   eciVirtualNodeId1: ${ids.nodes[0].id}
///   eciVirtualNodeId2: ${nameRegex.nodes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eci_get_virtual_nodes_get_virtual_nodes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNodesResult> getVirtualNodes(
  GetVirtualNodesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eci/getVirtualNodes:getVirtualNodes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNodesResult.fromMap(result);
}

/// This data source provides the available zones with the Elastic Container Instance (ECI) of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.145.0.
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
/// const _default = alicloud.eci.getZones({});
/// export const firstEciZonesId = _default.then(_default => _default.zones?.[0]?.zoneIds?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eci.get_zones()
/// pulumi.export("firstEciZonesId", default.zones[0].zone_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Eci.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEciZonesId"] = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneIds[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := eci.GetZones(ctx, &eci.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEciZonesId", _default.Zones[0].ZoneIds[0])
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetZonesArgs;
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
///         final var default = EciFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("firstEciZonesId", default_.zones()[0].zoneIds()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eci:getZones
///       arguments: {}
/// outputs:
///   firstEciZonesId: ${default.zones[0].zoneIds[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eci_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eci/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
