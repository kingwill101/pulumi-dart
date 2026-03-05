import 'package:pulumi/pulumi.dart' as pulumi;
import 'quota_alarm_args.dart';
import 'quota_alarm_state.dart';

/// Provides a Quotas Quota Alarm resource.
///
/// For information about Quotas Quota Alarm and how to use it, see [What is Quota Alarm](https://www.alibabacloud.com/help/en/quota-center/developer-reference/api-quotas-2020-05-10-createquotaalarm).
///
/// &gt; **NOTE:** Available since v1.116.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultQuotaAlarm = new alicloud.quotas.QuotaAlarm("default", {
///     quotaActionCode: "q_desktop-count",
///     quotaDimensions: [{
///         key: "regionId",
///         value: "cn-hangzhou",
///     }],
///     thresholdPercent: 80,
///     productCode: "gws",
///     quotaAlarmName: `${name}-${_default.result}`,
///     thresholdType: "used",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_quota_alarm = alicloud.quotas.QuotaAlarm("default",
///     quota_action_code="q_desktop-count",
///     quota_dimensions=[{
///         "key": "regionId",
///         "value": "cn-hangzhou",
///     }],
///     threshold_percent=80,
///     product_code="gws",
///     quota_alarm_name=f"{name}-{default['result']}",
///     threshold_type="used")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultQuotaAlarm = new AliCloud.Quotas.QuotaAlarm("default", new()
///     {
///         QuotaActionCode = "q_desktop-count",
///         QuotaDimensions = new[]
///         {
///             new AliCloud.Quotas.Inputs.QuotaAlarmQuotaDimensionArgs
///             {
///                 Key = "regionId",
///                 Value = "cn-hangzhou",
///             },
///         },
///         ThresholdPercent = 80,
///         ProductCode = "gws",
///         QuotaAlarmName = $"{name}-{@default.Result}",
///         ThresholdType = "used",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quotas"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = quotas.NewQuotaAlarm(ctx, "default", &quotas.QuotaAlarmArgs{
/// 			QuotaActionCode: pulumi.String("q_desktop-count"),
/// 			QuotaDimensions: quotas.QuotaAlarmQuotaDimensionArray{
/// 				&quotas.QuotaAlarmQuotaDimensionArgs{
/// 					Key:   pulumi.String("regionId"),
/// 					Value: pulumi.String("cn-hangzhou"),
/// 				},
/// 			},
/// 			ThresholdPercent: pulumi.Float64(80),
/// 			ProductCode:      pulumi.String("gws"),
/// 			QuotaAlarmName:   pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			ThresholdType:    pulumi.String("used"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.quotas.QuotaAlarm;
/// import com.pulumi.alicloud.quotas.QuotaAlarmArgs;
/// import com.pulumi.alicloud.quotas.inputs.QuotaAlarmQuotaDimensionArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultQuotaAlarm = new QuotaAlarm("defaultQuotaAlarm", QuotaAlarmArgs.builder()
///             .quotaActionCode("q_desktop-count")
///             .quotaDimensions(QuotaAlarmQuotaDimensionArgs.builder()
///                 .key("regionId")
///                 .value("cn-hangzhou")
///                 .build())
///             .thresholdPercent(80.0)
///             .productCode("gws")
///             .quotaAlarmName(String.format("%s-%s", name,default_.result()))
///             .thresholdType("used")
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultQuotaAlarm:
///     type: alicloud:quotas:QuotaAlarm
///     name: default
///     properties:
///       quotaActionCode: q_desktop-count
///       quotaDimensions:
///         - key: regionId
///           value: cn-hangzhou
///       thresholdPercent: 80
///       productCode: gws
///       quotaAlarmName: ${name}-${default.result}
///       thresholdType: used
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Quotas Quota Alarm can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:quotas/quotaAlarm:QuotaAlarm example <id>
/// ```
class QuotaAlarm extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// The Product Code.
  late final pulumi.Output<String> productCode;
  /// The Quota Action Code.
  late final pulumi.Output<String> quotaActionCode;
  /// The name of Quota Alarm.
  late final pulumi.Output<String> quotaAlarmName;
  /// The Quota Dimensions. See `quota_dimensions` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> quotaDimensions;
  /// The threshold of Quota Alarm.
  late final pulumi.Output<double?> threshold;
  /// The threshold percent of Quota Alarm.
  late final pulumi.Output<double?> thresholdPercent;
  /// Quota alarm type. Value:
  /// - used: Quota used alarm.
  /// - usable: alarm for the remaining available quota.
  late final pulumi.Output<String> thresholdType;
  /// The WebHook of Quota Alarm.
  late final pulumi.Output<String?> webHook;

  /// Creates a new [QuotaAlarm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [QuotaAlarm]. {@macro pulumi_quotas_quota_alarm_quota_alarm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  QuotaAlarm(
    String name, {
    QuotaAlarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/quotaAlarm:QuotaAlarm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaAlarmName = registerOutput<String>('quotaAlarmName');
    quotaDimensions = registerOutput<List<Map<String, dynamic>>?>('quotaDimensions');
    threshold = registerOutput<double?>('threshold');
    thresholdPercent = registerOutput<double?>('thresholdPercent');
    thresholdType = registerOutput<String>('thresholdType');
    webHook = registerOutput<String?>('webHook');
  }

  /// Gets an existing [QuotaAlarm] resource's state with the given [name] and [id].
  static QuotaAlarm get(
    String name,
    pulumi.Input<String> id, {
    QuotaAlarmState? state,
  }) {
    return QuotaAlarm._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  QuotaAlarm._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/quotaAlarm:QuotaAlarm',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaAlarmName = registerOutput<String>('quotaAlarmName');
    quotaDimensions = registerOutput<List<Map<String, dynamic>>?>('quotaDimensions');
    threshold = registerOutput<double?>('threshold');
    thresholdPercent = registerOutput<double?>('thresholdPercent');
    thresholdType = registerOutput<String>('thresholdType');
    webHook = registerOutput<String?>('webHook');
  }
}
