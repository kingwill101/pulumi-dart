import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_groups_args.dart';
import 'get_access_groups_result.dart';
import 'get_access_rules_args.dart';
import 'get_access_rules_result.dart';
import 'get_file_systems_args.dart';
import 'get_file_systems_result.dart';
import 'get_mount_points_args.dart';
import 'get_mount_points_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the Apsara File Storage for HDFS Access Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.133.0+.
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
/// const ids = alicloud.dfs.getAccessGroups({
///     ids: ["example_id"],
/// });
/// export const dfsAccessGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.dfs.getAccessGroups({
///     nameRegex: "^my-AccessGroup",
/// });
/// export const dfsAccessGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dfs.get_access_groups(ids=["example_id"])
/// pulumi.export("dfsAccessGroupId1", ids.groups[0].id)
/// name_regex = alicloud.dfs.get_access_groups(name_regex="^my-AccessGroup")
/// pulumi.export("dfsAccessGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dfs.GetAccessGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Dfs.GetAccessGroups.Invoke(new()
///     {
///         NameRegex = "^my-AccessGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dfsAccessGroupId1"] = ids.Apply(getAccessGroupsResult => getAccessGroupsResult.Groups[0]?.Id),
///         ["dfsAccessGroupId2"] = nameRegex.Apply(getAccessGroupsResult => getAccessGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dfs.GetAccessGroups(ctx, &dfs.GetAccessGroupsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dfsAccessGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := dfs.GetAccessGroups(ctx, &dfs.GetAccessGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-AccessGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dfsAccessGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.dfs.DfsFunctions;
/// import com.pulumi.alicloud.dfs.inputs.GetAccessGroupsArgs;
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
///         final var ids = DfsFunctions.getAccessGroups(GetAccessGroupsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("dfsAccessGroupId1", ids.groups()[0].id());
///         final var nameRegex = DfsFunctions.getAccessGroups(GetAccessGroupsArgs.builder()
///             .nameRegex("^my-AccessGroup")
///             .build());
///
///         ctx.export("dfsAccessGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dfs:getAccessGroups
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:dfs:getAccessGroups
///       arguments:
///         nameRegex: ^my-AccessGroup
/// outputs:
///   dfsAccessGroupId1: ${ids.groups[0].id}
///   dfsAccessGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dfs_get_access_groups_get_access_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessGroupsResult> getAccessGroups(
  GetAccessGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dfs/getAccessGroups:getAccessGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessGroupsResult.fromMap(result);
}

/// This data source provides the Dfs Access Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
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
/// const ids = alicloud.dfs.getAccessRules({
///     accessGroupId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const dfsAccessRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dfs.get_access_rules(access_group_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("dfsAccessRuleId1", ids.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dfs.GetAccessRules.Invoke(new()
///     {
///         AccessGroupId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dfsAccessRuleId1"] = ids.Apply(getAccessRulesResult => getAccessRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dfs.GetAccessRules(ctx, &dfs.GetAccessRulesArgs{
/// 			AccessGroupId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dfsAccessRuleId1", ids.Rules[0].Id)
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
/// import com.pulumi.alicloud.dfs.DfsFunctions;
/// import com.pulumi.alicloud.dfs.inputs.GetAccessRulesArgs;
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
///         final var ids = DfsFunctions.getAccessRules(GetAccessRulesArgs.builder()
///             .accessGroupId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("dfsAccessRuleId1", ids.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dfs:getAccessRules
///       arguments:
///         accessGroupId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   dfsAccessRuleId1: ${ids.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dfs_get_access_rules_get_access_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessRulesResult> getAccessRules(
  GetAccessRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dfs/getAccessRules:getAccessRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessRulesResult.fromMap(result);
}

/// This data source provides the Dfs File Systems of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
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
/// const ids = alicloud.dfs.getFileSystems({
///     ids: ["example_id"],
/// });
/// export const dfsFileSystemId1 = ids.then(ids => ids.systems?.[0]?.id);
/// const nameRegex = alicloud.dfs.getFileSystems({
///     nameRegex: "^my-FileSystem",
/// });
/// export const dfsFileSystemId2 = nameRegex.then(nameRegex => nameRegex.systems?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dfs.get_file_systems(ids=["example_id"])
/// pulumi.export("dfsFileSystemId1", ids.systems[0].id)
/// name_regex = alicloud.dfs.get_file_systems(name_regex="^my-FileSystem")
/// pulumi.export("dfsFileSystemId2", name_regex.systems[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dfs.GetFileSystems.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Dfs.GetFileSystems.Invoke(new()
///     {
///         NameRegex = "^my-FileSystem",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dfsFileSystemId1"] = ids.Apply(getFileSystemsResult => getFileSystemsResult.Systems[0]?.Id),
///         ["dfsFileSystemId2"] = nameRegex.Apply(getFileSystemsResult => getFileSystemsResult.Systems[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dfs.GetFileSystems(ctx, &dfs.GetFileSystemsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dfsFileSystemId1", ids.Systems[0].Id)
/// 		nameRegex, err := dfs.GetFileSystems(ctx, &dfs.GetFileSystemsArgs{
/// 			NameRegex: pulumi.StringRef("^my-FileSystem"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dfsFileSystemId2", nameRegex.Systems[0].Id)
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
/// import com.pulumi.alicloud.dfs.DfsFunctions;
/// import com.pulumi.alicloud.dfs.inputs.GetFileSystemsArgs;
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
///         final var ids = DfsFunctions.getFileSystems(GetFileSystemsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("dfsFileSystemId1", ids.systems()[0].id());
///         final var nameRegex = DfsFunctions.getFileSystems(GetFileSystemsArgs.builder()
///             .nameRegex("^my-FileSystem")
///             .build());
///
///         ctx.export("dfsFileSystemId2", nameRegex.systems()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dfs:getFileSystems
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:dfs:getFileSystems
///       arguments:
///         nameRegex: ^my-FileSystem
/// outputs:
///   dfsFileSystemId1: ${ids.systems[0].id}
///   dfsFileSystemId2: ${nameRegex.systems[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dfs_get_file_systems_get_file_systems_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileSystemsResult> getFileSystems(
  GetFileSystemsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dfs/getFileSystems:getFileSystems',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileSystemsResult.fromMap(result);
}

/// This data source provides the Dfs Mount Points of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
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
/// const ids = alicloud.dfs.getMountPoints({
///     fileSystemId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const dfsMountPointId1 = ids.then(ids => ids.points?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.dfs.get_mount_points(file_system_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("dfsMountPointId1", ids.points[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Dfs.GetMountPoints.Invoke(new()
///     {
///         FileSystemId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dfsMountPointId1"] = ids.Apply(getMountPointsResult => getMountPointsResult.Points[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := dfs.GetMountPoints(ctx, &dfs.GetMountPointsArgs{
/// 			FileSystemId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dfsMountPointId1", ids.Points[0].Id)
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
/// import com.pulumi.alicloud.dfs.DfsFunctions;
/// import com.pulumi.alicloud.dfs.inputs.GetMountPointsArgs;
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
///         final var ids = DfsFunctions.getMountPoints(GetMountPointsArgs.builder()
///             .fileSystemId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("dfsMountPointId1", ids.points()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:dfs:getMountPoints
///       arguments:
///         fileSystemId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   dfsMountPointId1: ${ids.points[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dfs_get_mount_points_get_mount_points_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMountPointsResult> getMountPoints(
  GetMountPointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dfs/getMountPoints:getMountPoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMountPointsResult.fromMap(result);
}

/// This data source provides the DFS Zones And Configurations of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
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
/// const _default = alicloud.dfs.getZones({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.dfs.get_zones()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Dfs.GetZones.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dfs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dfs.GetZones(ctx, &dfs.GetZonesArgs{}, nil)
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
/// import com.pulumi.alicloud.dfs.DfsFunctions;
/// import com.pulumi.alicloud.dfs.inputs.GetZonesArgs;
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
///         final var default = DfsFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:dfs:getZones
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dfs_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:dfs/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
