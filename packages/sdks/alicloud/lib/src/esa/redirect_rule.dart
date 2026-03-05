import 'package:pulumi/pulumi.dart' as pulumi;
import 'redirect_rule_args.dart';
import 'redirect_rule_state.dart';

/// Provides a ESA Redirect Rule resource.
///
///
///
/// For information about ESA Redirect Rule and how to use it, see [What is Redirect Rule](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/api-esa-2024-09-10-createredirectrule).
///
/// &gt; **NOTE:** Available since v1.243.0.
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
/// const resourceRedirectRuleExample = new alicloud.esa.RatePlanInstance("resource_RedirectRule_example", {
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
/// const resourceSiteRedirectRuleExample = new alicloud.esa.Site("resource_Site_RedirectRule_example", {
///     siteName: `gositecdn-${_default.result}.cn`,
///     instanceId: resourceRedirectRuleExample.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultRedirectRule = new alicloud.esa.RedirectRule("default", {
///     statusCode: "301",
///     ruleName: "example",
///     siteId: resourceSiteRedirectRuleExample.id,
///     type: "static",
///     reserveQueryString: "on",
///     targetUrl: "http://www.exapmle.com/index.html",
///     ruleEnable: "on",
///     siteVersion: 0,
///     rule: "(http.host eq \"video.example.com\")",
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
/// resource_redirect_rule_example = alicloud.esa.RatePlanInstance("resource_RedirectRule_example",
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
/// resource_site_redirect_rule_example = alicloud.esa.Site("resource_Site_RedirectRule_example",
///     site_name=f"gositecdn-{default['result']}.cn",
///     instance_id=resource_redirect_rule_example.id,
///     coverage="overseas",
///     access_type="NS")
/// default_redirect_rule = alicloud.esa.RedirectRule("default",
///     status_code="301",
///     rule_name="example",
///     site_id=resource_site_redirect_rule_example.id,
///     type="static",
///     reserve_query_string="on",
///     target_url="http://www.exapmle.com/index.html",
///     rule_enable="on",
///     site_version=0,
///     rule="(http.host eq \"video.example.com\")")
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
///     var resourceRedirectRuleExample = new AliCloud.Esa.RatePlanInstance("resource_RedirectRule_example", new()
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
///     var resourceSiteRedirectRuleExample = new AliCloud.Esa.Site("resource_Site_RedirectRule_example", new()
///     {
///         SiteName = $"gositecdn-{@default.Result}.cn",
///         InstanceId = resourceRedirectRuleExample.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultRedirectRule = new AliCloud.Esa.RedirectRule("default", new()
///     {
///         StatusCode = "301",
///         RuleName = "example",
///         SiteId = resourceSiteRedirectRuleExample.Id,
///         Type = "static",
///         ReserveQueryString = "on",
///         TargetUrl = "http://www.exapmle.com/index.html",
///         RuleEnable = "on",
///         SiteVersion = 0,
///         Rule = "(http.host eq \"video.example.com\")",
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
/// 		resourceRedirectRuleExample, err := esa.NewRatePlanInstance(ctx, "resource_RedirectRule_example", &esa.RatePlanInstanceArgs{
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
/// 		resourceSiteRedirectRuleExample, err := esa.NewSite(ctx, "resource_Site_RedirectRule_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", _default.Result),
/// 			InstanceId: resourceRedirectRuleExample.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewRedirectRule(ctx, "default", &esa.RedirectRuleArgs{
/// 			StatusCode:         pulumi.String("301"),
/// 			RuleName:           pulumi.String("example"),
/// 			SiteId:             resourceSiteRedirectRuleExample.ID(),
/// 			Type:               pulumi.String("static"),
/// 			ReserveQueryString: pulumi.String("on"),
/// 			TargetUrl:          pulumi.String("http://www.exapmle.com/index.html"),
/// 			RuleEnable:         pulumi.String("on"),
/// 			SiteVersion:        pulumi.Int(0),
/// 			Rule:               pulumi.String("(http.host eq \"video.example.com\")"),
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
/// import com.pulumi.alicloud.esa.RedirectRule;
/// import com.pulumi.alicloud.esa.RedirectRuleArgs;
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
///         var resourceRedirectRuleExample = new RatePlanInstance("resourceRedirectRuleExample", RatePlanInstanceArgs.builder()
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
///         var resourceSiteRedirectRuleExample = new Site("resourceSiteRedirectRuleExample", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", default_.result()))
///             .instanceId(resourceRedirectRuleExample.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultRedirectRule = new RedirectRule("defaultRedirectRule", RedirectRuleArgs.builder()
///             .statusCode("301")
///             .ruleName("example")
///             .siteId(resourceSiteRedirectRuleExample.id())
///             .type("static")
///             .reserveQueryString("on")
///             .targetUrl("http://www.exapmle.com/index.html")
///             .ruleEnable("on")
///             .siteVersion(0)
///             .rule("(http.host eq \"video.example.com\")")
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
///   resourceRedirectRuleExample:
///     type: alicloud:esa:RatePlanInstance
///     name: resource_RedirectRule_example
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
///   resourceSiteRedirectRuleExample:
///     type: alicloud:esa:Site
///     name: resource_Site_RedirectRule_example
///     properties:
///       siteName: gositecdn-${default.result}.cn
///       instanceId: ${resourceRedirectRuleExample.id}
///       coverage: overseas
///       accessType: NS
///   defaultRedirectRule:
///     type: alicloud:esa:RedirectRule
///     name: default
///     properties:
///       statusCode: '301'
///       ruleName: example
///       siteId: ${resourceSiteRedirectRuleExample.id}
///       type: static
///       reserveQueryString: on
///       targetUrl: http://www.exapmle.com/index.html
///       ruleEnable: on
///       siteVersion: '0'
///       rule: (http.host eq "video.example.com")
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Redirect Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/redirectRule:RedirectRule example <site_id>:<config_id>
/// ```
class RedirectRule extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;
  /// Indicates whether the feature of retaining the query string is enabled. Valid values:
  ///
  /// - on
  /// - off
  late final pulumi.Output<String> reserveQueryString;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// ● Match all incoming requests: value set to true
  /// ● Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// Order of rule execution. The smaller the value, the higher the priority for execution.
  late final pulumi.Output<int> sequence;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  late final pulumi.Output<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;
  /// The response code that you want to use to indicate URL redirection. Valid values:
  ///
  /// - 301
  /// - 302
  /// - 303
  /// - 307
  /// - 308
  late final pulumi.Output<String> statusCode;
  /// The destination URL to which requests are redirected.
  late final pulumi.Output<String> targetUrl;
  /// The redirection type. Value range:
  /// - static: static mode.
  /// - dynamic: dynamic mode.
  late final pulumi.Output<String> type;

  /// Creates a new [RedirectRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RedirectRule]. {@macro pulumi_esa_redirect_rule_redirect_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RedirectRule(
    String name, {
    RedirectRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/redirectRule:RedirectRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<int>('configId');
    reserveQueryString = registerOutput<String>('reserveQueryString');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    statusCode = registerOutput<String>('statusCode');
    targetUrl = registerOutput<String>('targetUrl');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [RedirectRule] resource's state with the given [name] and [id].
  static RedirectRule get(
    String name,
    pulumi.Input<String> id, {
    RedirectRuleState? state,
  }) {
    return RedirectRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RedirectRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/redirectRule:RedirectRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<int>('configId');
    reserveQueryString = registerOutput<String>('reserveQueryString');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    statusCode = registerOutput<String>('statusCode');
    targetUrl = registerOutput<String>('targetUrl');
    type = registerOutput<String>('type');
  }
}
