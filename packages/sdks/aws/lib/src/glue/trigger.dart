import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_args.dart';
import 'trigger_predicate.dart';
import 'trigger_state.dart';

/// Manages a Glue Trigger resource.
///
/// ## Example Usage
///
/// ### Conditional Trigger
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
///     name: "example",
///     type: "CONDITIONAL",
///     actions: [{
///         jobName: example1.name,
///     }],
///     predicate: {
///         conditions: [{
///             jobName: example2.name,
///             state: "SUCCEEDED",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
///     name="example",
///     type="CONDITIONAL",
///     actions=[{
///         "job_name": example1["name"],
///     }],
///     predicate={
///         "conditions": [{
///             "job_name": example2["name"],
///             "state": "SUCCEEDED",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Trigger("example", new()
///     {
///         Name = "example",
///         Type = "CONDITIONAL",
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 JobName = example1.Name,
///             },
///         },
///         Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
///         {
///             Conditions = new[]
///             {
///                 new Aws.Glue.Inputs.TriggerPredicateConditionArgs
///                 {
///                     JobName = example2.Name,
///                     State = "SUCCEEDED",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("CONDITIONAL"),
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					JobName: pulumi.Any(example1.Name),
/// 				},
/// 			},
/// 			Predicate: &glue.TriggerPredicateArgs{
/// 				Conditions: glue.TriggerPredicateConditionArray{
/// 					&glue.TriggerPredicateConditionArgs{
/// 						JobName: pulumi.Any(example2.Name),
/// 						State:   pulumi.String("SUCCEEDED"),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
///         var example = new Trigger("example", TriggerArgs.builder()
///             .name("example")
///             .type("CONDITIONAL")
///             .actions(TriggerActionArgs.builder()
///                 .jobName(example1.name())
///                 .build())
///             .predicate(TriggerPredicateArgs.builder()
///                 .conditions(TriggerPredicateConditionArgs.builder()
///                     .jobName(example2.name())
///                     .state("SUCCEEDED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Trigger
///     properties:
///       name: example
///       type: CONDITIONAL
///       actions:
///         - jobName: ${example1.name}
///       predicate:
///         conditions:
///           - jobName: ${example2.name}
///             state: SUCCEEDED
/// ```
///
///
/// ### On-Demand Trigger
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
///     name: "example",
///     type: "ON_DEMAND",
///     actions: [{
///         jobName: exampleAwsGlueJob.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
///     name="example",
///     type="ON_DEMAND",
///     actions=[{
///         "job_name": example_aws_glue_job["name"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Trigger("example", new()
///     {
///         Name = "example",
///         Type = "ON_DEMAND",
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 JobName = exampleAwsGlueJob.Name,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("ON_DEMAND"),
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					JobName: pulumi.Any(exampleAwsGlueJob.Name),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
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
///         var example = new Trigger("example", TriggerArgs.builder()
///             .name("example")
///             .type("ON_DEMAND")
///             .actions(TriggerActionArgs.builder()
///                 .jobName(exampleAwsGlueJob.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Trigger
///     properties:
///       name: example
///       type: ON_DEMAND
///       actions:
///         - jobName: ${exampleAwsGlueJob.name}
/// ```
///
///
/// ### Scheduled Trigger
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
///     name: "example",
///     schedule: "cron(15 12 * * ? *)",
///     type: "SCHEDULED",
///     actions: [{
///         jobName: exampleAwsGlueJob.name,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
///     name="example",
///     schedule="cron(15 12 * * ? *)",
///     type="SCHEDULED",
///     actions=[{
///         "job_name": example_aws_glue_job["name"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Trigger("example", new()
///     {
///         Name = "example",
///         Schedule = "cron(15 12 * * ? *)",
///         Type = "SCHEDULED",
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 JobName = exampleAwsGlueJob.Name,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// 			Name:     pulumi.String("example"),
/// 			Schedule: pulumi.String("cron(15 12 * * ? *)"),
/// 			Type:     pulumi.String("SCHEDULED"),
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					JobName: pulumi.Any(exampleAwsGlueJob.Name),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
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
///         var example = new Trigger("example", TriggerArgs.builder()
///             .name("example")
///             .schedule("cron(15 12 * * ? *)")
///             .type("SCHEDULED")
///             .actions(TriggerActionArgs.builder()
///                 .jobName(exampleAwsGlueJob.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Trigger
///     properties:
///       name: example
///       schedule: cron(15 12 * * ? *)
///       type: SCHEDULED
///       actions:
///         - jobName: ${exampleAwsGlueJob.name}
/// ```
///
///
/// ### Conditional Trigger with Crawler Action
///
/// **Note:** Triggers can have both a crawler action and a crawler condition, just no example provided.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
///     name: "example",
///     type: "CONDITIONAL",
///     actions: [{
///         crawlerName: example1.name,
///     }],
///     predicate: {
///         conditions: [{
///             jobName: example2.name,
///             state: "SUCCEEDED",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
///     name="example",
///     type="CONDITIONAL",
///     actions=[{
///         "crawler_name": example1["name"],
///     }],
///     predicate={
///         "conditions": [{
///             "job_name": example2["name"],
///             "state": "SUCCEEDED",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Trigger("example", new()
///     {
///         Name = "example",
///         Type = "CONDITIONAL",
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 CrawlerName = example1.Name,
///             },
///         },
///         Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
///         {
///             Conditions = new[]
///             {
///                 new Aws.Glue.Inputs.TriggerPredicateConditionArgs
///                 {
///                     JobName = example2.Name,
///                     State = "SUCCEEDED",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("CONDITIONAL"),
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					CrawlerName: pulumi.Any(example1.Name),
/// 				},
/// 			},
/// 			Predicate: &glue.TriggerPredicateArgs{
/// 				Conditions: glue.TriggerPredicateConditionArray{
/// 					&glue.TriggerPredicateConditionArgs{
/// 						JobName: pulumi.Any(example2.Name),
/// 						State:   pulumi.String("SUCCEEDED"),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
///         var example = new Trigger("example", TriggerArgs.builder()
///             .name("example")
///             .type("CONDITIONAL")
///             .actions(TriggerActionArgs.builder()
///                 .crawlerName(example1.name())
///                 .build())
///             .predicate(TriggerPredicateArgs.builder()
///                 .conditions(TriggerPredicateConditionArgs.builder()
///                     .jobName(example2.name())
///                     .state("SUCCEEDED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Trigger
///     properties:
///       name: example
///       type: CONDITIONAL
///       actions:
///         - crawlerName: ${example1.name}
///       predicate:
///         conditions:
///           - jobName: ${example2.name}
///             state: SUCCEEDED
/// ```
///
///
/// ### Conditional Trigger with Crawler Condition
///
/// **Note:** Triggers can have both a crawler action and a crawler condition, just no example provided.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Trigger("example", {
///     name: "example",
///     type: "CONDITIONAL",
///     actions: [{
///         jobName: example1.name,
///     }],
///     predicate: {
///         conditions: [{
///             crawlerName: example2.name,
///             crawlState: "SUCCEEDED",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Trigger("example",
///     name="example",
///     type="CONDITIONAL",
///     actions=[{
///         "job_name": example1["name"],
///     }],
///     predicate={
///         "conditions": [{
///             "crawler_name": example2["name"],
///             "crawl_state": "SUCCEEDED",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Trigger("example", new()
///     {
///         Name = "example",
///         Type = "CONDITIONAL",
///         Actions = new[]
///         {
///             new Aws.Glue.Inputs.TriggerActionArgs
///             {
///                 JobName = example1.Name,
///             },
///         },
///         Predicate = new Aws.Glue.Inputs.TriggerPredicateArgs
///         {
///             Conditions = new[]
///             {
///                 new Aws.Glue.Inputs.TriggerPredicateConditionArgs
///                 {
///                     CrawlerName = example2.Name,
///                     CrawlState = "SUCCEEDED",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewTrigger(ctx, "example", &glue.TriggerArgs{
/// 			Name: pulumi.String("example"),
/// 			Type: pulumi.String("CONDITIONAL"),
/// 			Actions: glue.TriggerActionArray{
/// 				&glue.TriggerActionArgs{
/// 					JobName: pulumi.Any(example1.Name),
/// 				},
/// 			},
/// 			Predicate: &glue.TriggerPredicateArgs{
/// 				Conditions: glue.TriggerPredicateConditionArray{
/// 					&glue.TriggerPredicateConditionArgs{
/// 						CrawlerName: pulumi.Any(example2.Name),
/// 						CrawlState:  pulumi.String("SUCCEEDED"),
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
/// import com.pulumi.aws.glue.Trigger;
/// import com.pulumi.aws.glue.TriggerArgs;
/// import com.pulumi.aws.glue.inputs.TriggerActionArgs;
/// import com.pulumi.aws.glue.inputs.TriggerPredicateArgs;
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
///         var example = new Trigger("example", TriggerArgs.builder()
///             .name("example")
///             .type("CONDITIONAL")
///             .actions(TriggerActionArgs.builder()
///                 .jobName(example1.name())
///                 .build())
///             .predicate(TriggerPredicateArgs.builder()
///                 .conditions(TriggerPredicateConditionArgs.builder()
///                     .crawlerName(example2.name())
///                     .crawlState("SUCCEEDED")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Trigger
///     properties:
///       name: example
///       type: CONDITIONAL
///       actions:
///         - jobName: ${example1.name}
///       predicate:
///         conditions:
///           - crawlerName: ${example2.name}
///             crawlState: SUCCEEDED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Triggers using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/trigger:Trigger MyTrigger MyTrigger
/// ```
class Trigger extends pulumi.CustomResource {
  /// List of actions initiated by this trigger when it fires. See Actions Below.
  late final pulumi.Output<List<Map<String, dynamic>>> actions;

  /// Amazon Resource Name (ARN) of Glue Trigger
  late final pulumi.Output<String> arn;

  /// A description of the new trigger.
  late final pulumi.Output<String?> description;

  /// Start the trigger. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.
  late final pulumi.Output<List<Map<String, dynamic>>?> eventBatchingConditions;

  /// The name of the trigger.
  late final pulumi.Output<String> name;

  /// A predicate to specify when the new trigger should fire. Required when trigger type is `CONDITIONAL`. See Predicate Below.
  late final pulumi.Output<TriggerPredicate?> predicate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A cron expression used to specify the schedule. [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html)
  late final pulumi.Output<String?> schedule;

  /// Set to true to start `SCHEDULED` and `CONDITIONAL` triggers when created. True is not supported for `ON_DEMAND` triggers.
  late final pulumi.Output<bool?> startOnCreation;

  /// The current state of the trigger.
  late final pulumi.Output<String> state;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The type of trigger. Valid values are `CONDITIONAL`, `EVENT`, `ON_DEMAND`, and `SCHEDULED`.
  late final pulumi.Output<String> type;

  /// A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (`ON_DEMAND` or `SCHEDULED` type) and can contain multiple additional `CONDITIONAL` triggers.
  late final pulumi.Output<String?> workflowName;

  /// Creates a new [Trigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trigger]. {@macro pulumi_glue_trigger_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trigger(
    String name, {
    TriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/trigger:Trigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    eventBatchingConditions = registerOutput<List<Map<String, dynamic>>?>(
      'eventBatchingConditions',
    );
    this.name = registerOutput<String>('name');
    predicate = registerOutput<TriggerPredicate?>('predicate');
    region = registerOutput<String>('region');
    schedule = registerOutput<String?>('schedule');
    startOnCreation = registerOutput<bool?>('startOnCreation');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    workflowName = registerOutput<String?>('workflowName');
  }

  /// Gets an existing [Trigger] resource's state with the given [name] and [id].
  static Trigger get(
    String name,
    pulumi.Input<String> id, {
    TriggerState? state,
  }) {
    return Trigger._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Trigger._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/trigger:Trigger',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    actions = registerOutput<List<Map<String, dynamic>>>('actions');
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    eventBatchingConditions = registerOutput<List<Map<String, dynamic>>?>(
      'eventBatchingConditions',
    );
    this.name = registerOutput<String>('name');
    predicate = registerOutput<TriggerPredicate?>('predicate');
    region = registerOutput<String>('region');
    schedule = registerOutput<String?>('schedule');
    startOnCreation = registerOutput<bool?>('startOnCreation');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
    workflowName = registerOutput<String?>('workflowName');
  }
}
