import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_quota_args.dart';
import 'template_quota_state.dart';

/// Provides a Quotas Template Quota resource.
///
/// For information about Quotas Template Quota and how to use it, see [What is Template Quota](https://www.alibabacloud.com/help/en/quota-center/developer-reference/api-quotas-2020-05-10-createtemplatequotaitem).
///
/// &gt; **NOTE:** Available since v1.206.0.
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
/// const _default = new alicloud.quotas.TemplateQuota("default", {
///     quotaActionCode: "q_desktop-count",
///     productCode: "gws",
///     noticeType: 3,
///     dimensions: [{
///         key: "regionId",
///         value: "cn-hangzhou",
///     }],
///     desireValue: 1001,
///     envLanguage: "zh",
///     quotaCategory: "CommonQuota",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.quotas.TemplateQuota("default",
///     quota_action_code="q_desktop-count",
///     product_code="gws",
///     notice_type=3,
///     dimensions=[{
///         "key": "regionId",
///         "value": "cn-hangzhou",
///     }],
///     desire_value=1001,
///     env_language="zh",
///     quota_category="CommonQuota")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.Quotas.TemplateQuota("default", new()
///     {
///         QuotaActionCode = "q_desktop-count",
///         ProductCode = "gws",
///         NoticeType = 3,
///         Dimensions = new[]
///         {
///             new AliCloud.Quotas.Inputs.TemplateQuotaDimensionArgs
///             {
///                 Key = "regionId",
///                 Value = "cn-hangzhou",
///             },
///         },
///         DesireValue = 1001,
///         EnvLanguage = "zh",
///         QuotaCategory = "CommonQuota",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/quotas"
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
/// 		_, err := quotas.NewTemplateQuota(ctx, "default", &quotas.TemplateQuotaArgs{
/// 			QuotaActionCode: pulumi.String("q_desktop-count"),
/// 			ProductCode:     pulumi.String("gws"),
/// 			NoticeType:      pulumi.Int(3),
/// 			Dimensions: quotas.TemplateQuotaDimensionArray{
/// 				&quotas.TemplateQuotaDimensionArgs{
/// 					Key:   pulumi.String("regionId"),
/// 					Value: pulumi.String("cn-hangzhou"),
/// 				},
/// 			},
/// 			DesireValue:   pulumi.Float64(1001),
/// 			EnvLanguage:   pulumi.String("zh"),
/// 			QuotaCategory: pulumi.String("CommonQuota"),
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
/// import com.pulumi.alicloud.quotas.TemplateQuota;
/// import com.pulumi.alicloud.quotas.TemplateQuotaArgs;
/// import com.pulumi.alicloud.quotas.inputs.TemplateQuotaDimensionArgs;
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
///         var default_ = new TemplateQuota("default", TemplateQuotaArgs.builder()
///             .quotaActionCode("q_desktop-count")
///             .productCode("gws")
///             .noticeType(3)
///             .dimensions(TemplateQuotaDimensionArgs.builder()
///                 .key("regionId")
///                 .value("cn-hangzhou")
///                 .build())
///             .desireValue(1001.0)
///             .envLanguage("zh")
///             .quotaCategory("CommonQuota")
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
///     type: alicloud:quotas:TemplateQuota
///     properties:
///       quotaActionCode: q_desktop-count
///       productCode: gws
///       noticeType: 3
///       dimensions:
///         - key: regionId
///           value: cn-hangzhou
///       desireValue: 1001
///       envLanguage: zh
///       quotaCategory: CommonQuota
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Quotas Template Quota can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:quotas/templateQuota:TemplateQuota example <id>
/// ```
class TemplateQuota extends pulumi.CustomResource {
  /// Quota application value.
  late final pulumi.Output<double> desireValue;
  /// The Quota Dimensions. See `dimensions` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> dimensions;
  /// The UTC time when the quota takes effect.
  late final pulumi.Output<String?> effectiveTime;
  /// The language of the quota alert notification. Value:
  /// - zh: Chinese.
  /// - en: English.
  late final pulumi.Output<String> envLanguage;
  /// The UTC time when the quota expires.
  late final pulumi.Output<String?> expireTime;
  /// Whether to notify the result of quota promotion application. Value:
  /// - 0: No.
  /// - 3: Yes.
  late final pulumi.Output<int> noticeType;
  /// The abbreviation of the cloud service name.
  late final pulumi.Output<String> productCode;
  /// The quota ID.
  late final pulumi.Output<String> quotaActionCode;
  /// Type of quota. Value:
  /// - CommonQuota : Generic quota.
  /// - WhiteListLabel: Equity quota.
  /// - FlowControl:API rate quota.
  late final pulumi.Output<String?> quotaCategory;

  /// Creates a new [TemplateQuota].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateQuota]. {@macro pulumi_quotas_template_quota_template_quota_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateQuota(
    String name, {
    TemplateQuotaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/templateQuota:TemplateQuota',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    desireValue = registerOutput<double>('desireValue');
    dimensions = registerOutput<List<Map<String, dynamic>>?>('dimensions');
    effectiveTime = registerOutput<String?>('effectiveTime');
    envLanguage = registerOutput<String>('envLanguage');
    expireTime = registerOutput<String?>('expireTime');
    noticeType = registerOutput<int>('noticeType');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaCategory = registerOutput<String?>('quotaCategory');
  }

  /// Gets an existing [TemplateQuota] resource's state with the given [name] and [id].
  static TemplateQuota get(
    String name,
    pulumi.Input<String> id, {
    TemplateQuotaState? state,
  }) {
    return TemplateQuota._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TemplateQuota._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:quotas/templateQuota:TemplateQuota',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    desireValue = registerOutput<double>('desireValue');
    dimensions = registerOutput<List<Map<String, dynamic>>?>('dimensions');
    effectiveTime = registerOutput<String?>('effectiveTime');
    envLanguage = registerOutput<String>('envLanguage');
    expireTime = registerOutput<String?>('expireTime');
    noticeType = registerOutput<int>('noticeType');
    productCode = registerOutput<String>('productCode');
    quotaActionCode = registerOutput<String>('quotaActionCode');
    quotaCategory = registerOutput<String?>('quotaCategory');
  }
}
