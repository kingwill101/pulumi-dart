import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_event_buses_args.dart';
import 'get_event_buses_result.dart';
import 'get_event_sources_args.dart';
import 'get_event_sources_result.dart';
import 'get_rules_args.dart';
import 'get_rules_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';

/// This data source provides the Event Bridge Event Buses of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.129.0+.
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
/// const ids = alicloud.eventbridge.getEventBuses({});
/// export const eventBridgeEventBusId1 = ids.then(ids => ids.buses?.[0]?.id);
/// const nameRegex = alicloud.eventbridge.getEventBuses({
///     nameRegex: "^my-EventBus",
/// });
/// export const eventBridgeEventBusId2 = nameRegex.then(nameRegex => nameRegex.buses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.eventbridge.get_event_buses()
/// pulumi.export("eventBridgeEventBusId1", ids.buses[0].id)
/// name_regex = alicloud.eventbridge.get_event_buses(name_regex="^my-EventBus")
/// pulumi.export("eventBridgeEventBusId2", name_regex.buses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.EventBridge.GetEventBuses.Invoke();
///
///     var nameRegex = AliCloud.EventBridge.GetEventBuses.Invoke(new()
///     {
///         NameRegex = "^my-EventBus",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["eventBridgeEventBusId1"] = ids.Apply(getEventBusesResult => getEventBusesResult.Buses[0]?.Id),
///         ["eventBridgeEventBusId2"] = nameRegex.Apply(getEventBusesResult => getEventBusesResult.Buses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := eventbridge.GetEventBuses(ctx, &eventbridge.GetEventBusesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventBridgeEventBusId1", ids.Buses[0].Id)
/// 		nameRegex, err := eventbridge.GetEventBuses(ctx, &eventbridge.GetEventBusesArgs{
/// 			NameRegex: pulumi.StringRef("^my-EventBus"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("eventBridgeEventBusId2", nameRegex.Buses[0].Id)
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
/// import com.pulumi.alicloud.eventbridge.EventbridgeFunctions;
/// import com.pulumi.alicloud.eventbridge.inputs.GetEventBusesArgs;
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
///         final var ids = EventbridgeFunctions.getEventBuses(GetEventBusesArgs.builder()
///             .build());
///
///         ctx.export("eventBridgeEventBusId1", ids.buses()[0].id());
///         final var nameRegex = EventbridgeFunctions.getEventBuses(GetEventBusesArgs.builder()
///             .nameRegex("^my-EventBus")
///             .build());
///
///         ctx.export("eventBridgeEventBusId2", nameRegex.buses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:eventbridge:getEventBuses
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:eventbridge:getEventBuses
///       arguments:
///         nameRegex: ^my-EventBus
/// outputs:
///   eventBridgeEventBusId1: ${ids.buses[0].id}
///   eventBridgeEventBusId2: ${nameRegex.buses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eventbridge_get_event_buses_get_event_buses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventBusesResult> getEventBuses(
  GetEventBusesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eventbridge/getEventBuses:getEventBuses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventBusesResult.fromMap(result);
}

/// This data source provides the Event Bridge Event Sources of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.130.0+.
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
/// const example = alicloud.eventbridge.getEventSources({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstEventBridgeEventSourceId = example.then(example => example.sources?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.eventbridge.get_event_sources(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstEventBridgeEventSourceId", example.sources[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.EventBridge.GetEventSources.Invoke(new()
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
///         ["firstEventBridgeEventSourceId"] = example.Apply(getEventSourcesResult => getEventSourcesResult.Sources[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventbridge.GetEventSources(ctx, &eventbridge.GetEventSourcesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEventBridgeEventSourceId", example.Sources[0].Id)
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
/// import com.pulumi.alicloud.eventbridge.EventbridgeFunctions;
/// import com.pulumi.alicloud.eventbridge.inputs.GetEventSourcesArgs;
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
///         final var example = EventbridgeFunctions.getEventSources(GetEventSourcesArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstEventBridgeEventSourceId", example.sources()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:eventbridge:getEventSources
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstEventBridgeEventSourceId: ${example.sources[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eventbridge_get_event_sources_get_event_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEventSourcesResult> getEventSources(
  GetEventSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eventbridge/getEventSources:getEventSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEventSourcesResult.fromMap(result);
}

/// This data source provides the Event Bridge Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.129.0+.
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
/// const example = alicloud.eventbridge.getRules({
///     eventBusName: "example_value",
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstEventBridgeRuleId = example.then(example => example.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.eventbridge.get_rules(event_bus_name="example_value",
///     ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstEventBridgeRuleId", example.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.EventBridge.GetRules.Invoke(new()
///     {
///         EventBusName = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEventBridgeRuleId"] = example.Apply(getRulesResult => getRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := eventbridge.GetRules(ctx, &eventbridge.GetRulesArgs{
/// 			EventBusName: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEventBridgeRuleId", example.Rules[0].Id)
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
/// import com.pulumi.alicloud.eventbridge.EventbridgeFunctions;
/// import com.pulumi.alicloud.eventbridge.inputs.GetRulesArgs;
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
///         final var example = EventbridgeFunctions.getRules(GetRulesArgs.builder()
///             .eventBusName("example_value")
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstEventBridgeRuleId", example.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:eventbridge:getRules
///       arguments:
///         eventBusName: example_value
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstEventBridgeRuleId: ${example.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eventbridge_get_rules_get_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRulesResult> getRules(
  GetRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eventbridge/getRules:getRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRulesResult.fromMap(result);
}

/// Using this data source can open Event Bridge service automatically. If the service has been opened, it will return opened.
///
/// For information about Event Bridge and how to use it, see [What is Event Bridge](https://www.alibabacloud.com/help/en/doc-detail/163239.htm).
///
/// > **NOTE:** Available since v1.126.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.eventbridge.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.eventbridge.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.EventBridge.GetService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventbridge.GetService(ctx, &eventbridge.GetServiceArgs{
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
/// import com.pulumi.alicloud.eventbridge.EventbridgeFunctions;
/// import com.pulumi.alicloud.eventbridge.inputs.GetServiceArgs;
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
///         final var open = EventbridgeFunctions.getService(GetServiceArgs.builder()
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
///       function: alicloud:eventbridge:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eventbridge_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eventbridge/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}
