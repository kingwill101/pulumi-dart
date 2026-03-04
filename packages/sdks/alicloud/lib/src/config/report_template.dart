import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_template_args.dart';
import 'report_template_state.dart';

/// Provides a Cloud Config (Config) Report Template resource.
///
/// Config Compliance Report Template.
///
/// For information about Cloud Config (Config) Report Template and how to use it, see [What is Report Template](https://next.api.alibabacloud.com/document/Config/2020-09-07/CreateReportTemplate).
///
/// &gt; **NOTE:** Available since v1.266.0.
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
/// const _default = new alicloud.cfg.ReportTemplate("default", {
///     reportGranularity: "AllInOne",
///     reportScopes: [{
///         key: "RuleId",
///         value: "cr-xxx",
///         matchType: "In",
///     }],
///     reportFileFormats: "excel",
///     reportTemplateName: "example-name",
///     reportTemplateDescription: "example-desc",
///     subscriptionFrequency: " ",
///     reportLanguage: "en-US",
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
/// default = alicloud.cfg.ReportTemplate("default",
///     report_granularity="AllInOne",
///     report_scopes=[{
///         "key": "RuleId",
///         "value": "cr-xxx",
///         "match_type": "In",
///     }],
///     report_file_formats="excel",
///     report_template_name="example-name",
///     report_template_description="example-desc",
///     subscription_frequency=" ",
///     report_language="en-US")
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
///     var @default = new AliCloud.Cfg.ReportTemplate("default", new()
///     {
///         ReportGranularity = "AllInOne",
///         ReportScopes = new[]
///         {
///             new AliCloud.Cfg.Inputs.ReportTemplateReportScopeArgs
///             {
///                 Key = "RuleId",
///                 Value = "cr-xxx",
///                 MatchType = "In",
///             },
///         },
///         ReportFileFormats = "excel",
///         ReportTemplateName = "example-name",
///         ReportTemplateDescription = "example-desc",
///         SubscriptionFrequency = " ",
///         ReportLanguage = "en-US",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
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
/// 		_, err := cfg.NewReportTemplate(ctx, "default", &cfg.ReportTemplateArgs{
/// 			ReportGranularity: pulumi.String("AllInOne"),
/// 			ReportScopes: cfg.ReportTemplateReportScopeArray{
/// 				&cfg.ReportTemplateReportScopeArgs{
/// 					Key:       pulumi.String("RuleId"),
/// 					Value:     pulumi.String("cr-xxx"),
/// 					MatchType: pulumi.String("In"),
/// 				},
/// 			},
/// 			ReportFileFormats:         pulumi.String("excel"),
/// 			ReportTemplateName:        pulumi.String("example-name"),
/// 			ReportTemplateDescription: pulumi.String("example-desc"),
/// 			SubscriptionFrequency:     pulumi.String(" "),
/// 			ReportLanguage:            pulumi.String("en-US"),
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
/// import com.pulumi.alicloud.cfg.ReportTemplate;
/// import com.pulumi.alicloud.cfg.ReportTemplateArgs;
/// import com.pulumi.alicloud.cfg.inputs.ReportTemplateReportScopeArgs;
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
///         var default_ = new ReportTemplate("default", ReportTemplateArgs.builder()
///             .reportGranularity("AllInOne")
///             .reportScopes(ReportTemplateReportScopeArgs.builder()
///                 .key("RuleId")
///                 .value("cr-xxx")
///                 .matchType("In")
///                 .build())
///             .reportFileFormats("excel")
///             .reportTemplateName("example-name")
///             .reportTemplateDescription("example-desc")
///             .subscriptionFrequency(" ")
///             .reportLanguage("en-US")
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
///     type: alicloud:cfg:ReportTemplate
///     properties:
///       reportGranularity: AllInOne
///       reportScopes:
///         - key: RuleId
///           value: cr-xxx
///           matchType: In
///       reportFileFormats: excel
///       reportTemplateName: example-name
///       reportTemplateDescription: example-desc
///       subscriptionFrequency: ' '
///       reportLanguage: en-US
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Config (Config) Report Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:config/reportTemplate:ReportTemplate example <id>
/// ```
class ReportTemplate extends pulumi.CustomResource {
  /// Report Format
  late final pulumi.Output<String?> reportFileFormats;

  /// Report Aggregation Granularity
  late final pulumi.Output<String?> reportGranularity;

  /// This property does not have a description in the spec, please add it before generating code.
  late final pulumi.Output<String?> reportLanguage;

  /// Report range, yes and logic between multiple sets of k-v pairs. See `report_scope` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> reportScopes;

  /// Report Template Description
  late final pulumi.Output<String?> reportTemplateDescription;

  /// Report Template Name
  late final pulumi.Output<String> reportTemplateName;

  /// Report subscription frequency. If this field is not empty, it is a Cron expression in Quartz format triggered by the subscription notification.
  ///
  /// The format is: Seconds, time, day, month, week. The following are examples of commonly used Cron expressions:
  /// - Execute at 0 o'clock every day: 0 0 0 * *?
  /// - Every Monday at 15: 30: 0 30 15? * MON
  /// - Execute at 2 o'clock on the 1st of each month: 0 0 2 1 *?
  ///
  /// Among them:
  /// -"*" Indicates any value
  /// - What-? Used for day and week fields, indicating that no specific value is specified
  /// - MON means Monday
  ///
  /// &gt; **NOTE:**  The trigger time is UTC +8, and the settings of the cron expression can be converted according to the time zone.
  ///
  /// &gt; **NOTE:**  It can only be triggered according to the cron expression time as much as possible. The cron expression limits the same template to trigger at most one notification per day.
  late final pulumi.Output<String?> subscriptionFrequency;

  /// Creates a new [ReportTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReportTemplate]. {@macro pulumi_config_report_template_report_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReportTemplate(
    String name, {
    ReportTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:config/reportTemplate:ReportTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    reportFileFormats = registerOutput<String?>('reportFileFormats');
    reportGranularity = registerOutput<String?>('reportGranularity');
    reportLanguage = registerOutput<String?>('reportLanguage');
    reportScopes = registerOutput<List<Map<String, dynamic>>?>('reportScopes');
    reportTemplateDescription = registerOutput<String?>(
      'reportTemplateDescription',
    );
    reportTemplateName = registerOutput<String>('reportTemplateName');
    subscriptionFrequency = registerOutput<String?>('subscriptionFrequency');
  }

  /// Gets an existing [ReportTemplate] resource's state with the given [name] and [id].
  static ReportTemplate get(
    String name,
    pulumi.Input<String> id, {
    ReportTemplateState? state,
  }) {
    return ReportTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReportTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:config/reportTemplate:ReportTemplate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    reportFileFormats = registerOutput<String?>('reportFileFormats');
    reportGranularity = registerOutput<String?>('reportGranularity');
    reportLanguage = registerOutput<String?>('reportLanguage');
    reportScopes = registerOutput<List<Map<String, dynamic>>?>('reportScopes');
    reportTemplateDescription = registerOutput<String?>(
      'reportTemplateDescription',
    );
    reportTemplateName = registerOutput<String>('reportTemplateName');
    subscriptionFrequency = registerOutput<String?>('subscriptionFrequency');
  }
}
