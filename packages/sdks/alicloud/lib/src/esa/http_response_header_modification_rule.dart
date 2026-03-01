import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_response_header_modification_rule_args.dart';
import 'http_response_header_modification_rule_response_header_modification.dart';
import 'http_response_header_modification_rule_state.dart';

/// Provides a ESA Http Response Header Modification Rule resource.
///
///
///
/// For information about ESA Http Response Header Modification Rule and how to use it, see [What is Http Response Header Modification Rule](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/api-esa-2024-09-10-createhttpresponseheadermodificationrule).
///
/// > **NOTE:** Available since v1.243.0.
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
/// const resourceHttpResponseHeaderModificationRuleExample = new alicloud.esa.RatePlanInstance("resource_HttpResponseHeaderModificationRule_example", {
///     type: "NS",
///     autoRenew: false,
///     period: 1,
///     paymentType: "Subscription",
///     coverage: "overseas",
///     autoPay: true,
///     planName: "high",
/// });
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const resourceSiteHttpResponseHeaderModificationRuleExample = new alicloud.esa.Site("resource_Site_HttpResponseHeaderModificationRule_example", {
///     siteName: `gositecdn-${_default.result}.cn`,
///     instanceId: resourceHttpResponseHeaderModificationRuleExample.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultHttpResponseHeaderModificationRule = new alicloud.esa.HttpResponseHeaderModificationRule("default", {
///     ruleEnable: "on",
///     responseHeaderModifications: [
///         {
///             value: "add",
///             operation: "add",
///             name: "exampleadd",
///         },
///         {
///             operation: "del",
///             name: "exampledel",
///         },
///         {
///             operation: "modify",
///             name: "examplemodify",
///             value: "modify",
///         },
///     ],
///     rule: "(http.host eq \"video.example.com\")",
///     siteVersion: 0,
///     ruleName: "exampleResponseHeader",
///     siteId: resourceSiteHttpResponseHeaderModificationRuleExample.id,
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
/// resource_http_response_header_modification_rule_example = alicloud.esa.RatePlanInstance("resource_HttpResponseHeaderModificationRule_example",
///     type="NS",
///     auto_renew=False,
///     period=1,
///     payment_type="Subscription",
///     coverage="overseas",
///     auto_pay=True,
///     plan_name="high")
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// resource_site_http_response_header_modification_rule_example = alicloud.esa.Site("resource_Site_HttpResponseHeaderModificationRule_example",
///     site_name=f"gositecdn-{default['result']}.cn",
///     instance_id=resource_http_response_header_modification_rule_example.id,
///     coverage="overseas",
///     access_type="NS")
/// default_http_response_header_modification_rule = alicloud.esa.HttpResponseHeaderModificationRule("default",
///     rule_enable="on",
///     response_header_modifications=[
///         {
///             "value": "add",
///             "operation": "add",
///             "name": "exampleadd",
///         },
///         {
///             "operation": "del",
///             "name": "exampledel",
///         },
///         {
///             "operation": "modify",
///             "name": "examplemodify",
///             "value": "modify",
///         },
///     ],
///     rule="(http.host eq \"video.example.com\")",
///     site_version=0,
///     rule_name="exampleResponseHeader",
///     site_id=resource_site_http_response_header_modification_rule_example.id)
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
///     var resourceHttpResponseHeaderModificationRuleExample = new AliCloud.Esa.RatePlanInstance("resource_HttpResponseHeaderModificationRule_example", new()
///     {
///         Type = "NS",
///         AutoRenew = false,
///         Period = 1,
///         PaymentType = "Subscription",
///         Coverage = "overseas",
///         AutoPay = true,
///         PlanName = "high",
///     });
///
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var resourceSiteHttpResponseHeaderModificationRuleExample = new AliCloud.Esa.Site("resource_Site_HttpResponseHeaderModificationRule_example", new()
///     {
///         SiteName = $"gositecdn-{@default.Result}.cn",
///         InstanceId = resourceHttpResponseHeaderModificationRuleExample.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultHttpResponseHeaderModificationRule = new AliCloud.Esa.HttpResponseHeaderModificationRule("default", new()
///     {
///         RuleEnable = "on",
///         ResponseHeaderModifications = new[]
///         {
///             new AliCloud.Esa.Inputs.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs
///             {
///                 Value = "add",
///                 Operation = "add",
///                 Name = "exampleadd",
///             },
///             new AliCloud.Esa.Inputs.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs
///             {
///                 Operation = "del",
///                 Name = "exampledel",
///             },
///             new AliCloud.Esa.Inputs.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs
///             {
///                 Operation = "modify",
///                 Name = "examplemodify",
///                 Value = "modify",
///             },
///         },
///         Rule = "(http.host eq \"video.example.com\")",
///         SiteVersion = 0,
///         RuleName = "exampleResponseHeader",
///         SiteId = resourceSiteHttpResponseHeaderModificationRuleExample.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
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
/// 		resourceHttpResponseHeaderModificationRuleExample, err := esa.NewRatePlanInstance(ctx, "resource_HttpResponseHeaderModificationRule_example", &esa.RatePlanInstanceArgs{
/// 			Type:        pulumi.String("NS"),
/// 			AutoRenew:   pulumi.Bool(false),
/// 			Period:      pulumi.Int(1),
/// 			PaymentType: pulumi.String("Subscription"),
/// 			Coverage:    pulumi.String("overseas"),
/// 			AutoPay:     pulumi.Bool(true),
/// 			PlanName:    pulumi.String("high"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resourceSiteHttpResponseHeaderModificationRuleExample, err := esa.NewSite(ctx, "resource_Site_HttpResponseHeaderModificationRule_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", _default.Result),
/// 			InstanceId: resourceHttpResponseHeaderModificationRuleExample.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewHttpResponseHeaderModificationRule(ctx, "default", &esa.HttpResponseHeaderModificationRuleArgs{
/// 			RuleEnable: pulumi.String("on"),
/// 			ResponseHeaderModifications: esa.HttpResponseHeaderModificationRuleResponseHeaderModificationArray{
/// 				&esa.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs{
/// 					Value:     pulumi.String("add"),
/// 					Operation: pulumi.String("add"),
/// 					Name:      pulumi.String("exampleadd"),
/// 				},
/// 				&esa.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs{
/// 					Operation: pulumi.String("del"),
/// 					Name:      pulumi.String("exampledel"),
/// 				},
/// 				&esa.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs{
/// 					Operation: pulumi.String("modify"),
/// 					Name:      pulumi.String("examplemodify"),
/// 					Value:     pulumi.String("modify"),
/// 				},
/// 			},
/// 			Rule:        pulumi.String("(http.host eq \"video.example.com\")"),
/// 			SiteVersion: pulumi.Int(0),
/// 			RuleName:    pulumi.String("exampleResponseHeader"),
/// 			SiteId:      resourceSiteHttpResponseHeaderModificationRuleExample.ID(),
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
/// import com.pulumi.alicloud.esa.RatePlanInstance;
/// import com.pulumi.alicloud.esa.RatePlanInstanceArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.HttpResponseHeaderModificationRule;
/// import com.pulumi.alicloud.esa.HttpResponseHeaderModificationRuleArgs;
/// import com.pulumi.alicloud.esa.inputs.HttpResponseHeaderModificationRuleResponseHeaderModificationArgs;
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
///         var resourceHttpResponseHeaderModificationRuleExample = new RatePlanInstance("resourceHttpResponseHeaderModificationRuleExample", RatePlanInstanceArgs.builder()
///             .type("NS")
///             .autoRenew(false)
///             .period(1)
///             .paymentType("Subscription")
///             .coverage("overseas")
///             .autoPay(true)
///             .planName("high")
///             .build());
///
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var resourceSiteHttpResponseHeaderModificationRuleExample = new Site("resourceSiteHttpResponseHeaderModificationRuleExample", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", default_.result()))
///             .instanceId(resourceHttpResponseHeaderModificationRuleExample.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultHttpResponseHeaderModificationRule = new HttpResponseHeaderModificationRule("defaultHttpResponseHeaderModificationRule", HttpResponseHeaderModificationRuleArgs.builder()
///             .ruleEnable("on")
///             .responseHeaderModifications(
///                 HttpResponseHeaderModificationRuleResponseHeaderModificationArgs.builder()
///                     .value("add")
///                     .operation("add")
///                     .name("exampleadd")
///                     .build(),
///                 HttpResponseHeaderModificationRuleResponseHeaderModificationArgs.builder()
///                     .operation("del")
///                     .name("exampledel")
///                     .build(),
///                 HttpResponseHeaderModificationRuleResponseHeaderModificationArgs.builder()
///                     .operation("modify")
///                     .name("examplemodify")
///                     .value("modify")
///                     .build())
///             .rule("(http.host eq \"video.example.com\")")
///             .siteVersion(0)
///             .ruleName("exampleResponseHeader")
///             .siteId(resourceSiteHttpResponseHeaderModificationRuleExample.id())
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
///   resourceHttpResponseHeaderModificationRuleExample:
///     type: alicloud:esa:RatePlanInstance
///     name: resource_HttpResponseHeaderModificationRule_example
///     properties:
///       type: NS
///       autoRenew: 'false'
///       period: '1'
///       paymentType: Subscription
///       coverage: overseas
///       autoPay: 'true'
///       planName: high
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   resourceSiteHttpResponseHeaderModificationRuleExample:
///     type: alicloud:esa:Site
///     name: resource_Site_HttpResponseHeaderModificationRule_example
///     properties:
///       siteName: gositecdn-${default.result}.cn
///       instanceId: ${resourceHttpResponseHeaderModificationRuleExample.id}
///       coverage: overseas
///       accessType: NS
///   defaultHttpResponseHeaderModificationRule:
///     type: alicloud:esa:HttpResponseHeaderModificationRule
///     name: default
///     properties:
///       ruleEnable: on
///       responseHeaderModifications:
///         - value: add
///           operation: add
///           name: exampleadd
///         - operation: del
///           name: exampledel
///         - operation: modify
///           name: examplemodify
///           value: modify
///       rule: (http.host eq "video.example.com")
///       siteVersion: '0'
///       ruleName: exampleResponseHeader
///       siteId: ${resourceSiteHttpResponseHeaderModificationRuleExample.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Http Response Header Modification Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/httpResponseHeaderModificationRule:HttpResponseHeaderModificationRule example <site_id>:<config_id>
/// ```
class HttpResponseHeaderModificationRule extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;
  /// Modify response headers, supporting add, delete, and modify operations. See `response_header_modification` below.
  late final pulumi.Output<List<HttpResponseHeaderModificationRuleResponseHeaderModification>> responseHeaderModifications;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;
  /// The site ID.
  late final pulumi.Output<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Creates a new [HttpResponseHeaderModificationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpResponseHeaderModificationRule]. {@macro pulumi_esa_http_response_header_modification_rule_http_response_header_modification_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpResponseHeaderModificationRule(
    String name, {
    HttpResponseHeaderModificationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/httpResponseHeaderModificationRule:HttpResponseHeaderModificationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<int>('configId');
    this.responseHeaderModifications = registerOutput<List<HttpResponseHeaderModificationRuleResponseHeaderModification>>('responseHeaderModifications');
    this.rule = registerOutput<String?>('rule');
    this.ruleEnable = registerOutput<String?>('ruleEnable');
    this.ruleName = registerOutput<String?>('ruleName');
    this.sequence = registerOutput<int>('sequence');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int?>('siteVersion');
  }

  /// Gets an existing [HttpResponseHeaderModificationRule] resource's state with the given [name] and [id].
  static HttpResponseHeaderModificationRule get(
    String name,
    pulumi.Input<String> id, {
    HttpResponseHeaderModificationRuleState? state,
  }) {
    return HttpResponseHeaderModificationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HttpResponseHeaderModificationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/httpResponseHeaderModificationRule:HttpResponseHeaderModificationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<int>('configId');
    this.responseHeaderModifications = registerOutput<List<HttpResponseHeaderModificationRuleResponseHeaderModification>>('responseHeaderModifications');
    this.rule = registerOutput<String?>('rule');
    this.ruleEnable = registerOutput<String?>('ruleEnable');
    this.ruleName = registerOutput<String?>('ruleName');
    this.sequence = registerOutput<int>('sequence');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int?>('siteVersion');
  }
}
