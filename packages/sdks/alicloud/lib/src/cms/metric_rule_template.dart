import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_rule_template_args.dart';
import 'metric_rule_template_state.dart';

/// Provides a Cloud Monitor Service Metric Rule Template resource.
///
/// For information about Cloud Monitor Service Metric Rule Template and how to use it, see [What is Metric Rule Template](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createmetricruletemplate).
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const example = new alicloud.cms.MetricRuleTemplate("example", {
///     metricRuleTemplateName: name,
///     alertTemplates: [{
///         category: "ecs",
///         metricName: "cpu_total",
///         namespace: "acs_ecs_dashboard",
///         ruleName: "tf_example",
///         escalations: {
///             critical: {
///                 comparisonOperator: "GreaterThanThreshold",
///                 statistics: "Average",
///                 threshold: "90",
///                 times: "3",
///             },
///         },
///     }],
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
/// example = alicloud.cms.MetricRuleTemplate("example",
///     metric_rule_template_name=name,
///     alert_templates=[{
///         "category": "ecs",
///         "metric_name": "cpu_total",
///         "namespace": "acs_ecs_dashboard",
///         "rule_name": "tf_example",
///         "escalations": {
///             "critical": {
///                 "comparison_operator": "GreaterThanThreshold",
///                 "statistics": "Average",
///                 "threshold": "90",
///                 "times": "3",
///             },
///         },
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
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var example = new AliCloud.Cms.MetricRuleTemplate("example", new()
///     {
///         MetricRuleTemplateName = name,
///         AlertTemplates = new[]
///         {
///             new AliCloud.Cms.Inputs.MetricRuleTemplateAlertTemplateArgs
///             {
///                 Category = "ecs",
///                 MetricName = "cpu_total",
///                 Namespace = "acs_ecs_dashboard",
///                 RuleName = "tf_example",
///                 Escalations = new AliCloud.Cms.Inputs.MetricRuleTemplateAlertTemplateEscalationsArgs
///                 {
///                     Critical = new AliCloud.Cms.Inputs.MetricRuleTemplateAlertTemplateEscalationsCriticalArgs
///                     {
///                         ComparisonOperator = "GreaterThanThreshold",
///                         Statistics = "Average",
///                         Threshold = "90",
///                         Times = "3",
///                     },
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
/// 		_, err := cms.NewMetricRuleTemplate(ctx, "example", &cms.MetricRuleTemplateArgs{
/// 			MetricRuleTemplateName: pulumi.String(name),
/// 			AlertTemplates: cms.MetricRuleTemplateAlertTemplateArray{
/// 				&cms.MetricRuleTemplateAlertTemplateArgs{
/// 					Category:   pulumi.String("ecs"),
/// 					MetricName: pulumi.String("cpu_total"),
/// 					Namespace:  pulumi.String("acs_ecs_dashboard"),
/// 					RuleName:   pulumi.String("tf_example"),
/// 					Escalations: &cms.MetricRuleTemplateAlertTemplateEscalationsArgs{
/// 						Critical: &cms.MetricRuleTemplateAlertTemplateEscalationsCriticalArgs{
/// 							ComparisonOperator: pulumi.String("GreaterThanThreshold"),
/// 							Statistics:         pulumi.String("Average"),
/// 							Threshold:          pulumi.String("90"),
/// 							Times:              pulumi.String("3"),
/// 						},
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
/// import com.pulumi.alicloud.cms.MetricRuleTemplate;
/// import com.pulumi.alicloud.cms.MetricRuleTemplateArgs;
/// import com.pulumi.alicloud.cms.inputs.MetricRuleTemplateAlertTemplateArgs;
/// import com.pulumi.alicloud.cms.inputs.MetricRuleTemplateAlertTemplateEscalationsArgs;
/// import com.pulumi.alicloud.cms.inputs.MetricRuleTemplateAlertTemplateEscalationsCriticalArgs;
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
///         var example = new MetricRuleTemplate("example", MetricRuleTemplateArgs.builder()
///             .metricRuleTemplateName(name)
///             .alertTemplates(MetricRuleTemplateAlertTemplateArgs.builder()
///                 .category("ecs")
///                 .metricName("cpu_total")
///                 .namespace("acs_ecs_dashboard")
///                 .ruleName("tf_example")
///                 .escalations(MetricRuleTemplateAlertTemplateEscalationsArgs.builder()
///                     .critical(MetricRuleTemplateAlertTemplateEscalationsCriticalArgs.builder()
///                         .comparisonOperator("GreaterThanThreshold")
///                         .statistics("Average")
///                         .threshold("90")
///                         .times("3")
///                         .build())
///                     .build())
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
///   example:
///     type: alicloud:cms:MetricRuleTemplate
///     properties:
///       metricRuleTemplateName: ${name}
///       alertTemplates:
///         - category: ecs
///           metricName: cpu_total
///           namespace: acs_ecs_dashboard
///           ruleName: tf_example
///           escalations:
///             critical:
///               comparisonOperator: GreaterThanThreshold
///               statistics: Average
///               threshold: '90'
///               times: '3'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Metric Rule Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/metricRuleTemplate:MetricRuleTemplate example <id>
/// ```
class MetricRuleTemplate extends pulumi.CustomResource {
  /// The details of alert rules that are generated based on the alert template. See `alert_templates` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> alertTemplates;
  /// The mode in which the alert template is applied. Valid values:
  /// - `GROUP_INSTANCE_FIRST`: The metrics in the application group take precedence.
  /// - `ALARM_TEMPLATE_FIRST `: The metrics specified in the alert template take precedence.
  late final pulumi.Output<String?> applyMode;
  /// The description of the alert template.
  late final pulumi.Output<String?> description;
  /// The end of the time period during which the alert rule is effective. Valid values: `00` to `23`. The value `00` indicates 00:59 and the value `23` indicates 23:59.
  late final pulumi.Output<String?> enableEndTime;
  /// The beginning of the time period during which the alert rule is effective. Valid values: `00` to `23`. The value `00` indicates 00:00 and the value `23` indicates 23:00.
  late final pulumi.Output<String?> enableStartTime;
  /// The ID of the application group.
  late final pulumi.Output<String?> groupId;
  /// The name of the alert template.
  late final pulumi.Output<String> metricRuleTemplateName;
  /// The alert notification method. Valid values:
  late final pulumi.Output<String?> notifyLevel;
  /// The version of the alert template.
  late final pulumi.Output<String> restVersion;
  /// The mute period during which notifications are not repeatedly sent for an alert. Unit: seconds. Default value: `86400`. Valid values: `0` to `86400`.
  late final pulumi.Output<int?> silenceTime;
  /// The callback URL to which a POST request is sent when an alert is triggered based on the alert rule.
  late final pulumi.Output<String?> webhook;

  /// Creates a new [MetricRuleTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetricRuleTemplate]. {@macro pulumi_cms_metric_rule_template_metric_rule_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetricRuleTemplate(
    String name, {
    MetricRuleTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/metricRuleTemplate:MetricRuleTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertTemplates = registerOutput<List<Map<String, dynamic>>?>('alertTemplates');
    applyMode = registerOutput<String?>('applyMode');
    description = registerOutput<String?>('description');
    enableEndTime = registerOutput<String?>('enableEndTime');
    enableStartTime = registerOutput<String?>('enableStartTime');
    groupId = registerOutput<String?>('groupId');
    metricRuleTemplateName = registerOutput<String>('metricRuleTemplateName');
    notifyLevel = registerOutput<String?>('notifyLevel');
    restVersion = registerOutput<String>('restVersion');
    silenceTime = registerOutput<int?>('silenceTime');
    webhook = registerOutput<String?>('webhook');
  }

  /// Gets an existing [MetricRuleTemplate] resource's state with the given [name] and [id].
  static MetricRuleTemplate get(
    String name,
    pulumi.Input<String> id, {
    MetricRuleTemplateState? state,
  }) {
    return MetricRuleTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetricRuleTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/metricRuleTemplate:MetricRuleTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alertTemplates = registerOutput<List<Map<String, dynamic>>?>('alertTemplates');
    applyMode = registerOutput<String?>('applyMode');
    description = registerOutput<String?>('description');
    enableEndTime = registerOutput<String?>('enableEndTime');
    enableStartTime = registerOutput<String?>('enableStartTime');
    groupId = registerOutput<String?>('groupId');
    metricRuleTemplateName = registerOutput<String>('metricRuleTemplateName');
    notifyLevel = registerOutput<String?>('notifyLevel');
    restVersion = registerOutput<String>('restVersion');
    silenceTime = registerOutput<int?>('silenceTime');
    webhook = registerOutput<String?>('webhook');
  }
}
