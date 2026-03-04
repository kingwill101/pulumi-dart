import 'package:pulumi/pulumi.dart' as pulumi;
import 'baseline_strategy_args.dart';
import 'baseline_strategy_state.dart';

/// Provides a Threat Detection Baseline Strategy resource.
///
/// For information about Threat Detection Baseline Strategy and how to use it, see [What is Baseline Strategy](https://www.alibabacloud.com/help/en/security-center/latest/api-sas-2018-12-03-modifystrategy).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const _default = new alicloud.threatdetection.BaselineStrategy("default", {
///     customType: "custom",
///     endTime: "08:00:00",
///     baselineStrategyName: "apispec",
///     cycleDays: 3,
///     targetType: "groupId",
///     startTime: "05:00:00",
///     riskSubTypeName: "hc_exploit_redis",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.threatdetection.BaselineStrategy("default",
///     custom_type="custom",
///     end_time="08:00:00",
///     baseline_strategy_name="apispec",
///     cycle_days=3,
///     target_type="groupId",
///     start_time="05:00:00",
///     risk_sub_type_name="hc_exploit_redis")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ThreatDetection.BaselineStrategy("default", new()
///     {
///         CustomType = "custom",
///         EndTime = "08:00:00",
///         BaselineStrategyName = "apispec",
///         CycleDays = 3,
///         TargetType = "groupId",
///         StartTime = "05:00:00",
///         RiskSubTypeName = "hc_exploit_redis",
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
/// 		_, err := threatdetection.NewBaselineStrategy(ctx, "default", &threatdetection.BaselineStrategyArgs{
/// 			CustomType:           pulumi.String("custom"),
/// 			EndTime:              pulumi.String("08:00:00"),
/// 			BaselineStrategyName: pulumi.String("apispec"),
/// 			CycleDays:            pulumi.Int(3),
/// 			TargetType:           pulumi.String("groupId"),
/// 			StartTime:            pulumi.String("05:00:00"),
/// 			RiskSubTypeName:      pulumi.String("hc_exploit_redis"),
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
/// import com.pulumi.alicloud.threatdetection.BaselineStrategy;
/// import com.pulumi.alicloud.threatdetection.BaselineStrategyArgs;
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
///         var default_ = new BaselineStrategy("default", BaselineStrategyArgs.builder()
///             .customType("custom")
///             .endTime("08:00:00")
///             .baselineStrategyName("apispec")
///             .cycleDays(3)
///             .targetType("groupId")
///             .startTime("05:00:00")
///             .riskSubTypeName("hc_exploit_redis")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:threatdetection:BaselineStrategy
///     properties:
///       customType: custom
///       endTime: 08:00:00
///       baselineStrategyName: apispec
///       cycleDays: 3
///       targetType: groupId
///       startTime: 05:00:00
///       riskSubTypeName: hc_exploit_redis
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Baseline Strategy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/baselineStrategy:BaselineStrategy example <id>
/// ```
class BaselineStrategy extends pulumi.CustomResource {
  /// The ID of the baseline check policy.
  late final pulumi.Output<String> baselineStrategyId;

  /// Policy name.
  late final pulumi.Output<String> baselineStrategyName;

  /// The type of policy. Value:
  /// * **common**: standard policy
  /// * **custom**: custom policy
  late final pulumi.Output<String> customType;

  /// The detection period of the policy.
  late final pulumi.Output<int> cycleDays;

  /// The detection period of the policy. Value:
  /// * **0**: 0:00~06:00
  /// * **6**: 6:00~12:00
  /// * **12**: 12:00~18:00
  /// * **18**: 18:00~24:00
  late final pulumi.Output<int> cycleStartTime;

  /// The baseline check policy execution end time.
  late final pulumi.Output<String> endTime;

  /// Detection item subtype.
  late final pulumi.Output<String> riskSubTypeName;

  /// The baseline check policy start time.
  late final pulumi.Output<String> startTime;

  /// The method of adding assets that take effect from the policy. Value:
  /// * **groupId**: Added by asset group.
  /// * **uuid**: Add by single asset.
  late final pulumi.Output<String> targetType;

  /// Creates a new [BaselineStrategy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BaselineStrategy]. {@macro pulumi_threatdetection_baseline_strategy_baseline_strategy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BaselineStrategy(
    String name, {
    BaselineStrategyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/baselineStrategy:BaselineStrategy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    baselineStrategyId = registerOutput<String>('baselineStrategyId');
    baselineStrategyName = registerOutput<String>('baselineStrategyName');
    customType = registerOutput<String>('customType');
    cycleDays = registerOutput<int>('cycleDays');
    cycleStartTime = registerOutput<int>('cycleStartTime');
    endTime = registerOutput<String>('endTime');
    riskSubTypeName = registerOutput<String>('riskSubTypeName');
    startTime = registerOutput<String>('startTime');
    targetType = registerOutput<String>('targetType');
  }

  /// Gets an existing [BaselineStrategy] resource's state with the given [name] and [id].
  static BaselineStrategy get(
    String name,
    pulumi.Input<String> id, {
    BaselineStrategyState? state,
  }) {
    return BaselineStrategy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BaselineStrategy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/baselineStrategy:BaselineStrategy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    baselineStrategyId = registerOutput<String>('baselineStrategyId');
    baselineStrategyName = registerOutput<String>('baselineStrategyName');
    customType = registerOutput<String>('customType');
    cycleDays = registerOutput<int>('cycleDays');
    cycleStartTime = registerOutput<int>('cycleStartTime');
    endTime = registerOutput<String>('endTime');
    riskSubTypeName = registerOutput<String>('riskSubTypeName');
    startTime = registerOutput<String>('startTime');
    targetType = registerOutput<String>('targetType');
  }
}
