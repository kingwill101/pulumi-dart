import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_executions_args.dart';
import 'get_executions_result.dart';
import 'get_flows_args.dart';
import 'get_flows_result.dart';
import 'get_schedules_args.dart';
import 'get_schedules_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides the FnF Executions of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.149.0+.
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
/// const ids = alicloud.fnf.getExecutions({
///     flowName: "example_value",
///     ids: [
///         "my-Execution-1",
///         "my-Execution-2",
///     ],
/// });
/// export const fnfExecutionId1 = idsAlicloudFnFExecutions.executions[0].id;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.fnf.get_executions(flow_name="example_value",
///     ids=[
///         "my-Execution-1",
///         "my-Execution-2",
///     ])
/// pulumi.export("fnfExecutionId1", ids_alicloud_fn_f_executions["executions"][0]["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.FNF.GetExecutions.Invoke(new()
///     {
///         FlowName = "example_value",
///         Ids = new[]
///         {
///             "my-Execution-1",
///             "my-Execution-2",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fnfExecutionId1"] = idsAlicloudFnFExecutions.Executions[0].Id,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fnf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fnf.GetExecutions(ctx, &fnf.GetExecutionsArgs{
/// 			FlowName: "example_value",
/// 			Ids: []string{
/// 				"my-Execution-1",
/// 				"my-Execution-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fnfExecutionId1", idsAlicloudFnFExecutions.Executions[0].Id)
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
/// import com.pulumi.alicloud.fnf.FnfFunctions;
/// import com.pulumi.alicloud.fnf.inputs.GetExecutionsArgs;
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
///         final var ids = FnfFunctions.getExecutions(GetExecutionsArgs.builder()
///             .flowName("example_value")
///             .ids(
///                 "my-Execution-1",
///                 "my-Execution-2")
///             .build());
///
///         ctx.export("fnfExecutionId1", idsAlicloudFnFExecutions.executions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:fnf:getExecutions
///       arguments:
///         flowName: example_value
///         ids:
///           - my-Execution-1
///           - my-Execution-2
/// outputs:
///   fnfExecutionId1: ${idsAlicloudFnFExecutions.executions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fnf_get_executions_get_executions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionsResult> getExecutions(
  GetExecutionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fnf/getExecutions:getExecutions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionsResult.fromMap(result);
}

/// This data source provides the Fnf Flows of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.105.0+.
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
/// const example = alicloud.fnf.getFlows({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstFnfFlowId = example.then(example => example.flows?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.fnf.get_flows(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstFnfFlowId", example.flows[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.FNF.GetFlows.Invoke(new()
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
///         ["firstFnfFlowId"] = example.Apply(getFlowsResult => getFlowsResult.Flows[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fnf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := fnf.GetFlows(ctx, &fnf.GetFlowsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstFnfFlowId", example.Flows[0].Id)
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
/// import com.pulumi.alicloud.fnf.FnfFunctions;
/// import com.pulumi.alicloud.fnf.inputs.GetFlowsArgs;
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
///         final var example = FnfFunctions.getFlows(GetFlowsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstFnfFlowId", example.flows()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:fnf:getFlows
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstFnfFlowId: ${example.flows[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fnf_get_flows_get_flows_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowsResult> getFlows(
  GetFlowsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fnf/getFlows:getFlows',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowsResult.fromMap(result);
}

/// This data source provides the Fnf Schedules of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.105.0+.
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
/// const example = alicloud.fnf.getSchedules({
///     flowName: "example_value",
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstFnfScheduleId = example.then(example => example.schedules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.fnf.get_schedules(flow_name="example_value",
///     ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstFnfScheduleId", example.schedules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.FNF.GetSchedules.Invoke(new()
///     {
///         FlowName = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstFnfScheduleId"] = example.Apply(getSchedulesResult => getSchedulesResult.Schedules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fnf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := fnf.GetSchedules(ctx, &fnf.GetSchedulesArgs{
/// 			FlowName: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstFnfScheduleId", example.Schedules[0].Id)
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
/// import com.pulumi.alicloud.fnf.FnfFunctions;
/// import com.pulumi.alicloud.fnf.inputs.GetSchedulesArgs;
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
///         final var example = FnfFunctions.getSchedules(GetSchedulesArgs.builder()
///             .flowName("example_value")
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstFnfScheduleId", example.schedules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:fnf:getSchedules
///       arguments:
///         flowName: example_value
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstFnfScheduleId: ${example.schedules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fnf_get_schedules_get_schedules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSchedulesResult> getSchedules(
  GetSchedulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fnf/getSchedules:getSchedules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSchedulesResult.fromMap(result);
}

/// Using this data source can open Fnf service automatically. If the service has been opened, it will return opened.
///
/// For information about Fnf and how to use it, see [What is Fnf](https://www.alibabacloud.com/help/en/product/113549.htm).
///
/// &gt; **NOTE:** Available in v1.114.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.fnf.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.fnf.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.FNF.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fnf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fnf.GetService(ctx, &fnf.GetServiceArgs{
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
/// import com.pulumi.alicloud.fnf.FnfFunctions;
/// import com.pulumi.alicloud.fnf.inputs.GetServiceArgs;
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
///         final var open = FnfFunctions.getService(GetServiceArgs.builder()
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
///       function: alicloud:fnf:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_fnf_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:fnf/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
