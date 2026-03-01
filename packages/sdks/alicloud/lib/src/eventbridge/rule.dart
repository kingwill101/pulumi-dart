import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_state.dart';
import 'rule_target.dart';

/// Provides a Event Bridge Rule resource.
///
/// For information about Event Bridge Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/eventbridge/latest/createrule-6).
///
/// > **NOTE:** Available since v1.129.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getAccount({});
/// const defaultEventBus = new alicloud.eventbridge.EventBus("default", {eventBusName: name});
/// const queue1 = new alicloud.mns.Queue("queue1", {name: name});
/// const mnsEndpointA = std.format({
///     input: "acs:mns:cn-hangzhou:%s:queues/%s",
///     args: [
///         _default.then(_default => _default.id),
///         queue1.name,
///     ],
/// }).then(invoke => invoke.result);
/// const fnfEndpoint = std.format({
///     input: "acs:fnf:cn-hangzhou:%s:flow/${flow}",
///     args: [_default.then(_default => _default.id)],
/// }).then(invoke => invoke.result);
/// const example = new alicloud.eventbridge.Rule("example", {
///     eventBusName: defaultEventBus.eventBusName,
///     ruleName: name,
///     description: "example",
///     filterPattern: "{\"source\":[\"crmabc.newsletter\"],\"type\":[\"UserSignUp\", \"UserLogin\"]}",
///     targets: [{
///         targetId: "tf-example1",
///         endpoint: mnsEndpointA,
///         type: "acs.mns.queue",
///         paramLists: [
///             {
///                 resourceKey: "queue",
///                 form: "CONSTANT",
///                 value: "tf-testaccEbRule",
///             },
///             {
///                 resourceKey: "Body",
///                 form: "ORIGINAL",
///             },
///             {
///                 form: "CONSTANT",
///                 resourceKey: "IsBase64Encode",
///                 value: "true",
///             },
///         ],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_account()
/// default_event_bus = alicloud.eventbridge.EventBus("default", event_bus_name=name)
/// queue1 = alicloud.mns.Queue("queue1", name=name)
/// mns_endpoint_a = std.format(input="acs:mns:cn-hangzhou:%s:queues/%s",
///     args=[
///         default.id,
///         queue1.name,
///     ]).result
/// fnf_endpoint = std.format(input="acs:fnf:cn-hangzhou:%s:flow/${flow}",
///     args=[default.id]).result
/// example = alicloud.eventbridge.Rule("example",
///     event_bus_name=default_event_bus.event_bus_name,
///     rule_name=name,
///     description="example",
///     filter_pattern="{\"source\":[\"crmabc.newsletter\"],\"type\":[\"UserSignUp\", \"UserLogin\"]}",
///     targets=[{
///         "target_id": "tf-example1",
///         "endpoint": mns_endpoint_a,
///         "type": "acs.mns.queue",
///         "param_lists": [
///             {
///                 "resource_key": "queue",
///                 "form": "CONSTANT",
///                 "value": "tf-testaccEbRule",
///             },
///             {
///                 "resource_key": "Body",
///                 "form": "ORIGINAL",
///             },
///             {
///                 "form": "CONSTANT",
///                 "resource_key": "IsBase64Encode",
///                 "value": "true",
///             },
///         ],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultEventBus = new AliCloud.EventBridge.EventBus("default", new()
///     {
///         EventBusName = name,
///     });
///
///     var queue1 = new AliCloud.Mns.Queue("queue1", new()
///     {
///         Name = name,
///     });
///
///     var mnsEndpointA = Std.Format.Invoke(new()
///     {
///         Input = "acs:mns:cn-hangzhou:%s:queues/%s",
///         Args = new[]
///         {
///             @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///             queue1.Name,
///         },
///     }).Apply(invoke => invoke.Result);
///
///     var fnfEndpoint = Std.Format.Invoke(new()
///     {
///         Input = "acs:fnf:cn-hangzhou:%s:flow/${flow}",
///         Args = new[]
///         {
///             @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         },
///     }).Apply(invoke => invoke.Result);
///
///     var example = new AliCloud.EventBridge.Rule("example", new()
///     {
///         EventBusName = defaultEventBus.EventBusName,
///         RuleName = name,
///         Description = "example",
///         FilterPattern = "{\"source\":[\"crmabc.newsletter\"],\"type\":[\"UserSignUp\", \"UserLogin\"]}",
///         Targets = new[]
///         {
///             new AliCloud.EventBridge.Inputs.RuleTargetArgs
///             {
///                 TargetId = "tf-example1",
///                 Endpoint = mnsEndpointA,
///                 Type = "acs.mns.queue",
///                 ParamLists = new[]
///                 {
///                     new AliCloud.EventBridge.Inputs.RuleTargetParamListArgs
///                     {
///                         ResourceKey = "queue",
///                         Form = "CONSTANT",
///                         Value = "tf-testaccEbRule",
///                     },
///                     new AliCloud.EventBridge.Inputs.RuleTargetParamListArgs
///                     {
///                         ResourceKey = "Body",
///                         Form = "ORIGINAL",
///                     },
///                     new AliCloud.EventBridge.Inputs.RuleTargetParamListArgs
///                     {
///                         Form = "CONSTANT",
///                         ResourceKey = "IsBase64Encode",
///                         Value = "true",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEventBus, err := eventbridge.NewEventBus(ctx, "default", &eventbridge.EventBusArgs{
/// 			EventBusName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		queue1, err := mns.NewQueue(ctx, "queue1", &mns.QueueArgs{
/// 			Name: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mnsEndpointA := std.Format(ctx, &std.FormatArgs{
/// 			Input: "acs:mns:cn-hangzhou:%s:queues/%s",
/// 			Args: []interface{}{
/// 				_default.Id,
/// 				queue1.Name,
/// 			},
/// 		}, nil).Result
/// 		_ := std.Format(ctx, &std.FormatArgs{
/// 			Input: "acs:fnf:cn-hangzhou:%s:flow/${flow}",
/// 			Args: []*string{
/// 				_default.Id,
/// 			},
/// 		}, nil).Result
/// 		_, err = eventbridge.NewRule(ctx, "example", &eventbridge.RuleArgs{
/// 			EventBusName:  defaultEventBus.EventBusName,
/// 			RuleName:      pulumi.String(name),
/// 			Description:   pulumi.String("example"),
/// 			FilterPattern: pulumi.String("{\"source\":[\"crmabc.newsletter\"],\"type\":[\"UserSignUp\", \"UserLogin\"]}"),
/// 			Targets: eventbridge.RuleTargetArray{
/// 				&eventbridge.RuleTargetArgs{
/// 					TargetId: pulumi.String("tf-example1"),
/// 					Endpoint: pulumi.String(mnsEndpointA),
/// 					Type:     pulumi.String("acs.mns.queue"),
/// 					ParamLists: eventbridge.RuleTargetParamListArray{
/// 						&eventbridge.RuleTargetParamListArgs{
/// 							ResourceKey: pulumi.String("queue"),
/// 							Form:        pulumi.String("CONSTANT"),
/// 							Value:       pulumi.String("tf-testaccEbRule"),
/// 						},
/// 						&eventbridge.RuleTargetParamListArgs{
/// 							ResourceKey: pulumi.String("Body"),
/// 							Form:        pulumi.String("ORIGINAL"),
/// 						},
/// 						&eventbridge.RuleTargetParamListArgs{
/// 							Form:        pulumi.String("CONSTANT"),
/// 							ResourceKey: pulumi.String("IsBase64Encode"),
/// 							Value:       pulumi.String("true"),
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.eventbridge.EventBus;
/// import com.pulumi.alicloud.eventbridge.EventBusArgs;
/// import com.pulumi.alicloud.mns.Queue;
/// import com.pulumi.alicloud.mns.QueueArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.eventbridge.Rule;
/// import com.pulumi.alicloud.eventbridge.RuleArgs;
/// import com.pulumi.alicloud.eventbridge.inputs.RuleTargetArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultEventBus = new EventBus("defaultEventBus", EventBusArgs.builder()
///             .eventBusName(name)
///             .build());
///
///         var queue1 = new Queue("queue1", QueueArgs.builder()
///             .name(name)
///             .build());
///
///         final var mnsEndpointA = StdFunctions.format(FormatArgs.builder()
///             .input("acs:mns:cn-hangzhou:%s:queues/%s")
///             .args(
///                 default_.id(),
///                 queue1.name())
///             .build()).result();
///
///         final var fnfEndpoint = StdFunctions.format(FormatArgs.builder()
///             .input("acs:fnf:cn-hangzhou:%s:flow/${flow}")
///             .args(default_.id())
///             .build()).result();
///
///         var example = new Rule("example", RuleArgs.builder()
///             .eventBusName(defaultEventBus.eventBusName())
///             .ruleName(name)
///             .description("example")
///             .filterPattern("{\"source\":[\"crmabc.newsletter\"],\"type\":[\"UserSignUp\", \"UserLogin\"]}")
///             .targets(RuleTargetArgs.builder()
///                 .targetId("tf-example1")
///                 .endpoint(mnsEndpointA)
///                 .type("acs.mns.queue")
///                 .paramLists(
///                     RuleTargetParamListArgs.builder()
///                         .resourceKey("queue")
///                         .form("CONSTANT")
///                         .value("tf-testaccEbRule")
///                         .build(),
///                     RuleTargetParamListArgs.builder()
///                         .resourceKey("Body")
///                         .form("ORIGINAL")
///                         .build(),
///                     RuleTargetParamListArgs.builder()
///                         .form("CONSTANT")
///                         .resourceKey("IsBase64Encode")
///                         .value("true")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultEventBus:
///     type: alicloud:eventbridge:EventBus
///     name: default
///     properties:
///       eventBusName: ${name}
///   queue1:
///     type: alicloud:mns:Queue
///     properties:
///       name: ${name}
///   example:
///     type: alicloud:eventbridge:Rule
///     properties:
///       eventBusName: ${defaultEventBus.eventBusName}
///       ruleName: ${name}
///       description: example
///       filterPattern: '{"source":["crmabc.newsletter"],"type":["UserSignUp", "UserLogin"]}'
///       targets:
///         - targetId: tf-example1
///           endpoint: ${mnsEndpointA}
///           type: acs.mns.queue
///           paramLists:
///             - resourceKey: queue
///               form: CONSTANT
///               value: tf-testaccEbRule
///             - resourceKey: Body
///               form: ORIGINAL
///             - form: CONSTANT
///               resourceKey: IsBase64Encode
///               value: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   mnsEndpointA:
///     fn::invoke:
///       function: std:format
///       arguments:
///         input: acs:mns:cn-hangzhou:%s:queues/%s
///         args:
///           - ${default.id}
///           - ${queue1.name}
///       return: result
///   fnfEndpoint:
///     fn::invoke:
///       function: std:format
///       arguments:
///         input: acs:fnf:cn-hangzhou:%s:flow/$${flow}
///         args:
///           - ${default.id}
///       return: result
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/rule:Rule example <event_bus_name>:<rule_name>
/// ```
class Rule extends pulumi.CustomResource {
  /// The description of the event rule.
  late final pulumi.Output<String?> description;
  /// The name of the event bus.
  late final pulumi.Output<String> eventBusName;
  /// The pattern to match interested events. Event mode, JSON format. The value description is as follows: `stringEqual` mode. `stringExpression` mode. Each field has up to 5 expressions (map structure).
  late final pulumi.Output<String> filterPattern;
  /// The name of the event rule.
  late final pulumi.Output<String> ruleName;
  /// The status of the event rule. Valid values: `ENABLE`, `DISABLE`.
  late final pulumi.Output<String> status;
  /// The targets of rule. See `targets` below.
  late final pulumi.Output<List<RuleTarget>> targets;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_eventbridge_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.eventBusName = registerOutput<String>('eventBusName');
    this.filterPattern = registerOutput<String>('filterPattern');
    this.ruleName = registerOutput<String>('ruleName');
    this.status = registerOutput<String>('status');
    this.targets = registerOutput<List<RuleTarget>>('targets');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.eventBusName = registerOutput<String>('eventBusName');
    this.filterPattern = registerOutput<String>('filterPattern');
    this.ruleName = registerOutput<String>('ruleName');
    this.status = registerOutput<String>('status');
    this.targets = registerOutput<List<RuleTarget>>('targets');
  }
}
