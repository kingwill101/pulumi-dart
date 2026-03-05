import 'package:pulumi/pulumi.dart' as pulumi;
import 'check_config_args.dart';
import 'check_config_state.dart';

/// Provides a Threat Detection Check Config resource.
///
/// CSPM Risk Overview Policy Management.
///
/// For information about Threat Detection Check Config and how to use it, see [What is Check Config](https://next.api.alibabacloud.com/document/Sas/2018-12-03/ChangeCheckConfig).
///
/// &gt; **NOTE:** This is a singleton resource. By default, the configuration will be cleared when it is created.
///
/// &gt; **NOTE:** Available since v1.267.0.
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
/// const _default = new alicloud.threatdetection.CheckConfig("default", {
///     endTime: 18,
///     enableAutoCheck: true,
///     vendors: ["ALIYUN"],
///     cycleDays: [
///         7,
///         1,
///         2,
///     ],
///     enableAddCheck: true,
///     startTime: 12,
///     configure: "not",
///     systemConfig: false,
///     selectedChecks: [{
///         checkId: 370,
///         sectionId: 515,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.CheckConfig("default",
///     end_time=18,
///     enable_auto_check=True,
///     vendors=["ALIYUN"],
///     cycle_days=[
///         7,
///         1,
///         2,
///     ],
///     enable_add_check=True,
///     start_time=12,
///     configure="not",
///     system_config=False,
///     selected_checks=[{
///         "check_id": 370,
///         "section_id": 515,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ThreatDetection.CheckConfig("default", new()
///     {
///         EndTime = 18,
///         EnableAutoCheck = true,
///         Vendors = new[]
///         {
///             "ALIYUN",
///         },
///         CycleDays = new[]
///         {
///             7,
///             1,
///             2,
///         },
///         EnableAddCheck = true,
///         StartTime = 12,
///         Configure = "not",
///         SystemConfig = false,
///         SelectedChecks = new[]
///         {
///             new AliCloud.ThreatDetection.Inputs.CheckConfigSelectedCheckArgs
///             {
///                 CheckId = 370,
///                 SectionId = 515,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := threatdetection.NewCheckConfig(ctx, "default", &threatdetection.CheckConfigArgs{
/// 			EndTime:         pulumi.Int(18),
/// 			EnableAutoCheck: pulumi.Bool(true),
/// 			Vendors: pulumi.StringArray{
/// 				pulumi.String("ALIYUN"),
/// 			},
/// 			CycleDays: pulumi.IntArray{
/// 				pulumi.Int(7),
/// 				pulumi.Int(1),
/// 				pulumi.Int(2),
/// 			},
/// 			EnableAddCheck: pulumi.Bool(true),
/// 			StartTime:      pulumi.Int(12),
/// 			Configure:      pulumi.String("not"),
/// 			SystemConfig:   pulumi.Bool(false),
/// 			SelectedChecks: threatdetection.CheckConfigSelectedCheckArray{
/// 				&threatdetection.CheckConfigSelectedCheckArgs{
/// 					CheckId:   pulumi.Int(370),
/// 					SectionId: pulumi.Int(515),
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
/// import com.pulumi.alicloud.threatdetection.CheckConfig;
/// import com.pulumi.alicloud.threatdetection.CheckConfigArgs;
/// import com.pulumi.alicloud.threatdetection.inputs.CheckConfigSelectedCheckArgs;
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
///         var default_ = new CheckConfig("default", CheckConfigArgs.builder()
///             .endTime(18)
///             .enableAutoCheck(true)
///             .vendors("ALIYUN")
///             .cycleDays(
///                 7,
///                 1,
///                 2)
///             .enableAddCheck(true)
///             .startTime(12)
///             .configure("not")
///             .systemConfig(false)
///             .selectedChecks(CheckConfigSelectedCheckArgs.builder()
///                 .checkId(370)
///                 .sectionId(515)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:threatdetection:CheckConfig
///     properties:
///       endTime: '18'
///       enableAutoCheck: true
///       vendors:
///         - ALIYUN
///       cycleDays:
///         - '7'
///         - '1'
///         - '2'
///       enableAddCheck: true
///       startTime: '12'
///       configure: not
///       systemConfig: false
///       selectedChecks:
///         - checkId: 370
///           sectionId: 515
/// ```
///
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Check Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/checkConfig:CheckConfig example
/// ```
class CheckConfig extends pulumi.CustomResource {
  /// The configuration of the check item. Valid value:
  late final pulumi.Output<String?> configure;
  /// Cycle detection time.
  late final pulumi.Output<List<int>?> cycleDays;
  /// Whether to check by default when there are new check items in the selected regulation. Values available:
  /// - **true:** On
  /// - **false:** off
  late final pulumi.Output<bool?> enableAddCheck;
  /// Whether automatic cycle detection is enabled. Values available:
  /// - **true:** On
  /// - **false:** off
  late final pulumi.Output<bool?> enableAutoCheck;
  /// Check the end time of the time period, which indicates the time of day. The start time and end time of the query can only be selected in the following time range.
  /// - **0~6** When the start time is 0, the end time must be set to 6 o'clock on the current day.
  /// - **6~12** When the start time is 6, the end time needs to be set to 12:00 on the current day.
  /// - **12~18** When the start time is 12, the end time needs to be set to 18 o'clock on the current day.
  /// - **18~24** When the start time is 18, the end time needs to be set to 24 hours of the current day.
  late final pulumi.Output<int?> endTime;
  /// The check items selected in the policy. See `selected_checks` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> selectedChecks;
  /// The start time of the check. The value specifies a point in time in a day.
  late final pulumi.Output<int?> startTime;
  /// Specifies whether to use the configuration automatically generated by the system. Valid values:
  late final pulumi.Output<bool?> systemConfig;
  late final pulumi.Output<List<String>?> vendors;

  /// Creates a new [CheckConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CheckConfig]. {@macro pulumi_threatdetection_check_config_check_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CheckConfig(
    String name, {
    CheckConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/checkConfig:CheckConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configure = registerOutput<String?>('configure');
    cycleDays = registerOutput<List<int>?>('cycleDays');
    enableAddCheck = registerOutput<bool?>('enableAddCheck');
    enableAutoCheck = registerOutput<bool?>('enableAutoCheck');
    endTime = registerOutput<int?>('endTime');
    selectedChecks = registerOutput<List<Map<String, dynamic>>?>('selectedChecks');
    startTime = registerOutput<int?>('startTime');
    systemConfig = registerOutput<bool?>('systemConfig');
    vendors = registerOutput<List<String>?>('vendors');
  }

  /// Gets an existing [CheckConfig] resource's state with the given [name] and [id].
  static CheckConfig get(
    String name,
    pulumi.Input<String> id, {
    CheckConfigState? state,
  }) {
    return CheckConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CheckConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:threatdetection/checkConfig:CheckConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configure = registerOutput<String?>('configure');
    cycleDays = registerOutput<List<int>?>('cycleDays');
    enableAddCheck = registerOutput<bool?>('enableAddCheck');
    enableAutoCheck = registerOutput<bool?>('enableAutoCheck');
    endTime = registerOutput<int?>('endTime');
    selectedChecks = registerOutput<List<Map<String, dynamic>>?>('selectedChecks');
    startTime = registerOutput<int?>('startTime');
    systemConfig = registerOutput<bool?>('systemConfig');
    vendors = registerOutput<List<String>?>('vendors');
  }
}
