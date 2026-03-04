import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_request_header_modification_rule_args.dart';
import 'http_request_header_modification_rule_state.dart';

/// Provides a ESA Http Request Header Modification Rule resource.
///
///
///
/// For information about ESA Http Request Header Modification Rule and how to use it, see [What is Http Request Header Modification Rule](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/api-esa-2024-09-10-createhttprequestheadermodificationrule).
///
/// &gt; **NOTE:** Available since v1.242.0.
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
/// const instance = new alicloud.esa.RatePlanInstance("instance", {
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
/// const site = new alicloud.esa.Site("site", {
///     siteName: `gositecdn-${_default.result}.cn`,
///     instanceId: instance.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultHttpRequestHeaderModificationRule = new alicloud.esa.HttpRequestHeaderModificationRule("default", {
///     ruleName: "example_modify",
///     requestHeaderModifications: [{
///         value: "modify1",
///         operation: "modify",
///         name: "example_modify1",
///     }],
///     siteId: site.id,
///     ruleEnable: "off",
///     rule: "(http.request.uri eq \"/content?page=1234\")",
///     siteVersion: 0,
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
/// instance = alicloud.esa.RatePlanInstance("instance",
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
/// site = alicloud.esa.Site("site",
///     site_name=f"gositecdn-{default['result']}.cn",
///     instance_id=instance.id,
///     coverage="overseas",
///     access_type="NS")
/// default_http_request_header_modification_rule = alicloud.esa.HttpRequestHeaderModificationRule("default",
///     rule_name="example_modify",
///     request_header_modifications=[{
///         "value": "modify1",
///         "operation": "modify",
///         "name": "example_modify1",
///     }],
///     site_id=site.id,
///     rule_enable="off",
///     rule="(http.request.uri eq \"/content?page=1234\")",
///     site_version=0)
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
///     var instance = new AliCloud.Esa.RatePlanInstance("instance", new()
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
///     var site = new AliCloud.Esa.Site("site", new()
///     {
///         SiteName = $"gositecdn-{@default.Result}.cn",
///         InstanceId = instance.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultHttpRequestHeaderModificationRule = new AliCloud.Esa.HttpRequestHeaderModificationRule("default", new()
///     {
///         RuleName = "example_modify",
///         RequestHeaderModifications = new[]
///         {
///             new AliCloud.Esa.Inputs.HttpRequestHeaderModificationRuleRequestHeaderModificationArgs
///             {
///                 Value = "modify1",
///                 Operation = "modify",
///                 Name = "example_modify1",
///             },
///         },
///         SiteId = site.Id,
///         RuleEnable = "off",
///         Rule = "(http.request.uri eq \"/content?page=1234\")",
///         SiteVersion = 0,
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
/// 		instance, err := esa.NewRatePlanInstance(ctx, "instance", &esa.RatePlanInstanceArgs{
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
/// 		site, err := esa.NewSite(ctx, "site", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", _default.Result),
/// 			InstanceId: instance.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewHttpRequestHeaderModificationRule(ctx, "default", &esa.HttpRequestHeaderModificationRuleArgs{
/// 			RuleName: pulumi.String("example_modify"),
/// 			RequestHeaderModifications: esa.HttpRequestHeaderModificationRuleRequestHeaderModificationArray{
/// 				&esa.HttpRequestHeaderModificationRuleRequestHeaderModificationArgs{
/// 					Value:     pulumi.String("modify1"),
/// 					Operation: pulumi.String("modify"),
/// 					Name:      pulumi.String("example_modify1"),
/// 				},
/// 			},
/// 			SiteId:      site.ID(),
/// 			RuleEnable:  pulumi.String("off"),
/// 			Rule:        pulumi.String("(http.request.uri eq \"/content?page=1234\")"),
/// 			SiteVersion: pulumi.Int(0),
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
/// import com.pulumi.alicloud.esa.HttpRequestHeaderModificationRule;
/// import com.pulumi.alicloud.esa.HttpRequestHeaderModificationRuleArgs;
/// import com.pulumi.alicloud.esa.inputs.HttpRequestHeaderModificationRuleRequestHeaderModificationArgs;
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
///         var instance = new RatePlanInstance("instance", RatePlanInstanceArgs.builder()
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
///         var site = new Site("site", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", default_.result()))
///             .instanceId(instance.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultHttpRequestHeaderModificationRule = new HttpRequestHeaderModificationRule("defaultHttpRequestHeaderModificationRule", HttpRequestHeaderModificationRuleArgs.builder()
///             .ruleName("example_modify")
///             .requestHeaderModifications(HttpRequestHeaderModificationRuleRequestHeaderModificationArgs.builder()
///                 .value("modify1")
///                 .operation("modify")
///                 .name("example_modify1")
///                 .build())
///             .siteId(site.id())
///             .ruleEnable("off")
///             .rule("(http.request.uri eq \"/content?page=1234\")")
///             .siteVersion(0)
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
///   instance:
///     type: alicloud:esa:RatePlanInstance
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
///   site:
///     type: alicloud:esa:Site
///     properties:
///       siteName: gositecdn-${default.result}.cn
///       instanceId: ${instance.id}
///       coverage: overseas
///       accessType: NS
///   defaultHttpRequestHeaderModificationRule:
///     type: alicloud:esa:HttpRequestHeaderModificationRule
///     name: default
///     properties:
///       ruleName: example_modify
///       requestHeaderModifications:
///         - value: modify1
///           operation: modify
///           name: example_modify1
///       siteId: ${site.id}
///       ruleEnable: off
///       rule: (http.request.uri eq "/content?page=1234")
///       siteVersion: '0'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Http Request Header Modification Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/httpRequestHeaderModificationRule:HttpRequestHeaderModificationRule example <site_id>:<config_id>
/// ```
class HttpRequestHeaderModificationRule extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;

  /// The configurations of modifying request headers. You can add, delete, or modify a request header. See `request_header_modification` below.
  late final pulumi.Output<List<Map<String, dynamic>>>
  requestHeaderModifications;

  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;

  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  late final pulumi.Output<String?> ruleEnable;

  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;

  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;

  /// The site ID.
  late final pulumi.Output<String> siteId;

  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Creates a new [HttpRequestHeaderModificationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpRequestHeaderModificationRule]. {@macro pulumi_esa_http_request_header_modification_rule_http_request_header_modification_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpRequestHeaderModificationRule(
    String name, {
    HttpRequestHeaderModificationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/httpRequestHeaderModificationRule:HttpRequestHeaderModificationRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    requestHeaderModifications = registerOutput<List<Map<String, dynamic>>>(
      'requestHeaderModifications',
    );
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
  }

  /// Gets an existing [HttpRequestHeaderModificationRule] resource's state with the given [name] and [id].
  static HttpRequestHeaderModificationRule get(
    String name,
    pulumi.Input<String> id, {
    HttpRequestHeaderModificationRuleState? state,
  }) {
    return HttpRequestHeaderModificationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HttpRequestHeaderModificationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/httpRequestHeaderModificationRule:HttpRequestHeaderModificationRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    requestHeaderModifications = registerOutput<List<Map<String, dynamic>>>(
      'requestHeaderModifications',
    );
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
  }
}
