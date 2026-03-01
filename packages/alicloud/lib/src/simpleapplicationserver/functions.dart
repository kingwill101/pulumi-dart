import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_server_custom_images_args.dart';
import 'get_server_custom_images_result.dart';
import 'get_server_disks_args.dart';
import 'get_server_disks_result.dart';
import 'get_server_firewall_rules_args.dart';
import 'get_server_firewall_rules_result.dart';
import 'get_server_plans_args.dart';
import 'get_server_plans_result.dart';
import 'get_server_snapshots_args.dart';
import 'get_server_snapshots_result.dart';

/// This data source provides the Simple Application Server Images of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```yaml
/// variables:
///   instanceImageType:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getImages
///       arguments:
///         instanceImageType: system
/// outputs:
///   simpleApplicationServerImageId1: ${ids.images[0].id}
/// ```
///
///
///
/// The following arguments are supported:
///
/// * `ids` - (Optional, ForceNew, Computed)  A list of Image IDs.
/// * `image_type` - (Optional, ForceNew) The image type. Valid values: `app`, `custom`, `system`.
/// * `name_regex` - (Optional, ForceNew) A regex string to filter results by Image name.
/// * `platform` - (Available in v1.161.0) The platform of Image supported. Valid values: ["Linux", "Windows"].
/// * `output_file` - (Optional) File name where to save data source results (after running `pulumi preview`).
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// This data source provides the Simple Application Server Instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
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
/// const ids = alicloud.simpleapplicationserver.getInstances({
///     ids: ["example_id"],
/// });
/// export const simpleApplicationServerInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// const nameRegex = alicloud.simpleapplicationserver.getInstances({
///     nameRegex: "^my-Instance",
/// });
/// export const simpleApplicationServerInstanceId2 = nameRegex.then(nameRegex => nameRegex.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.simpleapplicationserver.get_instances(ids=["example_id"])
/// pulumi.export("simpleApplicationServerInstanceId1", ids.instances[0].id)
/// name_regex = alicloud.simpleapplicationserver.get_instances(name_regex="^my-Instance")
/// pulumi.export("simpleApplicationServerInstanceId2", name_regex.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.SimpleApplicationServer.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.SimpleApplicationServer.GetInstances.Invoke(new()
///     {
///         NameRegex = "^my-Instance",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["simpleApplicationServerInstanceId1"] = ids.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///         ["simpleApplicationServerInstanceId2"] = nameRegex.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := simpleapplicationserver.GetInstances(ctx, &simpleapplicationserver.GetInstancesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerInstanceId1", ids.Instances[0].Id)
/// 		nameRegex, err := simpleapplicationserver.GetInstances(ctx, &simpleapplicationserver.GetInstancesArgs{
/// 			NameRegex: pulumi.StringRef("^my-Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerInstanceId2", nameRegex.Instances[0].Id)
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetInstancesArgs;
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
///         final var ids = SimpleapplicationserverFunctions.getInstances(GetInstancesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("simpleApplicationServerInstanceId1", ids.instances()[0].id());
///         final var nameRegex = SimpleapplicationserverFunctions.getInstances(GetInstancesArgs.builder()
///             .nameRegex("^my-Instance")
///             .build());
///
///         ctx.export("simpleApplicationServerInstanceId2", nameRegex.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getInstances
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getInstances
///       arguments:
///         nameRegex: ^my-Instance
/// outputs:
///   simpleApplicationServerInstanceId1: ${ids.instances[0].id}
///   simpleApplicationServerInstanceId2: ${nameRegex.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Simple Application Server Custom Images of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.simpleapplicationserver.getServerCustomImages({
///     ids: ["example_id"],
/// });
/// export const simpleApplicationServerCustomImageId1 = ids.then(ids => ids.images?.[0]?.id);
/// const nameRegex = alicloud.simpleapplicationserver.getServerCustomImages({
///     nameRegex: "^my-CustomImage",
/// });
/// export const simpleApplicationServerCustomImageId2 = nameRegex.then(nameRegex => nameRegex.images?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.simpleapplicationserver.get_server_custom_images(ids=["example_id"])
/// pulumi.export("simpleApplicationServerCustomImageId1", ids.images[0].id)
/// name_regex = alicloud.simpleapplicationserver.get_server_custom_images(name_regex="^my-CustomImage")
/// pulumi.export("simpleApplicationServerCustomImageId2", name_regex.images[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.SimpleApplicationServer.GetServerCustomImages.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.SimpleApplicationServer.GetServerCustomImages.Invoke(new()
///     {
///         NameRegex = "^my-CustomImage",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["simpleApplicationServerCustomImageId1"] = ids.Apply(getServerCustomImagesResult => getServerCustomImagesResult.Images[0]?.Id),
///         ["simpleApplicationServerCustomImageId2"] = nameRegex.Apply(getServerCustomImagesResult => getServerCustomImagesResult.Images[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := simpleapplicationserver.GetServerCustomImages(ctx, &simpleapplicationserver.GetServerCustomImagesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerCustomImageId1", ids.Images[0].Id)
/// 		nameRegex, err := simpleapplicationserver.GetServerCustomImages(ctx, &simpleapplicationserver.GetServerCustomImagesArgs{
/// 			NameRegex: pulumi.StringRef("^my-CustomImage"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerCustomImageId2", nameRegex.Images[0].Id)
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerCustomImagesArgs;
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
///         final var ids = SimpleapplicationserverFunctions.getServerCustomImages(GetServerCustomImagesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("simpleApplicationServerCustomImageId1", ids.images()[0].id());
///         final var nameRegex = SimpleapplicationserverFunctions.getServerCustomImages(GetServerCustomImagesArgs.builder()
///             .nameRegex("^my-CustomImage")
///             .build());
///
///         ctx.export("simpleApplicationServerCustomImageId2", nameRegex.images()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerCustomImages
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerCustomImages
///       arguments:
///         nameRegex: ^my-CustomImage
/// outputs:
///   simpleApplicationServerCustomImageId1: ${ids.images[0].id}
///   simpleApplicationServerCustomImageId2: ${nameRegex.images[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_server_custom_images_get_server_custom_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerCustomImagesResult> getServerCustomImages(
  GetServerCustomImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getServerCustomImages:getServerCustomImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCustomImagesResult.fromMap(result);
}

/// This data source provides the Simple Application Server Disks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.simpleapplicationserver.getServerDisks({
///     ids: ["example_id"],
/// });
/// export const simpleApplicationServerDiskId1 = ids.then(ids => ids.disks?.[0]?.id);
/// const nameRegex = alicloud.simpleapplicationserver.getServerDisks({
///     nameRegex: "^my-Disk",
/// });
/// export const simpleApplicationServerDiskId2 = nameRegex.then(nameRegex => nameRegex.disks?.[0]?.id);
/// const status = alicloud.simpleapplicationserver.getServerDisks({
///     status: "In_use",
/// });
/// export const simpleApplicationServerDiskId3 = status.then(status => status.disks?.[0]?.id);
/// const instanceId = alicloud.simpleapplicationserver.getServerDisks({
///     instanceId: "example_value",
/// });
/// export const simpleApplicationServerDiskId4 = instanceId.then(instanceId => instanceId.disks?.[0]?.id);
/// const diskType = alicloud.simpleapplicationserver.getServerDisks({
///     diskType: "System",
/// });
/// export const simpleApplicationServerDiskId5 = diskType.then(diskType => diskType.disks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.simpleapplicationserver.get_server_disks(ids=["example_id"])
/// pulumi.export("simpleApplicationServerDiskId1", ids.disks[0].id)
/// name_regex = alicloud.simpleapplicationserver.get_server_disks(name_regex="^my-Disk")
/// pulumi.export("simpleApplicationServerDiskId2", name_regex.disks[0].id)
/// status = alicloud.simpleapplicationserver.get_server_disks(status="In_use")
/// pulumi.export("simpleApplicationServerDiskId3", status.disks[0].id)
/// instance_id = alicloud.simpleapplicationserver.get_server_disks(instance_id="example_value")
/// pulumi.export("simpleApplicationServerDiskId4", instance_id.disks[0].id)
/// disk_type = alicloud.simpleapplicationserver.get_server_disks(disk_type="System")
/// pulumi.export("simpleApplicationServerDiskId5", disk_type.disks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.SimpleApplicationServer.GetServerDisks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.SimpleApplicationServer.GetServerDisks.Invoke(new()
///     {
///         NameRegex = "^my-Disk",
///     });
///
///     var status = AliCloud.SimpleApplicationServer.GetServerDisks.Invoke(new()
///     {
///         Status = "In_use",
///     });
///
///     var instanceId = AliCloud.SimpleApplicationServer.GetServerDisks.Invoke(new()
///     {
///         InstanceId = "example_value",
///     });
///
///     var diskType = AliCloud.SimpleApplicationServer.GetServerDisks.Invoke(new()
///     {
///         DiskType = "System",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["simpleApplicationServerDiskId1"] = ids.Apply(getServerDisksResult => getServerDisksResult.Disks[0]?.Id),
///         ["simpleApplicationServerDiskId2"] = nameRegex.Apply(getServerDisksResult => getServerDisksResult.Disks[0]?.Id),
///         ["simpleApplicationServerDiskId3"] = status.Apply(getServerDisksResult => getServerDisksResult.Disks[0]?.Id),
///         ["simpleApplicationServerDiskId4"] = instanceId.Apply(getServerDisksResult => getServerDisksResult.Disks[0]?.Id),
///         ["simpleApplicationServerDiskId5"] = diskType.Apply(getServerDisksResult => getServerDisksResult.Disks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := simpleapplicationserver.GetServerDisks(ctx, &simpleapplicationserver.GetServerDisksArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerDiskId1", ids.Disks[0].Id)
/// 		nameRegex, err := simpleapplicationserver.GetServerDisks(ctx, &simpleapplicationserver.GetServerDisksArgs{
/// 			NameRegex: pulumi.StringRef("^my-Disk"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerDiskId2", nameRegex.Disks[0].Id)
/// 		status, err := simpleapplicationserver.GetServerDisks(ctx, &simpleapplicationserver.GetServerDisksArgs{
/// 			Status: pulumi.StringRef("In_use"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerDiskId3", status.Disks[0].Id)
/// 		instanceId, err := simpleapplicationserver.GetServerDisks(ctx, &simpleapplicationserver.GetServerDisksArgs{
/// 			InstanceId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerDiskId4", instanceId.Disks[0].Id)
/// 		diskType, err := simpleapplicationserver.GetServerDisks(ctx, &simpleapplicationserver.GetServerDisksArgs{
/// 			DiskType: pulumi.StringRef("System"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerDiskId5", diskType.Disks[0].Id)
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerDisksArgs;
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
///         final var ids = SimpleapplicationserverFunctions.getServerDisks(GetServerDisksArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("simpleApplicationServerDiskId1", ids.disks()[0].id());
///         final var nameRegex = SimpleapplicationserverFunctions.getServerDisks(GetServerDisksArgs.builder()
///             .nameRegex("^my-Disk")
///             .build());
///
///         ctx.export("simpleApplicationServerDiskId2", nameRegex.disks()[0].id());
///         final var status = SimpleapplicationserverFunctions.getServerDisks(GetServerDisksArgs.builder()
///             .status("In_use")
///             .build());
///
///         ctx.export("simpleApplicationServerDiskId3", status.disks()[0].id());
///         final var instanceId = SimpleapplicationserverFunctions.getServerDisks(GetServerDisksArgs.builder()
///             .instanceId("example_value")
///             .build());
///
///         ctx.export("simpleApplicationServerDiskId4", instanceId.disks()[0].id());
///         final var diskType = SimpleapplicationserverFunctions.getServerDisks(GetServerDisksArgs.builder()
///             .diskType("System")
///             .build());
///
///         ctx.export("simpleApplicationServerDiskId5", diskType.disks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerDisks
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerDisks
///       arguments:
///         nameRegex: ^my-Disk
///   status:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerDisks
///       arguments:
///         status: In_use
///   instanceId:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerDisks
///       arguments:
///         instanceId: example_value
///   diskType:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerDisks
///       arguments:
///         diskType: System
/// outputs:
///   simpleApplicationServerDiskId1: ${ids.disks[0].id}
///   simpleApplicationServerDiskId2: ${nameRegex.disks[0].id}
///   simpleApplicationServerDiskId3: ${status.disks[0].id}
///   simpleApplicationServerDiskId4: ${instanceId.disks[0].id}
///   simpleApplicationServerDiskId5: ${diskType.disks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_server_disks_get_server_disks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerDisksResult> getServerDisks(
  GetServerDisksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getServerDisks:getServerDisks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerDisksResult.fromMap(result);
}

/// This data source provides the Simple Application Server Firewall Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.simpleapplicationserver.getServerFirewallRules({
///     instanceId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const simpleApplicationServerFirewallRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.simpleapplicationserver.get_server_firewall_rules(instance_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("simpleApplicationServerFirewallRuleId1", ids.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.SimpleApplicationServer.GetServerFirewallRules.Invoke(new()
///     {
///         InstanceId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["simpleApplicationServerFirewallRuleId1"] = ids.Apply(getServerFirewallRulesResult => getServerFirewallRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := simpleapplicationserver.GetServerFirewallRules(ctx, &simpleapplicationserver.GetServerFirewallRulesArgs{
/// 			InstanceId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerFirewallRuleId1", ids.Rules[0].Id)
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerFirewallRulesArgs;
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
///         final var ids = SimpleapplicationserverFunctions.getServerFirewallRules(GetServerFirewallRulesArgs.builder()
///             .instanceId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("simpleApplicationServerFirewallRuleId1", ids.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerFirewallRules
///       arguments:
///         instanceId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
/// outputs:
///   simpleApplicationServerFirewallRuleId1: ${ids.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_server_firewall_rules_get_server_firewall_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerFirewallRulesResult> getServerFirewallRules(
  GetServerFirewallRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getServerFirewallRules:getServerFirewallRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerFirewallRulesResult.fromMap(result);
}

/// This data source provides the Simple Application Server Plans of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.135.0+.
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
/// const example = alicloud.simpleapplicationserver.getServerPlans({
///     memory: 1,
///     bandwidth: 3,
///     diskSize: 40,
///     flow: 6,
///     core: 2,
/// });
/// export const simpleApplicationServerPlanId1 = ids.plans[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.simpleapplicationserver.get_server_plans(memory=1,
///     bandwidth=3,
///     disk_size=40,
///     flow=6,
///     core=2)
/// pulumi.export("simpleApplicationServerPlanId1", ids["plans"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.SimpleApplicationServer.GetServerPlans.Invoke(new()
///     {
///         Memory = 1,
///         Bandwidth = 3,
///         DiskSize = 40,
///         Flow = 6,
///         Core = 2,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["simpleApplicationServerPlanId1"] = ids.Plans[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := simpleapplicationserver.GetServerPlans(ctx, &simpleapplicationserver.GetServerPlansArgs{
/// 			Memory:    pulumi.Float64Ref(1),
/// 			Bandwidth: pulumi.IntRef(3),
/// 			DiskSize:  pulumi.IntRef(40),
/// 			Flow:      pulumi.IntRef(6),
/// 			Core:      pulumi.IntRef(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerPlanId1", ids.Plans[0].Id)
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerPlansArgs;
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
///         final var example = SimpleapplicationserverFunctions.getServerPlans(GetServerPlansArgs.builder()
///             .memory(1)
///             .bandwidth(3)
///             .diskSize(40)
///             .flow(6)
///             .core(2)
///             .build());
///
///         ctx.export("simpleApplicationServerPlanId1", ids.plans()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerPlans
///       arguments:
///         memory: 1
///         bandwidth: 3
///         diskSize: 40
///         flow: 6
///         core: 2
/// outputs:
///   simpleApplicationServerPlanId1: ${ids.plans[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_server_plans_get_server_plans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerPlansResult> getServerPlans(
  GetServerPlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getServerPlans:getServerPlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerPlansResult.fromMap(result);
}

/// This data source provides the Simple Application Server Snapshots of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.simpleapplicationserver.getServerSnapshots({
///     ids: ["example_id"],
/// });
/// export const simpleApplicationServerSnapshotId1 = ids.then(ids => ids.snapshots?.[0]?.id);
/// const nameRegex = alicloud.simpleapplicationserver.getServerSnapshots({
///     nameRegex: "^my-Snapshot",
/// });
/// export const simpleApplicationServerSnapshotId2 = nameRegex.then(nameRegex => nameRegex.snapshots?.[0]?.id);
/// const diskIdConf = alicloud.simpleapplicationserver.getServerSnapshots({
///     ids: ["example_id"],
///     diskId: "example_value",
/// });
/// export const simpleApplicationServerSnapshotId3 = diskIdConf.then(diskIdConf => diskIdConf.snapshots?.[0]?.id);
/// const instanceIdConf = alicloud.simpleapplicationserver.getServerSnapshots({
///     ids: ["example_id"],
///     instanceId: "example_value",
/// });
/// export const simpleApplicationServerSnapshotId4 = instanceIdConf.then(instanceIdConf => instanceIdConf.snapshots?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.simpleapplicationserver.get_server_snapshots(ids=["example_id"])
/// pulumi.export("simpleApplicationServerSnapshotId1", ids.snapshots[0].id)
/// name_regex = alicloud.simpleapplicationserver.get_server_snapshots(name_regex="^my-Snapshot")
/// pulumi.export("simpleApplicationServerSnapshotId2", name_regex.snapshots[0].id)
/// disk_id_conf = alicloud.simpleapplicationserver.get_server_snapshots(ids=["example_id"],
///     disk_id="example_value")
/// pulumi.export("simpleApplicationServerSnapshotId3", disk_id_conf.snapshots[0].id)
/// instance_id_conf = alicloud.simpleapplicationserver.get_server_snapshots(ids=["example_id"],
///     instance_id="example_value")
/// pulumi.export("simpleApplicationServerSnapshotId4", instance_id_conf.snapshots[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.SimpleApplicationServer.GetServerSnapshots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.SimpleApplicationServer.GetServerSnapshots.Invoke(new()
///     {
///         NameRegex = "^my-Snapshot",
///     });
///
///     var diskIdConf = AliCloud.SimpleApplicationServer.GetServerSnapshots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         DiskId = "example_value",
///     });
///
///     var instanceIdConf = AliCloud.SimpleApplicationServer.GetServerSnapshots.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         InstanceId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["simpleApplicationServerSnapshotId1"] = ids.Apply(getServerSnapshotsResult => getServerSnapshotsResult.Snapshots[0]?.Id),
///         ["simpleApplicationServerSnapshotId2"] = nameRegex.Apply(getServerSnapshotsResult => getServerSnapshotsResult.Snapshots[0]?.Id),
///         ["simpleApplicationServerSnapshotId3"] = diskIdConf.Apply(getServerSnapshotsResult => getServerSnapshotsResult.Snapshots[0]?.Id),
///         ["simpleApplicationServerSnapshotId4"] = instanceIdConf.Apply(getServerSnapshotsResult => getServerSnapshotsResult.Snapshots[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := simpleapplicationserver.GetServerSnapshots(ctx, &simpleapplicationserver.GetServerSnapshotsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerSnapshotId1", ids.Snapshots[0].Id)
/// 		nameRegex, err := simpleapplicationserver.GetServerSnapshots(ctx, &simpleapplicationserver.GetServerSnapshotsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Snapshot"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerSnapshotId2", nameRegex.Snapshots[0].Id)
/// 		diskIdConf, err := simpleapplicationserver.GetServerSnapshots(ctx, &simpleapplicationserver.GetServerSnapshotsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			DiskId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerSnapshotId3", diskIdConf.Snapshots[0].Id)
/// 		instanceIdConf, err := simpleapplicationserver.GetServerSnapshots(ctx, &simpleapplicationserver.GetServerSnapshotsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			InstanceId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("simpleApplicationServerSnapshotId4", instanceIdConf.Snapshots[0].Id)
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerSnapshotsArgs;
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
///         final var ids = SimpleapplicationserverFunctions.getServerSnapshots(GetServerSnapshotsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("simpleApplicationServerSnapshotId1", ids.snapshots()[0].id());
///         final var nameRegex = SimpleapplicationserverFunctions.getServerSnapshots(GetServerSnapshotsArgs.builder()
///             .nameRegex("^my-Snapshot")
///             .build());
///
///         ctx.export("simpleApplicationServerSnapshotId2", nameRegex.snapshots()[0].id());
///         final var diskIdConf = SimpleapplicationserverFunctions.getServerSnapshots(GetServerSnapshotsArgs.builder()
///             .ids("example_id")
///             .diskId("example_value")
///             .build());
///
///         ctx.export("simpleApplicationServerSnapshotId3", diskIdConf.snapshots()[0].id());
///         final var instanceIdConf = SimpleapplicationserverFunctions.getServerSnapshots(GetServerSnapshotsArgs.builder()
///             .ids("example_id")
///             .instanceId("example_value")
///             .build());
///
///         ctx.export("simpleApplicationServerSnapshotId4", instanceIdConf.snapshots()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerSnapshots
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerSnapshots
///       arguments:
///         nameRegex: ^my-Snapshot
///   diskIdConf:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerSnapshots
///       arguments:
///         ids:
///           - example_id
///         diskId: example_value
///   instanceIdConf:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerSnapshots
///       arguments:
///         ids:
///           - example_id
///         instanceId: example_value
/// outputs:
///   simpleApplicationServerSnapshotId1: ${ids.snapshots[0].id}
///   simpleApplicationServerSnapshotId2: ${nameRegex.snapshots[0].id}
///   simpleApplicationServerSnapshotId3: ${diskIdConf.snapshots[0].id}
///   simpleApplicationServerSnapshotId4: ${instanceIdConf.snapshots[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_simpleapplicationserver_get_server_snapshots_get_server_snapshots_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerSnapshotsResult> getServerSnapshots(
  GetServerSnapshotsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:simpleapplicationserver/getServerSnapshots:getServerSnapshots',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerSnapshotsResult.fromMap(result);
}
