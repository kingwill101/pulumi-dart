import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_groups_args.dart';
import 'get_access_groups_result.dart';
import 'get_access_rules_args.dart';
import 'get_access_rules_result.dart';
import 'get_auto_snapshot_policies_args.dart';
import 'get_auto_snapshot_policies_result.dart';
import 'get_data_flows_args.dart';
import 'get_data_flows_result.dart';
import 'get_file_systems_args.dart';
import 'get_file_systems_result.dart';
import 'get_filesets_args.dart';
import 'get_filesets_result.dart';
import 'get_lifecycle_policies_args.dart';
import 'get_lifecycle_policies_result.dart';
import 'get_mount_targets_args.dart';
import 'get_mount_targets_result.dart';
import 'get_protocols_args.dart';
import 'get_protocols_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_snapshots_args.dart';
import 'get_snapshots_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides user-available access groups. Use when you can create mount points
///
/// &gt; NOTE: Available in 1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.nas.getAccessGroups({
///     nameRegex: "^foo",
///     accessGroupType: "Classic",
///     description: "tf-testAccAccessGroupsdatasource",
/// });
/// export const alicloudNasAccessGroupsId = example.then(example => example.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nas.get_access_groups(name_regex="^foo",
///     access_group_type="Classic",
///     description="tf-testAccAccessGroupsdatasource")
/// pulumi.export("alicloudNasAccessGroupsId", example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Nas.GetAccessGroups.Invoke(new()
///     {
///         NameRegex = "^foo",
///         AccessGroupType = "Classic",
///         Description = "tf-testAccAccessGroupsdatasource",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudNasAccessGroupsId"] = example.Apply(getAccessGroupsResult => getAccessGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nas.GetAccessGroups(ctx, &nas.GetAccessGroupsArgs{
/// 			NameRegex:       pulumi.StringRef("^foo"),
/// 			AccessGroupType: pulumi.StringRef("Classic"),
/// 			Description:     pulumi.StringRef("tf-testAccAccessGroupsdatasource"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudNasAccessGroupsId", example.Groups[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetAccessGroupsArgs;
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
///         final var example = NasFunctions.getAccessGroups(GetAccessGroupsArgs.builder()
///             .nameRegex("^foo")
///             .accessGroupType("Classic")
///             .description("tf-testAccAccessGroupsdatasource")
///             .build());
///
///         ctx.export("alicloudNasAccessGroupsId", example.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nas:getAccessGroups
///       arguments:
///         nameRegex: ^foo
///         accessGroupType: Classic
///         description: tf-testAccAccessGroupsdatasource
/// outputs:
///   alicloudNasAccessGroupsId: ${example.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_access_groups_get_access_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessGroupsResult> getAccessGroups(
  GetAccessGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getAccessGroups:getAccessGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessGroupsResult.fromMap(result);
}

/// This data source provides AccessRule available to the user.
///
/// &gt; **NOTE**: Available in 1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.nas.getAccessRules({
///     accessGroupName: "tf-testAccAccessGroupsdatasource",
///     sourceCidrIp: "168.1.1.0/16",
///     rwAccess: "RDWR",
///     userAccess: "no_squash",
/// });
/// export const alicloudNasAccessRulesId = foo.then(foo => foo.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.nas.get_access_rules(access_group_name="tf-testAccAccessGroupsdatasource",
///     source_cidr_ip="168.1.1.0/16",
///     rw_access="RDWR",
///     user_access="no_squash")
/// pulumi.export("alicloudNasAccessRulesId", foo.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.Nas.GetAccessRules.Invoke(new()
///     {
///         AccessGroupName = "tf-testAccAccessGroupsdatasource",
///         SourceCidrIp = "168.1.1.0/16",
///         RwAccess = "RDWR",
///         UserAccess = "no_squash",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudNasAccessRulesId"] = foo.Apply(getAccessRulesResult => getAccessRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := nas.GetAccessRules(ctx, &nas.GetAccessRulesArgs{
/// 			AccessGroupName: "tf-testAccAccessGroupsdatasource",
/// 			SourceCidrIp:    pulumi.StringRef("168.1.1.0/16"),
/// 			RwAccess:        pulumi.StringRef("RDWR"),
/// 			UserAccess:      pulumi.StringRef("no_squash"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudNasAccessRulesId", foo.Rules[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetAccessRulesArgs;
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
///         final var foo = NasFunctions.getAccessRules(GetAccessRulesArgs.builder()
///             .accessGroupName("tf-testAccAccessGroupsdatasource")
///             .sourceCidrIp("168.1.1.0/16")
///             .rwAccess("RDWR")
///             .userAccess("no_squash")
///             .build());
///
///         ctx.export("alicloudNasAccessRulesId", foo.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:nas:getAccessRules
///       arguments:
///         accessGroupName: tf-testAccAccessGroupsdatasource
///         sourceCidrIp: 168.1.1.0/16
///         rwAccess: RDWR
///         userAccess: no_squash
/// outputs:
///   alicloudNasAccessRulesId: ${foo.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_access_rules_get_access_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessRulesResult> getAccessRules(
  GetAccessRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getAccessRules:getAccessRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessRulesResult.fromMap(result);
}

/// This data source provides Auto Snapshot Policies available to the user.
///
/// &gt; **NOTE**: Available in v1.153.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.nas.getAutoSnapshotPolicies({
///     ids: ["example_value"],
/// });
/// export const nasAutoSnapshotPoliciesId1 = ids.then(ids => ids.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nas.get_auto_snapshot_policies(ids=["example_value"])
/// pulumi.export("nasAutoSnapshotPoliciesId1", ids.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nas.GetAutoSnapshotPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nasAutoSnapshotPoliciesId1"] = ids.Apply(getAutoSnapshotPoliciesResult => getAutoSnapshotPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nas.GetAutoSnapshotPolicies(ctx, &nas.GetAutoSnapshotPoliciesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasAutoSnapshotPoliciesId1", ids.Policies[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetAutoSnapshotPoliciesArgs;
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
///         final var ids = NasFunctions.getAutoSnapshotPolicies(GetAutoSnapshotPoliciesArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("nasAutoSnapshotPoliciesId1", ids.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nas:getAutoSnapshotPolicies
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   nasAutoSnapshotPoliciesId1: ${ids.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_auto_snapshot_policies_get_auto_snapshot_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoSnapshotPoliciesResult> getAutoSnapshotPolicies(
  GetAutoSnapshotPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getAutoSnapshotPolicies:getAutoSnapshotPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoSnapshotPoliciesResult.fromMap(result);
}

/// This data source provides the Nas Data Flows of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.153.0+.
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
/// const ids = alicloud.nas.getDataFlows({
///     fileSystemId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const nasDataFlowId1 = ids.then(ids => ids.flows?.[0]?.id);
/// const status = alicloud.nas.getDataFlows({
///     fileSystemId: "example_value",
///     status: "Running",
/// });
/// export const nasDataFlowId2 = status.then(status => status.flows?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nas.get_data_flows(file_system_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("nasDataFlowId1", ids.flows[0].id)
/// status = alicloud.nas.get_data_flows(file_system_id="example_value",
///     status="Running")
/// pulumi.export("nasDataFlowId2", status.flows[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nas.GetDataFlows.Invoke(new()
///     {
///         FileSystemId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var status = AliCloud.Nas.GetDataFlows.Invoke(new()
///     {
///         FileSystemId = "example_value",
///         Status = "Running",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nasDataFlowId1"] = ids.Apply(getDataFlowsResult => getDataFlowsResult.Flows[0]?.Id),
///         ["nasDataFlowId2"] = status.Apply(getDataFlowsResult => getDataFlowsResult.Flows[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nas.GetDataFlows(ctx, &nas.GetDataFlowsArgs{
/// 			FileSystemId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasDataFlowId1", ids.Flows[0].Id)
/// 		status, err := nas.GetDataFlows(ctx, &nas.GetDataFlowsArgs{
/// 			FileSystemId: "example_value",
/// 			Status:       pulumi.StringRef("Running"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasDataFlowId2", status.Flows[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetDataFlowsArgs;
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
///         final var ids = NasFunctions.getDataFlows(GetDataFlowsArgs.builder()
///             .fileSystemId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("nasDataFlowId1", ids.flows()[0].id());
///         final var status = NasFunctions.getDataFlows(GetDataFlowsArgs.builder()
///             .fileSystemId("example_value")
///             .status("Running")
///             .build());
///
///         ctx.export("nasDataFlowId2", status.flows()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nas:getDataFlows
///       arguments:
///         fileSystemId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   status:
///     fn::invoke:
///       function: alicloud:nas:getDataFlows
///       arguments:
///         fileSystemId: example_value
///         status: Running
/// outputs:
///   nasDataFlowId1: ${ids.flows[0].id}
///   nasDataFlowId2: ${status.flows[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_data_flows_get_data_flows_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataFlowsResult> getDataFlows(
  GetDataFlowsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getDataFlows:getDataFlows',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataFlowsResult.fromMap(result);
}

/// This data source provides FileSystems available to the user.
///
/// &gt; **NOTE**: Available in 1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const fs = alicloud.nas.getFileSystems({
///     protocolType: "NFS",
///     descriptionRegex: foo.description,
/// });
/// export const alicloudNasFileSystemsId = fs.then(fs => fs.systems?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// fs = alicloud.nas.get_file_systems(protocol_type="NFS",
///     description_regex=foo["description"])
/// pulumi.export("alicloudNasFileSystemsId", fs.systems[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fs = AliCloud.Nas.GetFileSystems.Invoke(new()
///     {
///         ProtocolType = "NFS",
///         DescriptionRegex = foo.Description,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudNasFileSystemsId"] = fs.Apply(getFileSystemsResult => getFileSystemsResult.Systems[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fs, err := nas.GetFileSystems(ctx, &nas.GetFileSystemsArgs{
/// 			ProtocolType:     pulumi.StringRef("NFS"),
/// 			DescriptionRegex: pulumi.StringRef(foo.Description),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudNasFileSystemsId", fs.Systems[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetFileSystemsArgs;
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
///         final var fs = NasFunctions.getFileSystems(GetFileSystemsArgs.builder()
///             .protocolType("NFS")
///             .descriptionRegex(foo.description())
///             .build());
///
///         ctx.export("alicloudNasFileSystemsId", fs.systems()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   fs:
///     fn::invoke:
///       function: alicloud:nas:getFileSystems
///       arguments:
///         protocolType: NFS
///         descriptionRegex: ${foo.description}
/// outputs:
///   alicloudNasFileSystemsId: ${fs.systems[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_file_systems_get_file_systems_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileSystemsResult> getFileSystems(
  GetFileSystemsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getFileSystems:getFileSystems',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileSystemsResult.fromMap(result);
}

/// This data source provides the Nas Filesets of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.153.0+.
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
/// const ids = alicloud.nas.getFilesets({
///     fileSystemId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const nasFilesetId1 = ids.then(ids => ids.filesets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nas.get_filesets(file_system_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("nasFilesetId1", ids.filesets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nas.GetFilesets.Invoke(new()
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
///         ["nasFilesetId1"] = ids.Apply(getFilesetsResult => getFilesetsResult.Filesets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nas.GetFilesets(ctx, &nas.GetFilesetsArgs{
/// 			FileSystemId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasFilesetId1", ids.Filesets[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetFilesetsArgs;
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
///         final var ids = NasFunctions.getFilesets(GetFilesetsArgs.builder()
///             .fileSystemId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("nasFilesetId1", ids.filesets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nas:getFilesets
///       arguments:
///         fileSystemId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   nasFilesetId1: ${ids.filesets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_filesets_get_filesets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFilesetsResult> getFilesets(
  GetFilesetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getFilesets:getFilesets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFilesetsResult.fromMap(result);
}

/// This data source provides the Nas Lifecycle Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.153.0+.
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
/// const ids = alicloud.nas.getLifecyclePolicies({
///     fileSystemId: "example_value",
///     ids: [
///         "my-LifecyclePolicy-1",
///         "my-LifecyclePolicy-2",
///     ],
/// });
/// export const nasLifecyclePolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.nas.getLifecyclePolicies({
///     fileSystemId: "example_value",
///     nameRegex: "^my-LifecyclePolicy",
/// });
/// export const nasLifecyclePolicyId2 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nas.get_lifecycle_policies(file_system_id="example_value",
///     ids=[
///         "my-LifecyclePolicy-1",
///         "my-LifecyclePolicy-2",
///     ])
/// pulumi.export("nasLifecyclePolicyId1", ids.policies[0].id)
/// name_regex = alicloud.nas.get_lifecycle_policies(file_system_id="example_value",
///     name_regex="^my-LifecyclePolicy")
/// pulumi.export("nasLifecyclePolicyId2", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nas.GetLifecyclePolicies.Invoke(new()
///     {
///         FileSystemId = "example_value",
///         Ids = new[]
///         {
///             "my-LifecyclePolicy-1",
///             "my-LifecyclePolicy-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Nas.GetLifecyclePolicies.Invoke(new()
///     {
///         FileSystemId = "example_value",
///         NameRegex = "^my-LifecyclePolicy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nasLifecyclePolicyId1"] = ids.Apply(getLifecyclePoliciesResult => getLifecyclePoliciesResult.Policies[0]?.Id),
///         ["nasLifecyclePolicyId2"] = nameRegex.Apply(getLifecyclePoliciesResult => getLifecyclePoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nas.GetLifecyclePolicies(ctx, &nas.GetLifecyclePoliciesArgs{
/// 			FileSystemId: "example_value",
/// 			Ids: []string{
/// 				"my-LifecyclePolicy-1",
/// 				"my-LifecyclePolicy-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasLifecyclePolicyId1", ids.Policies[0].Id)
/// 		nameRegex, err := nas.GetLifecyclePolicies(ctx, &nas.GetLifecyclePoliciesArgs{
/// 			FileSystemId: "example_value",
/// 			NameRegex:    pulumi.StringRef("^my-LifecyclePolicy"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasLifecyclePolicyId2", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetLifecyclePoliciesArgs;
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
///         final var ids = NasFunctions.getLifecyclePolicies(GetLifecyclePoliciesArgs.builder()
///             .fileSystemId("example_value")
///             .ids(
///                 "my-LifecyclePolicy-1",
///                 "my-LifecyclePolicy-2")
///             .build());
///
///         ctx.export("nasLifecyclePolicyId1", ids.policies()[0].id());
///         final var nameRegex = NasFunctions.getLifecyclePolicies(GetLifecyclePoliciesArgs.builder()
///             .fileSystemId("example_value")
///             .nameRegex("^my-LifecyclePolicy")
///             .build());
///
///         ctx.export("nasLifecyclePolicyId2", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nas:getLifecyclePolicies
///       arguments:
///         fileSystemId: example_value
///         ids:
///           - my-LifecyclePolicy-1
///           - my-LifecyclePolicy-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:nas:getLifecyclePolicies
///       arguments:
///         fileSystemId: example_value
///         nameRegex: ^my-LifecyclePolicy
/// outputs:
///   nasLifecyclePolicyId1: ${ids.policies[0].id}
///   nasLifecyclePolicyId2: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_lifecycle_policies_get_lifecycle_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLifecyclePoliciesResult> getLifecyclePolicies(
  GetLifecyclePoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getLifecyclePolicies:getLifecyclePolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLifecyclePoliciesResult.fromMap(result);
}

/// This data source provides MountTargets available to the user.
///
/// &gt; **NOTE**: Available in 1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.nas.getMountTargets({
///     fileSystemId: "1a2sc4d",
///     accessGroupName: "tf-testAccNasConfig",
/// });
/// export const theFirstMountTargetDomain = example.then(example => example.targets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.nas.get_mount_targets(file_system_id="1a2sc4d",
///     access_group_name="tf-testAccNasConfig")
/// pulumi.export("theFirstMountTargetDomain", example.targets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Nas.GetMountTargets.Invoke(new()
///     {
///         FileSystemId = "1a2sc4d",
///         AccessGroupName = "tf-testAccNasConfig",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["theFirstMountTargetDomain"] = example.Apply(getMountTargetsResult => getMountTargetsResult.Targets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := nas.GetMountTargets(ctx, &nas.GetMountTargetsArgs{
/// 			FileSystemId:    "1a2sc4d",
/// 			AccessGroupName: pulumi.StringRef("tf-testAccNasConfig"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("theFirstMountTargetDomain", example.Targets[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetMountTargetsArgs;
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
///         final var example = NasFunctions.getMountTargets(GetMountTargetsArgs.builder()
///             .fileSystemId("1a2sc4d")
///             .accessGroupName("tf-testAccNasConfig")
///             .build());
///
///         ctx.export("theFirstMountTargetDomain", example.targets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:nas:getMountTargets
///       arguments:
///         fileSystemId: 1a2sc4d
///         accessGroupName: tf-testAccNasConfig
/// outputs:
///   theFirstMountTargetDomain: ${example.targets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_mount_targets_get_mount_targets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMountTargetsResult> getMountTargets(
  GetMountTargetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getMountTargets:getMountTargets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMountTargetsResult.fromMap(result);
}

/// Provide  a data source to retrieve the type of protocol used to create NAS file system.
///
/// &gt; **NOTE:** Available in 1.42.0
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.nas.getProtocols({
///     type: "Performance",
///     zoneId: "cn-beijing-e",
///     outputFile: "protocols.txt",
/// });
/// export const nasProtocolsProtocol = _default.then(_default => _default.protocols?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.nas.get_protocols(type="Performance",
///     zone_id="cn-beijing-e",
///     output_file="protocols.txt")
/// pulumi.export("nasProtocolsProtocol", default.protocols[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Nas.GetProtocols.Invoke(new()
///     {
///         Type = "Performance",
///         ZoneId = "cn-beijing-e",
///         OutputFile = "protocols.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nasProtocolsProtocol"] = @default.Apply(@default => @default.Apply(getProtocolsResult => getProtocolsResult.Protocols[0])),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := nas.GetProtocols(ctx, &nas.GetProtocolsArgs{
/// 			Type:       "Performance",
/// 			ZoneId:     pulumi.StringRef("cn-beijing-e"),
/// 			OutputFile: pulumi.StringRef("protocols.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasProtocolsProtocol", _default.Protocols[0])
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetProtocolsArgs;
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
///         final var default = NasFunctions.getProtocols(GetProtocolsArgs.builder()
///             .type("Performance")
///             .zoneId("cn-beijing-e")
///             .outputFile("protocols.txt")
///             .build());
///
///         ctx.export("nasProtocolsProtocol", default_.protocols()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:nas:getProtocols
///       arguments:
///         type: Performance
///         zoneId: cn-beijing-e
///         outputFile: protocols.txt
/// outputs:
///   nasProtocolsProtocol: ${default.protocols[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_protocols_get_protocols_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProtocolsResult> getProtocols(
  GetProtocolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getProtocols:getProtocols',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtocolsResult.fromMap(result);
}

/// Using this data source can enable NAS service automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about NAS and how to use it, see [What is NAS](https://www.alibabacloud.com/help/product/27516.htm).
///
/// &gt; **NOTE:** Available in v1.97.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.nas.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.nas.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Nas.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := nas.GetService(ctx, &nas.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetServiceArgs;
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
///         final var open = NasFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:nas:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the Nas Snapshots of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.152.0+.
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
/// const ids = alicloud.nas.getSnapshots({});
/// export const nasSnapshotId1 = ids.then(ids => ids.snapshots?.[0]?.id);
/// const nameRegex = alicloud.nas.getSnapshots({
///     nameRegex: "^my-Snapshot",
/// });
/// export const nasSnapshotId2 = nameRegex.then(nameRegex => nameRegex.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.nas.get_snapshots()
/// pulumi.export("nasSnapshotId1", ids.snapshots[0].id)
/// name_regex = alicloud.nas.get_snapshots(name_regex="^my-Snapshot")
/// pulumi.export("nasSnapshotId2", name_regex.snapshots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Nas.GetSnapshots.Invoke();
///
///     var nameRegex = AliCloud.Nas.GetSnapshots.Invoke(new()
///     {
///         NameRegex = "^my-Snapshot",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nasSnapshotId1"] = ids.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///         ["nasSnapshotId2"] = nameRegex.Apply(getSnapshotsResult => getSnapshotsResult.Snapshots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := nas.GetSnapshots(ctx, &nas.GetSnapshotsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasSnapshotId1", ids.Snapshots[0].Id)
/// 		nameRegex, err := nas.GetSnapshots(ctx, &nas.GetSnapshotsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Snapshot"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nasSnapshotId2", nameRegex.Snapshots[0].Id)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetSnapshotsArgs;
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
///         final var ids = NasFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .build());
///
///         ctx.export("nasSnapshotId1", ids.snapshots()[0].id());
///         final var nameRegex = NasFunctions.getSnapshots(GetSnapshotsArgs.builder()
///             .nameRegex("^my-Snapshot")
///             .build());
///
///         ctx.export("nasSnapshotId2", nameRegex.snapshots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:nas:getSnapshots
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:nas:getSnapshots
///       arguments:
///         nameRegex: ^my-Snapshot
/// outputs:
///   nasSnapshotId1: ${ids.snapshots[0].id}
///   nasSnapshotId2: ${nameRegex.snapshots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_snapshots_get_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotsResult> getSnapshots(
  GetSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getSnapshots:getSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotsResult.fromMap(result);
}

/// Provide  a data source to retrieve the type of zone used to create NAS file system.
///
/// &gt; **NOTE:** Available in v1.140.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.nas.getZones({});
/// export const alicloudNasZonesId = _default.then(_default => _default.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.nas.get_zones()
/// pulumi.export("alicloudNasZonesId", default.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Nas.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudNasZonesId"] = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := nas.GetZones(ctx, &nas.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudNasZonesId", _default.Zones[0].ZoneId)
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
/// import com.pulumi.alicloud.nas.NasFunctions;
/// import com.pulumi.alicloud.nas.inputs.GetZonesArgs;
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
///         final var default = NasFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("alicloudNasZonesId", default_.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:nas:getZones
///       arguments: {}
/// outputs:
///   alicloudNasZonesId: ${default.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_nas_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:nas/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
