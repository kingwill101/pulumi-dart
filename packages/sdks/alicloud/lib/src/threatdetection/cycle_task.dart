import 'package:pulumi/pulumi.dart' as pulumi;
import 'cycle_task_args.dart';
import 'cycle_task_state.dart';

/// Provides a Threat Detection Cycle Task resource.
///
/// Configure periodic tasks in Security Center.
///
/// For information about Threat Detection Cycle Task and how to use it, see [What is Cycle Task](https://next.api.alibabacloud.com/document/Sas/2018-12-03/CreateCycleTask).
///
/// &gt; **NOTE:** Available since v1.253.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.threatdetection.CycleTask("default", {
///     targetEndTime: 6,
///     taskType: "VIRUS_VUL_SCHEDULE_SCAN",
///     targetStartTime: 0,
///     source: "console_batch",
///     taskName: "VIRUS_VUL_SCHEDULE_SCAN",
///     firstDateStr: 1650556800000,
///     periodUnit: "day",
///     intervalPeriod: 7,
///     param: JSON.stringify({
///         targetInfo: [
///             {
///                 type: "groupId",
///                 name: "TI HOST",
///                 target: 10597,
///             },
///             {
///                 type: "groupId",
///                 name: "expense HOST",
///                 target: 10597,
///             },
///         ],
///     }),
///     enable: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.threatdetection.CycleTask("default",
///     target_end_time=6,
///     task_type="VIRUS_VUL_SCHEDULE_SCAN",
///     target_start_time=0,
///     source="console_batch",
///     task_name="VIRUS_VUL_SCHEDULE_SCAN",
///     first_date_str=1650556800000,
///     period_unit="day",
///     interval_period=7,
///     param=json.dumps({
///         "targetInfo": [
///             {
///                 "type": "groupId",
///                 "name": "TI HOST",
///                 "target": 10597,
///             },
///             {
///                 "type": "groupId",
///                 "name": "expense HOST",
///                 "target": 10597,
///             },
///         ],
///     }),
///     enable=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ThreatDetection.CycleTask("default", new()
///     {
///         TargetEndTime = 6,
///         TaskType = "VIRUS_VUL_SCHEDULE_SCAN",
///         TargetStartTime = 0,
///         Source = "console_batch",
///         TaskName = "VIRUS_VUL_SCHEDULE_SCAN",
///         FirstDateStr = 1650556800000,
///         PeriodUnit = "day",
///         IntervalPeriod = 7,
///         Param = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["targetInfo"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = "groupId",
///                     ["name"] = "TI HOST",
///                     ["target"] = 10597,
///                 },
///                 new Dictionary<string, object?>
///                 {
///                     ["type"] = "groupId",
///                     ["name"] = "expense HOST",
///                     ["target"] = 10597,
///                 },
///             },
///         }),
///         Enable = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"targetInfo": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"type":   "groupId",
/// 					"name":   "TI HOST",
/// 					"target": 10597,
/// 				},
/// 				map[string]interface{}{
/// 					"type":   "groupId",
/// 					"name":   "expense HOST",
/// 					"target": 10597,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = threatdetection.NewCycleTask(ctx, "default", &threatdetection.CycleTaskArgs{
/// 			TargetEndTime:   pulumi.Int(6),
/// 			TaskType:        pulumi.String("VIRUS_VUL_SCHEDULE_SCAN"),
/// 			TargetStartTime: pulumi.Int(0),
/// 			Source:          pulumi.String("console_batch"),
/// 			TaskName:        pulumi.String("VIRUS_VUL_SCHEDULE_SCAN"),
/// 			FirstDateStr:    pulumi.Int(1650556800000),
/// 			PeriodUnit:      pulumi.String("day"),
/// 			IntervalPeriod:  pulumi.Int(7),
/// 			Param:           pulumi.String(json0),
/// 			Enable:          pulumi.Int(1),
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
/// import com.pulumi.alicloud.threatdetection.CycleTask;
/// import com.pulumi.alicloud.threatdetection.CycleTaskArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new CycleTask("default", CycleTaskArgs.builder()
///             .targetEndTime(6)
///             .taskType("VIRUS_VUL_SCHEDULE_SCAN")
///             .targetStartTime(0)
///             .source("console_batch")
///             .taskName("VIRUS_VUL_SCHEDULE_SCAN")
///             .firstDateStr(1650556800000)
///             .periodUnit("day")
///             .intervalPeriod(7)
///             .param(serializeJson(
///                 jsonObject(
///                     jsonProperty("targetInfo", jsonArray(
///                         jsonObject(
///                             jsonProperty("type", "groupId"),
///                             jsonProperty("name", "TI HOST"),
///                             jsonProperty("target", 10597)
///                         ),
///                         jsonObject(
///                             jsonProperty("type", "groupId"),
///                             jsonProperty("name", "expense HOST"),
///                             jsonProperty("target", 10597)
///                         )
///                     ))
///                 )))
///             .enable(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:threatdetection:CycleTask
///     properties:
///       targetEndTime: '6'
///       taskType: VIRUS_VUL_SCHEDULE_SCAN
///       targetStartTime: '0'
///       source: console_batch
///       taskName: VIRUS_VUL_SCHEDULE_SCAN
///       firstDateStr: '1650556800000'
///       periodUnit: day
///       intervalPeriod: '7'
///       param:
///         fn::toJSON:
///           targetInfo:
///             - type: groupId
///               name: TI HOST
///               target: 10597
///             - type: groupId
///               name: expense HOST
///               target: 10597
///       enable: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Cycle Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/cycleTask:CycleTask example <id>
/// ```
class CycleTask extends pulumi.CustomResource {
  /// Whether to enable. Value:
  late final pulumi.Output<int> enable;
  /// First execution time.
  late final pulumi.Output<int> firstDateStr;
  /// Interval period.
  late final pulumi.Output<int> intervalPeriod;
  /// Extended information field.
  late final pulumi.Output<String?> param;
  /// Unit of scan cycle, value:
  late final pulumi.Output<String> periodUnit;
  /// Added the source of the task.
  late final pulumi.Output<String?> source;
  /// Task end time (hours).
  late final pulumi.Output<int> targetEndTime;
  /// Task start time (hours).
  late final pulumi.Output<int> targetStartTime;
  /// The task name.
  /// - **VIRUS_VUL_SCHEDULE_SCAN**: scans for viruses.
  /// - **IMAGE_SCAN**: Image scan.
  /// - **EMG_VUL_SCHEDULE_SCAN**: Emergency vulnerability scanning.
  late final pulumi.Output<String> taskName;
  /// The task type.
  /// - **VIRUS_VUL_SCHEDULE_SCAN**: scans for viruses.
  /// - **IMAGE_SCAN**: Image scan.
  /// - **EMG_VUL_SCHEDULE_SCAN**: Emergency vulnerability scanning.
  late final pulumi.Output<String> taskType;

  /// Creates a new [CycleTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CycleTask]. {@macro pulumi_threatdetection_cycle_task_cycle_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CycleTask(
    String name, {
    CycleTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/cycleTask:CycleTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enable = registerOutput<int>('enable');
    firstDateStr = registerOutput<int>('firstDateStr');
    intervalPeriod = registerOutput<int>('intervalPeriod');
    param = registerOutput<String?>('param');
    periodUnit = registerOutput<String>('periodUnit');
    source = registerOutput<String?>('source');
    targetEndTime = registerOutput<int>('targetEndTime');
    targetStartTime = registerOutput<int>('targetStartTime');
    taskName = registerOutput<String>('taskName');
    taskType = registerOutput<String>('taskType');
  }

  /// Gets an existing [CycleTask] resource's state with the given [name] and [id].
  static CycleTask get(
    String name,
    pulumi.Input<String> id, {
    CycleTaskState? state,
  }) {
    return CycleTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CycleTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/cycleTask:CycleTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enable = registerOutput<int>('enable');
    firstDateStr = registerOutput<int>('firstDateStr');
    intervalPeriod = registerOutput<int>('intervalPeriod');
    param = registerOutput<String?>('param');
    periodUnit = registerOutput<String>('periodUnit');
    source = registerOutput<String?>('source');
    targetEndTime = registerOutput<int>('targetEndTime');
    targetStartTime = registerOutput<int>('targetStartTime');
    taskName = registerOutput<String>('taskName');
    taskType = registerOutput<String>('taskType');
  }
}
