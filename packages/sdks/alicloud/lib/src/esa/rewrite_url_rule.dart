import 'package:pulumi/pulumi.dart' as pulumi;
import 'rewrite_url_rule_args.dart';
import 'rewrite_url_rule_state.dart';

/// Provides a ESA Rewrite Url Rule resource.
///
///
///
/// For information about ESA Rewrite Url Rule and how to use it, see [What is Rewrite Url Rule](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/api-esa-2024-09-10-createrewriteurlrule).
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
/// const resourceRewriteUrlRuleRatePlanInstanceExample = new alicloud.esa.RatePlanInstance("resource_RewriteUrlRule_RatePlanInstance_example", {
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
/// const resourceRewriteUrlRuleSiteExample = new alicloud.esa.Site("resource_RewriteUrlRule_Site_example", {
///     siteName: `gositecdn-${_default.result}.cn`,
///     instanceId: resourceRewriteUrlRuleRatePlanInstanceExample.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultRewriteUrlRule = new alicloud.esa.RewriteUrlRule("default", {
///     rewriteUriType: "static",
///     rewriteQueryStringType: "static",
///     siteId: resourceRewriteUrlRuleSiteExample.id,
///     ruleName: "example",
///     ruleEnable: "on",
///     queryString: "example=123",
///     siteVersion: 0,
///     rule: "http.host eq \"video.example.com\"",
///     uri: "/image/example.jpg",
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
/// resource_rewrite_url_rule_rate_plan_instance_example = alicloud.esa.RatePlanInstance("resource_RewriteUrlRule_RatePlanInstance_example",
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
/// resource_rewrite_url_rule_site_example = alicloud.esa.Site("resource_RewriteUrlRule_Site_example",
///     site_name=f"gositecdn-{default['result']}.cn",
///     instance_id=resource_rewrite_url_rule_rate_plan_instance_example.id,
///     coverage="overseas",
///     access_type="NS")
/// default_rewrite_url_rule = alicloud.esa.RewriteUrlRule("default",
///     rewrite_uri_type="static",
///     rewrite_query_string_type="static",
///     site_id=resource_rewrite_url_rule_site_example.id,
///     rule_name="example",
///     rule_enable="on",
///     query_string="example=123",
///     site_version=0,
///     rule="http.host eq \"video.example.com\"",
///     uri="/image/example.jpg")
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
///     var resourceRewriteUrlRuleRatePlanInstanceExample = new AliCloud.Esa.RatePlanInstance("resource_RewriteUrlRule_RatePlanInstance_example", new()
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
///     var resourceRewriteUrlRuleSiteExample = new AliCloud.Esa.Site("resource_RewriteUrlRule_Site_example", new()
///     {
///         SiteName = $"gositecdn-{@default.Result}.cn",
///         InstanceId = resourceRewriteUrlRuleRatePlanInstanceExample.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultRewriteUrlRule = new AliCloud.Esa.RewriteUrlRule("default", new()
///     {
///         RewriteUriType = "static",
///         RewriteQueryStringType = "static",
///         SiteId = resourceRewriteUrlRuleSiteExample.Id,
///         RuleName = "example",
///         RuleEnable = "on",
///         QueryString = "example=123",
///         SiteVersion = 0,
///         Rule = "http.host eq \"video.example.com\"",
///         Uri = "/image/example.jpg",
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
/// 		resourceRewriteUrlRuleRatePlanInstanceExample, err := esa.NewRatePlanInstance(ctx, "resource_RewriteUrlRule_RatePlanInstance_example", &esa.RatePlanInstanceArgs{
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
/// 		resourceRewriteUrlRuleSiteExample, err := esa.NewSite(ctx, "resource_RewriteUrlRule_Site_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", _default.Result),
/// 			InstanceId: resourceRewriteUrlRuleRatePlanInstanceExample.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewRewriteUrlRule(ctx, "default", &esa.RewriteUrlRuleArgs{
/// 			RewriteUriType:         pulumi.String("static"),
/// 			RewriteQueryStringType: pulumi.String("static"),
/// 			SiteId:                 resourceRewriteUrlRuleSiteExample.ID(),
/// 			RuleName:               pulumi.String("example"),
/// 			RuleEnable:             pulumi.String("on"),
/// 			QueryString:            pulumi.String("example=123"),
/// 			SiteVersion:            pulumi.Int(0),
/// 			Rule:                   pulumi.String("http.host eq \"video.example.com\""),
/// 			Uri:                    pulumi.String("/image/example.jpg"),
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
/// import com.pulumi.alicloud.esa.RewriteUrlRule;
/// import com.pulumi.alicloud.esa.RewriteUrlRuleArgs;
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
///         var resourceRewriteUrlRuleRatePlanInstanceExample = new RatePlanInstance("resourceRewriteUrlRuleRatePlanInstanceExample", RatePlanInstanceArgs.builder()
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
///         var resourceRewriteUrlRuleSiteExample = new Site("resourceRewriteUrlRuleSiteExample", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", default_.result()))
///             .instanceId(resourceRewriteUrlRuleRatePlanInstanceExample.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultRewriteUrlRule = new RewriteUrlRule("defaultRewriteUrlRule", RewriteUrlRuleArgs.builder()
///             .rewriteUriType("static")
///             .rewriteQueryStringType("static")
///             .siteId(resourceRewriteUrlRuleSiteExample.id())
///             .ruleName("example")
///             .ruleEnable("on")
///             .queryString("example=123")
///             .siteVersion(0)
///             .rule("http.host eq \"video.example.com\"")
///             .uri("/image/example.jpg")
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
///   resourceRewriteUrlRuleRatePlanInstanceExample:
///     type: alicloud:esa:RatePlanInstance
///     name: resource_RewriteUrlRule_RatePlanInstance_example
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
///   resourceRewriteUrlRuleSiteExample:
///     type: alicloud:esa:Site
///     name: resource_RewriteUrlRule_Site_example
///     properties:
///       siteName: gositecdn-${default.result}.cn
///       instanceId: ${resourceRewriteUrlRuleRatePlanInstanceExample.id}
///       coverage: overseas
///       accessType: NS
///   defaultRewriteUrlRule:
///     type: alicloud:esa:RewriteUrlRule
///     name: default
///     properties:
///       rewriteUriType: static
///       rewriteQueryStringType: static
///       siteId: ${resourceRewriteUrlRuleSiteExample.id}
///       ruleName: example
///       ruleEnable: on
///       queryString: example=123
///       siteVersion: '0'
///       rule: http.host eq "video.example.com"
///       uri: /image/example.jpg
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Rewrite Url Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/rewriteUrlRule:RewriteUrlRule example <site_id>:<config_id>
/// ```
class RewriteUrlRule extends pulumi.CustomResource {
  /// ConfigId
  late final pulumi.Output<int> configId;
  /// The desired query string to which you want to rewrite the query string in the original request.
  late final pulumi.Output<String?> queryString;
  /// Query string rewrite type. Value range:
  late final pulumi.Output<String?> rewriteQueryStringType;
  /// URI rewrite type. Value range:
  late final pulumi.Output<String?> rewriteUriType;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// ‒ on: open.
  /// ‒ off: close.
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;
  /// The website ID, which can be obtained by calling the [ListSites](https://www.alibabacloud.com/help/en/doc-detail/2850189.html) operation.
  late final pulumi.Output<String> siteId;
  /// Version number of the site configuration. For a site with configuration version management enabled, you can use this parameter to specify the site version in which the configuration takes effect. The default version is 0.
  late final pulumi.Output<int?> siteVersion;
  /// The desired URI to which you want to rewrite the path in the original request.
  late final pulumi.Output<String?> uri;

  /// Creates a new [RewriteUrlRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RewriteUrlRule]. {@macro pulumi_esa_rewrite_url_rule_rewrite_url_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RewriteUrlRule(
    String name, {
    RewriteUrlRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/rewriteUrlRule:RewriteUrlRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<int>('configId');
    queryString = registerOutput<String?>('queryString');
    rewriteQueryStringType = registerOutput<String?>('rewriteQueryStringType');
    rewriteUriType = registerOutput<String?>('rewriteUriType');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    uri = registerOutput<String?>('uri');
  }

  /// Gets an existing [RewriteUrlRule] resource's state with the given [name] and [id].
  static RewriteUrlRule get(
    String name,
    pulumi.Input<String> id, {
    RewriteUrlRuleState? state,
  }) {
    return RewriteUrlRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RewriteUrlRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/rewriteUrlRule:RewriteUrlRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configId = registerOutput<int>('configId');
    queryString = registerOutput<String?>('queryString');
    rewriteQueryStringType = registerOutput<String?>('rewriteQueryStringType');
    rewriteUriType = registerOutput<String?>('rewriteUriType');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
    uri = registerOutput<String?>('uri');
  }
}
