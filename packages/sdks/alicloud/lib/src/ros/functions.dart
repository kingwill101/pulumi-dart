import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_sets_args.dart';
import 'get_change_sets_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';
import 'get_stack_groups_args.dart';
import 'get_stack_groups_result.dart';
import 'get_stack_instances_args.dart';
import 'get_stack_instances_result.dart';
import 'get_stacks_args.dart';
import 'get_stacks_result.dart';
import 'get_template_scratches_args.dart';
import 'get_template_scratches_result.dart';
import 'get_templates_args.dart';
import 'get_templates_result.dart';

/// This data source provides the Ros Change Sets of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.105.0+.
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
/// const example = alicloud.ros.getChangeSets({
///     stackId: "example_value",
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstRosChangeSetId = example.then(example => example.sets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.get_change_sets(stack_id="example_value",
///     ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstRosChangeSetId", example.sets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ros.GetChangeSets.Invoke(new()
///     {
///         StackId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRosChangeSetId"] = example.Apply(getChangeSetsResult => getChangeSetsResult.Sets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ros.GetChangeSets(ctx, &ros.GetChangeSetsArgs{
/// 			StackId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRosChangeSetId", example.Sets[0].Id)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetChangeSetsArgs;
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
///         final var example = RosFunctions.getChangeSets(GetChangeSetsArgs.builder()
///             .stackId("example_value")
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstRosChangeSetId", example.sets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ros:getChangeSets
///       arguments:
///         stackId: example_value
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstRosChangeSetId: ${example.sets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_change_sets_get_change_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChangeSetsResult> getChangeSets(
  GetChangeSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getChangeSets:getChangeSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChangeSetsResult.fromMap(result);
}

/// This data source provides the Ros Regions of the current Alibaba Cloud user.
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
/// const all = alicloud.ros.getRegions({});
/// export const rosRegionRegionId1 = all.then(all => all.regions?.[0]?.regionId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// all = alicloud.ros.get_regions()
/// pulumi.export("rosRegionRegionId1", all.regions[0].region_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = AliCloud.Ros.GetRegions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["rosRegionRegionId1"] = all.Apply(getRegionsResult => getRegionsResult.Regions[0]?.RegionId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := ros.GetRegions(ctx, &ros.GetRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosRegionRegionId1", all.Regions[0].RegionId)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetRegionsArgs;
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
///         final var all = RosFunctions.getRegions(GetRegionsArgs.builder()
///             .build());
///
///         ctx.export("rosRegionRegionId1", all.regions()[0].regionId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: alicloud:ros:getRegions
///       arguments: {}
/// outputs:
///   rosRegionRegionId1: ${all.regions[0].regionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}

/// This data source provides the Ros Stack Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.107.0+.
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
/// const example = alicloud.ros.getStackGroups({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstRosStackGroupId = example.then(example => example.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.get_stack_groups(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstRosStackGroupId", example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ros.GetStackGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRosStackGroupId"] = example.Apply(getStackGroupsResult => getStackGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ros.GetStackGroups(ctx, &ros.GetStackGroupsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRosStackGroupId", example.Groups[0].Id)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetStackGroupsArgs;
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
///         final var example = RosFunctions.getStackGroups(GetStackGroupsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstRosStackGroupId", example.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ros:getStackGroups
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstRosStackGroupId: ${example.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_stack_groups_get_stack_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStackGroupsResult> getStackGroups(
  GetStackGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getStackGroups:getStackGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStackGroupsResult.fromMap(result);
}

/// This data source provides the Ros Stack Instances of the current Alibaba Cloud user.
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
/// const ids = alicloud.ros.getStackInstances({
///     stackGroupName: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
///     enableDetails: true,
/// });
/// export const rosStackInstanceId1 = ids.then(ids => ids.instances?.[0]?.id);
/// const status = alicloud.ros.getStackInstances({
///     stackGroupName: "example_value",
///     status: "CURRENT",
///     enableDetails: true,
/// });
/// export const rosStackInstanceId2 = status.then(status => status.instances?.[0]?.id);
/// const regionId = alicloud.ros.getStackInstances({
///     stackGroupName: "example_value",
///     stackInstanceRegionId: "example_value",
///     enableDetails: true,
/// });
/// export const rosStackInstanceId3 = regionId.then(regionId => regionId.instances?.[0]?.id);
/// const accountId = alicloud.ros.getStackInstances({
///     stackGroupName: "example_value",
///     stackInstanceAccountId: "example_value",
///     enableDetails: true,
/// });
/// export const rosStackInstanceId4 = accountId.then(accountId => accountId.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ros.get_stack_instances(stack_group_name="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ],
///     enable_details=True)
/// pulumi.export("rosStackInstanceId1", ids.instances[0].id)
/// status = alicloud.ros.get_stack_instances(stack_group_name="example_value",
///     status="CURRENT",
///     enable_details=True)
/// pulumi.export("rosStackInstanceId2", status.instances[0].id)
/// region_id = alicloud.ros.get_stack_instances(stack_group_name="example_value",
///     stack_instance_region_id="example_value",
///     enable_details=True)
/// pulumi.export("rosStackInstanceId3", region_id.instances[0].id)
/// account_id = alicloud.ros.get_stack_instances(stack_group_name="example_value",
///     stack_instance_account_id="example_value",
///     enable_details=True)
/// pulumi.export("rosStackInstanceId4", account_id.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ros.GetStackInstances.Invoke(new()
///     {
///         StackGroupName = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///         EnableDetails = true,
///     });
///
///     var status = AliCloud.Ros.GetStackInstances.Invoke(new()
///     {
///         StackGroupName = "example_value",
///         Status = "CURRENT",
///         EnableDetails = true,
///     });
///
///     var regionId = AliCloud.Ros.GetStackInstances.Invoke(new()
///     {
///         StackGroupName = "example_value",
///         StackInstanceRegionId = "example_value",
///         EnableDetails = true,
///     });
///
///     var accountId = AliCloud.Ros.GetStackInstances.Invoke(new()
///     {
///         StackGroupName = "example_value",
///         StackInstanceAccountId = "example_value",
///         EnableDetails = true,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["rosStackInstanceId1"] = ids.Apply(getStackInstancesResult => getStackInstancesResult.Instances[0]?.Id),
///         ["rosStackInstanceId2"] = status.Apply(getStackInstancesResult => getStackInstancesResult.Instances[0]?.Id),
///         ["rosStackInstanceId3"] = regionId.Apply(getStackInstancesResult => getStackInstancesResult.Instances[0]?.Id),
///         ["rosStackInstanceId4"] = accountId.Apply(getStackInstancesResult => getStackInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ros.GetStackInstances(ctx, &ros.GetStackInstancesArgs{
/// 			StackGroupName: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 			EnableDetails: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosStackInstanceId1", ids.Instances[0].Id)
/// 		status, err := ros.GetStackInstances(ctx, &ros.GetStackInstancesArgs{
/// 			StackGroupName: "example_value",
/// 			Status:         pulumi.StringRef("CURRENT"),
/// 			EnableDetails:  pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosStackInstanceId2", status.Instances[0].Id)
/// 		regionId, err := ros.GetStackInstances(ctx, &ros.GetStackInstancesArgs{
/// 			StackGroupName:        "example_value",
/// 			StackInstanceRegionId: pulumi.StringRef("example_value"),
/// 			EnableDetails:         pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosStackInstanceId3", regionId.Instances[0].Id)
/// 		accountId, err := ros.GetStackInstances(ctx, &ros.GetStackInstancesArgs{
/// 			StackGroupName:         "example_value",
/// 			StackInstanceAccountId: pulumi.StringRef("example_value"),
/// 			EnableDetails:          pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosStackInstanceId4", accountId.Instances[0].Id)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetStackInstancesArgs;
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
///         final var ids = RosFunctions.getStackInstances(GetStackInstancesArgs.builder()
///             .stackGroupName("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .enableDetails(true)
///             .build());
///
///         ctx.export("rosStackInstanceId1", ids.instances()[0].id());
///         final var status = RosFunctions.getStackInstances(GetStackInstancesArgs.builder()
///             .stackGroupName("example_value")
///             .status("CURRENT")
///             .enableDetails(true)
///             .build());
///
///         ctx.export("rosStackInstanceId2", status.instances()[0].id());
///         final var regionId = RosFunctions.getStackInstances(GetStackInstancesArgs.builder()
///             .stackGroupName("example_value")
///             .stackInstanceRegionId("example_value")
///             .enableDetails(true)
///             .build());
///
///         ctx.export("rosStackInstanceId3", regionId.instances()[0].id());
///         final var accountId = RosFunctions.getStackInstances(GetStackInstancesArgs.builder()
///             .stackGroupName("example_value")
///             .stackInstanceAccountId("example_value")
///             .enableDetails(true)
///             .build());
///
///         ctx.export("rosStackInstanceId4", accountId.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ros:getStackInstances
///       arguments:
///         stackGroupName: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///         enableDetails: true
///   status:
///     fn::invoke:
///       function: alicloud:ros:getStackInstances
///       arguments:
///         stackGroupName: example_value
///         status: CURRENT
///         enableDetails: true
///   regionId:
///     fn::invoke:
///       function: alicloud:ros:getStackInstances
///       arguments:
///         stackGroupName: example_value
///         stackInstanceRegionId: example_value
///         enableDetails: true
///   accountId:
///     fn::invoke:
///       function: alicloud:ros:getStackInstances
///       arguments:
///         stackGroupName: example_value
///         stackInstanceAccountId: example_value
///         enableDetails: true
/// outputs:
///   rosStackInstanceId1: ${ids.instances[0].id}
///   rosStackInstanceId2: ${status.instances[0].id}
///   rosStackInstanceId3: ${regionId.instances[0].id}
///   rosStackInstanceId4: ${accountId.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_stack_instances_get_stack_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStackInstancesResult> getStackInstances(
  GetStackInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getStackInstances:getStackInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStackInstancesResult.fromMap(result);
}

/// This data source provides the Ros Stacks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.106.0+.
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
/// const example = alicloud.ros.getStacks({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstRosStackId = example.then(example => example.stacks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.get_stacks(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstRosStackId", example.stacks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ros.GetStacks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRosStackId"] = example.Apply(getStacksResult => getStacksResult.Stacks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ros.GetStacks(ctx, &ros.GetStacksArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRosStackId", example.Stacks[0].Id)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetStacksArgs;
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
///         final var example = RosFunctions.getStacks(GetStacksArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstRosStackId", example.stacks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ros:getStacks
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstRosStackId: ${example.stacks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_stacks_get_stacks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStacksResult> getStacks(
  GetStacksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getStacks:getStacks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStacksResult.fromMap(result);
}

/// This data source provides the Ros Template Scratches of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.151.0+.
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
/// const ids = alicloud.ros.getTemplateScratches({
///     ids: ["example_value"],
/// });
/// export const rosTemplateScratchId1 = ids.then(ids => ids.scratches?.[0]?.id);
/// const status = alicloud.ros.getTemplateScratches({
///     status: "GENERATE_COMPLETE",
/// });
/// export const rosTemplateScratchId2 = status.then(status => status.scratches?.[0]?.id);
/// const templateScratchType = alicloud.ros.getTemplateScratches({
///     templateScratchType: "ResourceImport",
/// });
/// export const rosTemplateScratchId3 = templateScratchType.then(templateScratchType => templateScratchType.scratches?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ros.get_template_scratches(ids=["example_value"])
/// pulumi.export("rosTemplateScratchId1", ids.scratches[0].id)
/// status = alicloud.ros.get_template_scratches(status="GENERATE_COMPLETE")
/// pulumi.export("rosTemplateScratchId2", status.scratches[0].id)
/// template_scratch_type = alicloud.ros.get_template_scratches(template_scratch_type="ResourceImport")
/// pulumi.export("rosTemplateScratchId3", template_scratch_type.scratches[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ros.GetTemplateScratches.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var status = AliCloud.Ros.GetTemplateScratches.Invoke(new()
///     {
///         Status = "GENERATE_COMPLETE",
///     });
///
///     var templateScratchType = AliCloud.Ros.GetTemplateScratches.Invoke(new()
///     {
///         TemplateScratchType = "ResourceImport",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["rosTemplateScratchId1"] = ids.Apply(getTemplateScratchesResult => getTemplateScratchesResult.Scratches[0]?.Id),
///         ["rosTemplateScratchId2"] = status.Apply(getTemplateScratchesResult => getTemplateScratchesResult.Scratches[0]?.Id),
///         ["rosTemplateScratchId3"] = templateScratchType.Apply(getTemplateScratchesResult => getTemplateScratchesResult.Scratches[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ros.GetTemplateScratches(ctx, &ros.GetTemplateScratchesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosTemplateScratchId1", ids.Scratches[0].Id)
/// 		status, err := ros.GetTemplateScratches(ctx, &ros.GetTemplateScratchesArgs{
/// 			Status: pulumi.StringRef("GENERATE_COMPLETE"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosTemplateScratchId2", status.Scratches[0].Id)
/// 		templateScratchType, err := ros.GetTemplateScratches(ctx, &ros.GetTemplateScratchesArgs{
/// 			TemplateScratchType: pulumi.StringRef("ResourceImport"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("rosTemplateScratchId3", templateScratchType.Scratches[0].Id)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetTemplateScratchesArgs;
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
///         final var ids = RosFunctions.getTemplateScratches(GetTemplateScratchesArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("rosTemplateScratchId1", ids.scratches()[0].id());
///         final var status = RosFunctions.getTemplateScratches(GetTemplateScratchesArgs.builder()
///             .status("GENERATE_COMPLETE")
///             .build());
///
///         ctx.export("rosTemplateScratchId2", status.scratches()[0].id());
///         final var templateScratchType = RosFunctions.getTemplateScratches(GetTemplateScratchesArgs.builder()
///             .templateScratchType("ResourceImport")
///             .build());
///
///         ctx.export("rosTemplateScratchId3", templateScratchType.scratches()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ros:getTemplateScratches
///       arguments:
///         ids:
///           - example_value
///   status:
///     fn::invoke:
///       function: alicloud:ros:getTemplateScratches
///       arguments:
///         status: GENERATE_COMPLETE
///   templateScratchType:
///     fn::invoke:
///       function: alicloud:ros:getTemplateScratches
///       arguments:
///         templateScratchType: ResourceImport
/// outputs:
///   rosTemplateScratchId1: ${ids.scratches[0].id}
///   rosTemplateScratchId2: ${status.scratches[0].id}
///   rosTemplateScratchId3: ${templateScratchType.scratches[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_template_scratches_get_template_scratches_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplateScratchesResult> getTemplateScratches(
  GetTemplateScratchesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getTemplateScratches:getTemplateScratches',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplateScratchesResult.fromMap(result);
}

/// This data source provides the Ros Templates of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.108.0+.
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
/// const example = alicloud.ros.getTemplates({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstRosTemplateId = example.then(example => example.templates?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.get_templates(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstRosTemplateId", example.templates[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Ros.GetTemplates.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRosTemplateId"] = example.Apply(getTemplatesResult => getTemplatesResult.Templates[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ros.GetTemplates(ctx, &ros.GetTemplatesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRosTemplateId", example.Templates[0].Id)
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
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetTemplatesArgs;
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
///         final var example = RosFunctions.getTemplates(GetTemplatesArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstRosTemplateId", example.templates()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:ros:getTemplates
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstRosTemplateId: ${example.templates[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ros_get_templates_get_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTemplatesResult> getTemplates(
  GetTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ros/getTemplates:getTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTemplatesResult.fromMap(result);
}
