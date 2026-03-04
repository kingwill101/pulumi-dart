import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_rule_args.dart';
import 'event_rule_event_pattern.dart';
import 'event_rule_state.dart';

/// Provides a Cloud Monitor Service Event Rule resource.
///
/// For information about Cloud Monitor Service Event Rule and how to use it, see [What is Event Rule](https://www.alibabacloud.com/help/en/cloudmonitor/latest/puteventrule).
///
/// &gt; **NOTE:** Available since v1.182.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = new alicloud.cms.MonitorGroup("default", {monitorGroupName: name});
/// const example = new alicloud.cms.EventRule("example", {
///     ruleName: name,
///     groupId: _default.id,
///     silenceTime: 100,
///     description: name,
///     status: "ENABLED",
///     eventPattern: {
///         product: "ecs",
///         sqlFilter: "example_value",
///         nameLists: ["example_value"],
///         levelLists: ["CRITICAL"],
///         eventTypeLists: ["StatusNotification"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.cms.MonitorGroup("default", monitor_group_name=name)
/// example = alicloud.cms.EventRule("example",
///     rule_name=name,
///     group_id=default.id,
///     silence_time=100,
///     description=name,
///     status="ENABLED",
///     event_pattern={
///         "product": "ecs",
///         "sql_filter": "example_value",
///         "name_lists": ["example_value"],
///         "level_lists": ["CRITICAL"],
///         "event_type_lists": ["StatusNotification"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = new AliCloud.Cms.MonitorGroup("default", new()
///     {
///         MonitorGroupName = name,
///     });
///
///     var example = new AliCloud.Cms.EventRule("example", new()
///     {
///         RuleName = name,
///         GroupId = @default.Id,
///         SilenceTime = 100,
///         Description = name,
///         Status = "ENABLED",
///         EventPattern = new AliCloud.Cms.Inputs.EventRuleEventPatternArgs
///         {
///             Product = "ecs",
///             SqlFilter = "example_value",
///             NameLists = new[]
///             {
///                 "example_value",
///             },
///             LevelLists = new[]
///             {
///                 "CRITICAL",
///             },
///             EventTypeLists = new[]
///             {
///                 "StatusNotification",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
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
/// 		_default, err := cms.NewMonitorGroup(ctx, "default", &cms.MonitorGroupArgs{
/// 			MonitorGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewEventRule(ctx, "example", &cms.EventRuleArgs{
/// 			RuleName:    pulumi.String(name),
/// 			GroupId:     _default.ID(),
/// 			SilenceTime: pulumi.Int(100),
/// 			Description: pulumi.String(name),
/// 			Status:      pulumi.String("ENABLED"),
/// 			EventPattern: &cms.EventRuleEventPatternArgs{
/// 				Product:   pulumi.String("ecs"),
/// 				SqlFilter: pulumi.String("example_value"),
/// 				NameLists: pulumi.StringArray{
/// 					pulumi.String("example_value"),
/// 				},
/// 				LevelLists: pulumi.StringArray{
/// 					pulumi.String("CRITICAL"),
/// 				},
/// 				EventTypeLists: pulumi.StringArray{
/// 					pulumi.String("StatusNotification"),
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
/// import com.pulumi.alicloud.cms.MonitorGroup;
/// import com.pulumi.alicloud.cms.MonitorGroupArgs;
/// import com.pulumi.alicloud.cms.EventRule;
/// import com.pulumi.alicloud.cms.EventRuleArgs;
/// import com.pulumi.alicloud.cms.inputs.EventRuleEventPatternArgs;
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
///         var default_ = new MonitorGroup("default", MonitorGroupArgs.builder()
///             .monitorGroupName(name)
///             .build());
///
///         var example = new EventRule("example", EventRuleArgs.builder()
///             .ruleName(name)
///             .groupId(default_.id())
///             .silenceTime(100)
///             .description(name)
///             .status("ENABLED")
///             .eventPattern(EventRuleEventPatternArgs.builder()
///                 .product("ecs")
///                 .sqlFilter("example_value")
///                 .nameLists("example_value")
///                 .levelLists("CRITICAL")
///                 .eventTypeLists("StatusNotification")
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
///   default:
///     type: alicloud:cms:MonitorGroup
///     properties:
///       monitorGroupName: ${name}
///   example:
///     type: alicloud:cms:EventRule
///     properties:
///       ruleName: ${name}
///       groupId: ${default.id}
///       silenceTime: 100
///       description: ${name}
///       status: ENABLED
///       eventPattern:
///         product: ecs
///         sqlFilter: example_value
///         nameLists:
///           - example_value
///         levelLists:
///           - CRITICAL
///         eventTypeLists:
///           - StatusNotification
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Event Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/eventRule:EventRule example <rule_name>
/// ```
class EventRule extends pulumi.CustomResource {
  /// The information about the alert contact groups that receive alert notifications. See `contact_parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> contactParameters;

  /// The description of the event-triggered alert rule.
  late final pulumi.Output<String?> description;

  /// Event mode, used to describe the trigger conditions for this event. See `event_pattern` below.
  late final pulumi.Output<EventRuleEventPattern> eventPattern;

  /// The information about the recipients in Function Compute. See `fc_parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> fcParameters;

  /// The ID of the application group to which the event-triggered alert rule belongs.
  late final pulumi.Output<String?> groupId;

  /// The information about the recipients in Message Service (MNS). See `mns_parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> mnsParameters;

  /// The parameters of API callback notification. See `open_api_parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> openApiParameters;

  /// The name of the event-triggered alert rule.
  late final pulumi.Output<String> ruleName;

  /// The silence time.
  late final pulumi.Output<int?> silenceTime;

  /// The information about the recipients in Simple Log Service. See `sls_parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> slsParameters;

  /// The status of the resource. Valid values: `ENABLED`, `DISABLED`.
  late final pulumi.Output<String> status;

  /// The information about the callback URLs that are used to receive alert notifications. See `webhook_parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> webhookParameters;

  /// Creates a new [EventRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventRule]. {@macro pulumi_cms_event_rule_event_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventRule(
    String name, {
    EventRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/eventRule:EventRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contactParameters = registerOutput<List<Map<String, dynamic>>?>(
      'contactParameters',
    );
    description = registerOutput<String?>('description');
    eventPattern = registerOutput<EventRuleEventPattern>('eventPattern');
    fcParameters = registerOutput<List<Map<String, dynamic>>?>('fcParameters');
    groupId = registerOutput<String?>('groupId');
    mnsParameters = registerOutput<List<Map<String, dynamic>>?>(
      'mnsParameters',
    );
    openApiParameters = registerOutput<List<Map<String, dynamic>>?>(
      'openApiParameters',
    );
    ruleName = registerOutput<String>('ruleName');
    silenceTime = registerOutput<int?>('silenceTime');
    slsParameters = registerOutput<List<Map<String, dynamic>>?>(
      'slsParameters',
    );
    status = registerOutput<String>('status');
    webhookParameters = registerOutput<List<Map<String, dynamic>>?>(
      'webhookParameters',
    );
  }

  /// Gets an existing [EventRule] resource's state with the given [name] and [id].
  static EventRule get(
    String name,
    pulumi.Input<String> id, {
    EventRuleState? state,
  }) {
    return EventRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cms/eventRule:EventRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    contactParameters = registerOutput<List<Map<String, dynamic>>?>(
      'contactParameters',
    );
    description = registerOutput<String?>('description');
    eventPattern = registerOutput<EventRuleEventPattern>('eventPattern');
    fcParameters = registerOutput<List<Map<String, dynamic>>?>('fcParameters');
    groupId = registerOutput<String?>('groupId');
    mnsParameters = registerOutput<List<Map<String, dynamic>>?>(
      'mnsParameters',
    );
    openApiParameters = registerOutput<List<Map<String, dynamic>>?>(
      'openApiParameters',
    );
    ruleName = registerOutput<String>('ruleName');
    silenceTime = registerOutput<int?>('silenceTime');
    slsParameters = registerOutput<List<Map<String, dynamic>>?>(
      'slsParameters',
    );
    status = registerOutput<String>('status');
    webhookParameters = registerOutput<List<Map<String, dynamic>>?>(
      'webhookParameters',
    );
  }
}
