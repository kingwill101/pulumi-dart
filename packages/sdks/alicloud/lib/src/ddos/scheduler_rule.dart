import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduler_rule_args.dart';
import 'scheduler_rule_state.dart';

/// Provides a DdosCoo Scheduler Rule resource. For information about DdosCoo Scheduler Rule and how to use it, see[What is DdosCoo Scheduler Rule](https://www.alibabacloud.com/help/en/ddos-protection/latest/api-ddoscoo-2020-01-01-createschedulerrule).
///
/// &gt; **NOTE:** Available since v1.86.0.
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
/// const example = new alicloud.ddos.SchedulerRule("example", {
///     ruleName: name,
///     ruleType: 3,
///     rules: [
///         {
///             priority: 100,
///             regionId: "cn-hangzhou",
///             type: "A",
///             value: "127.0.0.1",
///             valueType: 3,
///         },
///         {
///             priority: 50,
///             regionId: "cn-hangzhou",
///             type: "A",
///             value: "127.0.0.0",
///             valueType: 1,
///         },
///     ],
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
/// example = alicloud.ddos.SchedulerRule("example",
///     rule_name=name,
///     rule_type=3,
///     rules=[
///         {
///             "priority": 100,
///             "region_id": "cn-hangzhou",
///             "type": "A",
///             "value": "127.0.0.1",
///             "value_type": 3,
///         },
///         {
///             "priority": 50,
///             "region_id": "cn-hangzhou",
///             "type": "A",
///             "value": "127.0.0.0",
///             "value_type": 1,
///         },
///     ])
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
///     var example = new AliCloud.Ddos.SchedulerRule("example", new()
///     {
///         RuleName = name,
///         RuleType = 3,
///         Rules = new[]
///         {
///             new AliCloud.Ddos.Inputs.SchedulerRuleRuleArgs
///             {
///                 Priority = 100,
///                 RegionId = "cn-hangzhou",
///                 Type = "A",
///                 Value = "127.0.0.1",
///                 ValueType = 3,
///             },
///             new AliCloud.Ddos.Inputs.SchedulerRuleRuleArgs
///             {
///                 Priority = 50,
///                 RegionId = "cn-hangzhou",
///                 Type = "A",
///                 Value = "127.0.0.0",
///                 ValueType = 1,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
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
/// 		_, err := ddos.NewSchedulerRule(ctx, "example", &ddos.SchedulerRuleArgs{
/// 			RuleName: pulumi.String(name),
/// 			RuleType: pulumi.Int(3),
/// 			Rules: ddos.SchedulerRuleRuleArray{
/// 				&ddos.SchedulerRuleRuleArgs{
/// 					Priority:  pulumi.Int(100),
/// 					RegionId:  pulumi.String("cn-hangzhou"),
/// 					Type:      pulumi.String("A"),
/// 					Value:     pulumi.String("127.0.0.1"),
/// 					ValueType: pulumi.Int(3),
/// 				},
/// 				&ddos.SchedulerRuleRuleArgs{
/// 					Priority:  pulumi.Int(50),
/// 					RegionId:  pulumi.String("cn-hangzhou"),
/// 					Type:      pulumi.String("A"),
/// 					Value:     pulumi.String("127.0.0.0"),
/// 					ValueType: pulumi.Int(1),
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
/// import com.pulumi.alicloud.ddos.SchedulerRule;
/// import com.pulumi.alicloud.ddos.SchedulerRuleArgs;
/// import com.pulumi.alicloud.ddos.inputs.SchedulerRuleRuleArgs;
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
///         var example = new SchedulerRule("example", SchedulerRuleArgs.builder()
///             .ruleName(name)
///             .ruleType(3)
///             .rules(
///                 SchedulerRuleRuleArgs.builder()
///                     .priority(100)
///                     .regionId("cn-hangzhou")
///                     .type("A")
///                     .value("127.0.0.1")
///                     .valueType(3)
///                     .build(),
///                 SchedulerRuleRuleArgs.builder()
///                     .priority(50)
///                     .regionId("cn-hangzhou")
///                     .type("A")
///                     .value("127.0.0.0")
///                     .valueType(1)
///                     .build())
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
///   example:
///     type: alicloud:ddos:SchedulerRule
///     properties:
///       ruleName: ${name}
///       ruleType: 3
///       rules:
///         - priority: 100
///           regionId: cn-hangzhou
///           type: A
///           value: 127.0.0.1
///           valueType: 3
///         - priority: 50
///           regionId: cn-hangzhou
///           type: A
///           value: 127.0.0.0
///           valueType: 1
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DdosCoo Scheduler Rule can be imported using the id or the rule name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/schedulerRule:SchedulerRule example fbb20dc77e8fc******
/// ```
class SchedulerRule extends pulumi.CustomResource {
  /// The cname is the traffic scheduler corresponding to rules.
  late final pulumi.Output<String> cname;

  /// The scheduling rule for the Global Accelerator instance that interacts with Anti-DDoS Pro or Anti-DDoS Premium.
  late final pulumi.Output<String?> param;

  /// The ID of the resource group to which the anti-DDoS pro instance belongs in resource management. By default, no value is specified, indicating that the domains in the default resource group are listed.
  late final pulumi.Output<String?> resourceGroupId;

  /// The name of the rule.
  late final pulumi.Output<String> ruleName;

  /// The rule type. Valid values:
  /// `2`: tiered protection.
  /// `3`: globalization acceleration.
  /// `6`: Cloud product interaction.
  late final pulumi.Output<int> ruleType;

  /// The information about the scheduling rules. See `rules` below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;

  /// Creates a new [SchedulerRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchedulerRule]. {@macro pulumi_ddos_scheduler_rule_scheduler_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchedulerRule(
    String name, {
    SchedulerRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/schedulerRule:SchedulerRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cname = registerOutput<String>('cname');
    param = registerOutput<String?>('param');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    ruleName = registerOutput<String>('ruleName');
    ruleType = registerOutput<int>('ruleType');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
  }

  /// Gets an existing [SchedulerRule] resource's state with the given [name] and [id].
  static SchedulerRule get(
    String name,
    pulumi.Input<String> id, {
    SchedulerRuleState? state,
  }) {
    return SchedulerRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SchedulerRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ddos/schedulerRule:SchedulerRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cname = registerOutput<String>('cname');
    param = registerOutput<String?>('param');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    ruleName = registerOutput<String>('ruleName');
    ruleType = registerOutput<int>('ruleType');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
  }
}
