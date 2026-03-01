import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auto_snap_shot_policies_args.dart';
import 'get_auto_snap_shot_policies_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_snapshots_args.dart';
import 'get_snapshots_result.dart';

/// This data source provides Dbfs Auto Snap Shot Policy available to the user.[What is Auto Snap Shot Policy](https://help.aliyun.com/document_detail/469597.html)
///
/// > **NOTE:** Available in 1.202.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.databasefilesystem.getAutoSnapShotPolicies({
///     ids: [defaultAlicloudDbfsAutoSnapShotPolicy.id],
/// });
/// export const alicloudDbfsAutoSnapShotPolicyExampleId = _default.then(_default => _default.autoSnapShotPolicies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.databasefilesystem.get_auto_snap_shot_policies(ids=[default_alicloud_dbfs_auto_snap_shot_policy["id"]])
/// pulumi.export("alicloudDbfsAutoSnapShotPolicyExampleId", default.auto_snap_shot_policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.DatabaseFilesystem.GetAutoSnapShotPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudDbfsAutoSnapShotPolicy.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudDbfsAutoSnapShotPolicyExampleId"] = @default.Apply(@default => @default.Apply(getAutoSnapShotPoliciesResult => getAutoSnapShotPoliciesResult.AutoSnapShotPolicies[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := databasefilesystem.GetAutoSnapShotPolicies(ctx, &databasefilesystem.GetAutoSnapShotPoliciesArgs{
/// Ids: interface{}{
/// defaultAlicloudDbfsAutoSnapShotPolicy.Id,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudDbfsAutoSnapShotPolicyExampleId", _default.AutoSnapShotPolicies[0].Id)
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
/// import com.pulumi.alicloud.databasefilesystem.DatabasefilesystemFunctions;
/// import com.pulumi.alicloud.databasefilesystem.inputs.GetAutoSnapShotPoliciesArgs;
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
///         final var default = DatabasefilesystemFunctions.getAutoSnapShotPolicies(GetAutoSnapShotPoliciesArgs.builder()
///             .ids(defaultAlicloudDbfsAutoSnapShotPolicy.id())
///             .build());
///
///         ctx.export("alicloudDbfsAutoSnapShotPolicyExampleId", default_.autoSnapShotPolicies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getAutoSnapShotPolicies
///       arguments:
///         ids:
///           - ${defaultAlicloudDbfsAutoSnapShotPolicy.id}
/// outputs:
///   alicloudDbfsAutoSnapShotPolicyExampleId: ${default.autoSnapShotPolicies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefilesystem_get_auto_snap_shot_policies_get_auto_snap_shot_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoSnapShotPoliciesResult> getAutoSnapShotPolicies(
  GetAutoSnapShotPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:databasefilesystem/getAutoSnapShotPolicies:getAutoSnapShotPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoSnapShotPoliciesResult.fromMap(result);
}

/// This data source provides the DBFS Instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.136.0+.
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
/// const ids = alicloud.databasefilesystem.getInstances({
///     ids: ["example_id"],
/// });
/// export const dbfsInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// const nameRegex = alicloud.databasefilesystem.getInstances({
///     nameRegex: "^my-Instance",
/// });
/// export const dbfsInstanceId2 = nameRegex.then(nameRegex => nameRegex.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.databasefilesystem.get_instances(ids=["example_id"])
/// pulumi.export("dbfsInstanceId1", ids.instances[0].id)
/// name_regex = alicloud.databasefilesystem.get_instances(name_regex="^my-Instance")
/// pulumi.export("dbfsInstanceId2", name_regex.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.DatabaseFilesystem.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.DatabaseFilesystem.GetInstances.Invoke(new()
///     {
///         NameRegex = "^my-Instance",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dbfsInstanceId1"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///         ["dbfsInstanceId2"] = nameRegex.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := databasefilesystem.GetInstances(ctx, &databasefilesystem.GetInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbfsInstanceId1", ids.Instances[0].Id)
/// 		nameRegex, err := databasefilesystem.GetInstances(ctx, &databasefilesystem.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbfsInstanceId2", nameRegex.Instances[0].Id)
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
/// import com.pulumi.alicloud.databasefilesystem.DatabasefilesystemFunctions;
/// import com.pulumi.alicloud.databasefilesystem.inputs.GetInstancesArgs;
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
///         final var ids = DatabasefilesystemFunctions.getInstances(GetInstancesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("dbfsInstanceId1", ids.instances()[0].id());
///         final var nameRegex = DatabasefilesystemFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("^my-Instance")
///             .build());
///
///         ctx.export("dbfsInstanceId2", nameRegex.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getInstances
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getInstances
///       arguments:
///         nameRegex: ^my-Instance
/// outputs:
///   dbfsInstanceId1: ${ids.instances[0].id}
///   dbfsInstanceId2: ${nameRegex.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefilesystem_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:databasefilesystem/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Dbfs Snapshots of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.156.0+.
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
/// const ids = alicloud.databasefilesystem.getSnapshots({
///     ids: ["example_id"],
/// });
/// export const dbfsSnapshotId1 = ids.then(ids => ids.snapshots?.[0]?.id);
/// const nameRegex = alicloud.databasefilesystem.getSnapshots({
///     nameRegex: "^my-Snapshot",
/// });
/// export const dbfsSnapshotId2 = nameRegex.then(nameRegex => nameRegex.snapshots?.[0]?.id);
/// const status = alicloud.databasefilesystem.getSnapshots({
///     status: "accomplished",
/// });
/// export const dbfsSnapshotId3 = status.then(status => status.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.databasefilesystem.get_snapshots(ids=["example_id"])
/// pulumi.export("dbfsSnapshotId1", ids.snapshots[0].id)
/// name_regex = alicloud.databasefilesystem.get_snapshots(name_regex="^my-Snapshot")
/// pulumi.export("dbfsSnapshotId2", name_regex.snapshots[0].id)
/// status = alicloud.databasefilesystem.get_snapshots(status="accomplished")
/// pulumi.export("dbfsSnapshotId3", status.snapshots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.DatabaseFilesystem.GetSnapshots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.DatabaseFilesystem.GetSnapshots.Invoke(new()
///     {
///         NameRegex = "^my-Snapshot",
///     });
///
///     var status = AliCloud.DatabaseFilesystem.GetSnapshots.Invoke(new()
///     {
///         Status = "accomplished",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["dbfsSnapshotId1"] = ids.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///         ["dbfsSnapshotId2"] = nameRegex.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///         ["dbfsSnapshotId3"] = status.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := databasefilesystem.GetSnapshots(ctx, &databasefilesystem.GetSnapshotsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbfsSnapshotId1", ids.Snapshots[0].Id)
/// 		nameRegex, err := databasefilesystem.GetSnapshots(ctx, &databasefilesystem.GetSnapshotsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Snapshot"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbfsSnapshotId2", nameRegex.Snapshots[0].Id)
/// 		status, err := databasefilesystem.GetSnapshots(ctx, &databasefilesystem.GetSnapshotsArgs{
/// 			Status: pulumi.StringRef("accomplished"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("dbfsSnapshotId3", status.Snapshots[0].Id)
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
/// import com.pulumi.alicloud.databasefilesystem.DatabasefilesystemFunctions;
/// import com.pulumi.alicloud.databasefilesystem.inputs.GetSnapshotsArgs;
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
///         final var ids = DatabasefilesystemFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("dbfsSnapshotId1", ids.snapshots()[0].id());
///         final var nameRegex = DatabasefilesystemFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .nameRegex("^my-Snapshot")
///             .build());
///
///         ctx.export("dbfsSnapshotId2", nameRegex.snapshots()[0].id());
///         final var status = DatabasefilesystemFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .status("accomplished")
///             .build());
///
///         ctx.export("dbfsSnapshotId3", status.snapshots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getSnapshots
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getSnapshots
///       arguments:
///         nameRegex: ^my-Snapshot
///   status:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getSnapshots
///       arguments:
///         status: accomplished
/// outputs:
///   dbfsSnapshotId1: ${ids.snapshots[0].id}
///   dbfsSnapshotId2: ${nameRegex.snapshots[0].id}
///   dbfsSnapshotId3: ${status.snapshots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_databasefilesystem_get_snapshots_get_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotsResult> getSnapshots(
  GetSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:databasefilesystem/getSnapshots:getSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotsResult.fromMap(result);
}
