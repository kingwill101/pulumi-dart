import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_state.dart';

/// Provides a Serverless Workflow Schedule resource.
///
/// For information about Serverless Workflow Schedule and how to use it, see [What is Schedule](https://www.alibabacloud.com/help/en/doc-detail/168934.htm).
///
/// &gt; **NOTE:** Available since v1.105.0.
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
/// const example = new alicloud.fnf.Flow("example", {
///     definition: `  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// `,
///     description: "tf-exampleFnFFlow983041",
///     name: "tf-exampleSchedule",
///     type: "FDL",
/// });
/// const exampleSchedule = new alicloud.fnf.Schedule("example", {
///     cronExpression: "30 9 * * * *",
///     description: "tf-exampleFnFSchedule983041",
///     enable: true,
///     flowName: example.name,
///     payload: "{\"tf-example\": \"example success\"}",
///     scheduleName: "tf-exampleFnFSchedule983041",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.fnf.Flow("example",
///     definition="""  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// """,
///     description="tf-exampleFnFFlow983041",
///     name="tf-exampleSchedule",
///     type="FDL")
/// example_schedule = alicloud.fnf.Schedule("example",
///     cron_expression="30 9 * * * *",
///     description="tf-exampleFnFSchedule983041",
///     enable=True,
///     flow_name=example.name,
///     payload="{\"tf-example\": \"example success\"}",
///     schedule_name="tf-exampleFnFSchedule983041")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.FNF.Flow("example", new()
///     {
///         Definition = @"  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// ",
///         Description = "tf-exampleFnFFlow983041",
///         Name = "tf-exampleSchedule",
///         Type = "FDL",
///     });
///
///     var exampleSchedule = new AliCloud.FNF.Schedule("example", new()
///     {
///         CronExpression = "30 9 * * * *",
///         Description = "tf-exampleFnFSchedule983041",
///         Enable = true,
///         FlowName = example.Name,
///         Payload = "{\"tf-example\": \"example success\"}",
///         ScheduleName = "tf-exampleFnFSchedule983041",
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
/// 		example, err := fnf.NewFlow(ctx, "example", &fnf.FlowArgs{
/// 			Definition: pulumi.String(`  version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
/// `),
/// 			Description: pulumi.String("tf-exampleFnFFlow983041"),
/// 			Name:        pulumi.String("tf-exampleSchedule"),
/// 			Type:        pulumi.String("FDL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fnf.NewSchedule(ctx, "example", &fnf.ScheduleArgs{
/// 			CronExpression: pulumi.String("30 9 * * * *"),
/// 			Description:    pulumi.String("tf-exampleFnFSchedule983041"),
/// 			Enable:         pulumi.Bool(true),
/// 			FlowName:       example.Name,
/// 			Payload:        pulumi.String("{\"tf-example\": \"example success\"}"),
/// 			ScheduleName:   pulumi.String("tf-exampleFnFSchedule983041"),
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
/// import com.pulumi.alicloud.fnf.Flow;
/// import com.pulumi.alicloud.fnf.FlowArgs;
/// import com.pulumi.alicloud.fnf.Schedule;
/// import com.pulumi.alicloud.fnf.ScheduleArgs;
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
///         var example = new Flow("example", FlowArgs.builder()
///             .definition("""
///   version: v1beta1
///   type: flow
///   steps:
///     - type: pass
///       name: helloworld
///             """)
///             .description("tf-exampleFnFFlow983041")
///             .name("tf-exampleSchedule")
///             .type("FDL")
///             .build());
///
///         var exampleSchedule = new Schedule("exampleSchedule", ScheduleArgs.builder()
///             .cronExpression("30 9 * * * *")
///             .description("tf-exampleFnFSchedule983041")
///             .enable(true)
///             .flowName(example.name())
///             .payload("{\"tf-example\": \"example success\"}")
///             .scheduleName("tf-exampleFnFSchedule983041")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:fnf:Flow
///     properties:
///       definition: |2
///           version: v1beta1
///           type: flow
///           steps:
///             - type: pass
///               name: helloworld
///       description: tf-exampleFnFFlow983041
///       name: tf-exampleSchedule
///       type: FDL
///   exampleSchedule:
///     type: alicloud:fnf:Schedule
///     name: example
///     properties:
///       cronExpression: 30 9 * * * *
///       description: tf-exampleFnFSchedule983041
///       enable: 'true'
///       flowName: ${example.name}
///       payload: '{"tf-example": "example success"}'
///       scheduleName: tf-exampleFnFSchedule983041
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Serverless Workflow Schedule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fnf/schedule:Schedule example <schedule_name>:<flow_name>
/// ```
class Schedule extends pulumi.CustomResource {
  /// The CRON expression of the time-based schedule to be created.
  late final pulumi.Output<String> cronExpression;

  /// The description of the time-based schedule to be created.
  late final pulumi.Output<String?> description;

  /// Specifies whether to enable the time-based schedule you want to create. Valid values: `false`, `true`.
  late final pulumi.Output<bool?> enable;

  /// The name of the flow bound to the time-based schedule you want to create.
  late final pulumi.Output<String> flowName;

  /// The time when the time-based schedule was last updated.
  late final pulumi.Output<String> lastModifiedTime;

  /// The trigger message of the time-based schedule to be created. It must be in JSON object format.
  late final pulumi.Output<String?> payload;

  /// The ID of the time-based schedule.
  late final pulumi.Output<String> scheduleId;

  /// The name of the time-based schedule to be created.
  late final pulumi.Output<String> scheduleName;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_fnf_schedule_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:fnf/schedule:Schedule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cronExpression = registerOutput<String>('cronExpression');
    description = registerOutput<String?>('description');
    enable = registerOutput<bool?>('enable');
    flowName = registerOutput<String>('flowName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    payload = registerOutput<String?>('payload');
    scheduleId = registerOutput<String>('scheduleId');
    scheduleName = registerOutput<String>('scheduleName');
  }

  /// Gets an existing [Schedule] resource's state with the given [name] and [id].
  static Schedule get(
    String name,
    pulumi.Input<String> id, {
    ScheduleState? state,
  }) {
    return Schedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:fnf/schedule:Schedule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cronExpression = registerOutput<String>('cronExpression');
    description = registerOutput<String?>('description');
    enable = registerOutput<bool?>('enable');
    flowName = registerOutput<String>('flowName');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    payload = registerOutput<String?>('payload');
    scheduleId = registerOutput<String>('scheduleId');
    scheduleName = registerOutput<String>('scheduleName');
  }
}
