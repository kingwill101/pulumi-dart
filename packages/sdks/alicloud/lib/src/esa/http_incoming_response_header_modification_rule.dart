import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_incoming_response_header_modification_rule_args.dart';
import 'http_incoming_response_header_modification_rule_response_header_modification.dart';
import 'http_incoming_response_header_modification_rule_state.dart';

/// Provides a ESA Http Incoming Response Header Modification Rule resource.
///
///
///
/// For information about ESA Http Incoming Response Header Modification Rule and how to use it, see [What is Http Incoming Response Header Modification Rule](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateHttpIncomingResponseHeaderModificationRule).
///
/// > **NOTE:** Available since v1.266.0.
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
/// const resourceHttpIncomingResponseHeaderModificationRuleExample = new alicloud.esa.RatePlanInstance("resource_HttpIncomingResponseHeaderModificationRule_example", {
///     type: "NS",
///     autoRenew: false,
///     period: 1,
///     paymentType: "Subscription",
///     coverage: "overseas",
///     autoPay: true,
///     planName: "basic",
/// });
/// const resourceSiteHttpIncomingResponseHeaderModificationRuleExample = new alicloud.esa.Site("resource_Site_HttpIncomingResponseHeaderModificationRule_example", {
///     siteName: `gositecdn${_default.result}.cn`,
///     instanceId: resourceHttpIncomingResponseHeaderModificationRuleExample.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultHttpIncomingResponseHeaderModificationRule = new alicloud.esa.HttpIncomingResponseHeaderModificationRule("default", {
///     siteId: resourceSiteHttpIncomingResponseHeaderModificationRuleExample.id,
///     ruleEnable: "on",
///     responseHeaderModifications: [
///         {
///             type: "static",
///             value: "add",
///             operation: "add",
///             name: "exampleadd",
///         },
///         {
///             type: "static",
///             operation: "del",
///             name: "exampledel",
///         },
///         {
///             type: "static",
///             value: "modify",
///             operation: "modify",
///             name: "examplemodify",
///         },
///     ],
///     rule: "(http.host eq \"video.example.com\")",
///     sequence: 1,
///     siteVersion: 0,
///     ruleName: "exampleResponseHeader",
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
/// resource_http_incoming_response_header_modification_rule_example = alicloud.esa.RatePlanInstance("resource_HttpIncomingResponseHeaderModificationRule_example",
///     type="NS",
///     auto_renew=False,
///     period=1,
///     payment_type="Subscription",
///     coverage="overseas",
///     auto_pay=True,
///     plan_name="basic")
/// resource_site_http_incoming_response_header_modification_rule_example = alicloud.esa.Site("resource_Site_HttpIncomingResponseHeaderModificationRule_example",
///     site_name=f"gositecdn{default['result']}.cn",
///     instance_id=resource_http_incoming_response_header_modification_rule_example.id,
///     coverage="overseas",
///     access_type="NS")
/// default_http_incoming_response_header_modification_rule = alicloud.esa.HttpIncomingResponseHeaderModificationRule("default",
///     site_id=resource_site_http_incoming_response_header_modification_rule_example.id,
///     rule_enable="on",
///     response_header_modifications=[
///         {
///             "type": "static",
///             "value": "add",
///             "operation": "add",
///             "name": "exampleadd",
///         },
///         {
///             "type": "static",
///             "operation": "del",
///             "name": "exampledel",
///         },
///         {
///             "type": "static",
///             "value": "modify",
///             "operation": "modify",
///             "name": "examplemodify",
///         },
///     ],
///     rule="(http.host eq \"video.example.com\")",
///     sequence=1,
///     site_version=0,
///     rule_name="exampleResponseHeader")
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
///     var resourceHttpIncomingResponseHeaderModificationRuleExample = new AliCloud.Esa.RatePlanInstance("resource_HttpIncomingResponseHeaderModificationRule_example", new()
///     {
///         Type = "NS",
///         AutoRenew = false,
///         Period = 1,
///         PaymentType = "Subscription",
///         Coverage = "overseas",
///         AutoPay = true,
///         PlanName = "basic",
///     });
///
///     var resourceSiteHttpIncomingResponseHeaderModificationRuleExample = new AliCloud.Esa.Site("resource_Site_HttpIncomingResponseHeaderModificationRule_example", new()
///     {
///         SiteName = $"gositecdn{@default.Result}.cn",
///         InstanceId = resourceHttpIncomingResponseHeaderModificationRuleExample.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultHttpIncomingResponseHeaderModificationRule = new AliCloud.Esa.HttpIncomingResponseHeaderModificationRule("default", new()
///     {
///         SiteId = resourceSiteHttpIncomingResponseHeaderModificationRuleExample.Id,
///         RuleEnable = "on",
///         ResponseHeaderModifications = new[]
///         {
///             new AliCloud.Esa.Inputs.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs
///             {
///                 Type = "static",
///                 Value = "add",
///                 Operation = "add",
///                 Name = "exampleadd",
///             },
///             new AliCloud.Esa.Inputs.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs
///             {
///                 Type = "static",
///                 Operation = "del",
///                 Name = "exampledel",
///             },
///             new AliCloud.Esa.Inputs.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs
///             {
///                 Type = "static",
///                 Value = "modify",
///                 Operation = "modify",
///                 Name = "examplemodify",
///             },
///         },
///         Rule = "(http.host eq \"video.example.com\")",
///         Sequence = 1,
///         SiteVersion = 0,
///         RuleName = "exampleResponseHeader",
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resourceHttpIncomingResponseHeaderModificationRuleExample, err := esa.NewRatePlanInstance(ctx, "resource_HttpIncomingResponseHeaderModificationRule_example", &esa.RatePlanInstanceArgs{
/// 			Type:        pulumi.String("NS"),
/// 			AutoRenew:   pulumi.Bool(false),
/// 			Period:      pulumi.Int(1),
/// 			PaymentType: pulumi.String("Subscription"),
/// 			Coverage:    pulumi.String("overseas"),
/// 			AutoPay:     pulumi.Bool(true),
/// 			PlanName:    pulumi.String("basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		resourceSiteHttpIncomingResponseHeaderModificationRuleExample, err := esa.NewSite(ctx, "resource_Site_HttpIncomingResponseHeaderModificationRule_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn%v.cn", _default.Result),
/// 			InstanceId: resourceHttpIncomingResponseHeaderModificationRuleExample.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewHttpIncomingResponseHeaderModificationRule(ctx, "default", &esa.HttpIncomingResponseHeaderModificationRuleArgs{
/// 			SiteId:     resourceSiteHttpIncomingResponseHeaderModificationRuleExample.ID(),
/// 			RuleEnable: pulumi.String("on"),
/// 			ResponseHeaderModifications: esa.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArray{
/// 				&esa.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs{
/// 					Type:      pulumi.String("static"),
/// 					Value:     pulumi.String("add"),
/// 					Operation: pulumi.String("add"),
/// 					Name:      pulumi.String("exampleadd"),
/// 				},
/// 				&esa.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs{
/// 					Type:      pulumi.String("static"),
/// 					Operation: pulumi.String("del"),
/// 					Name:      pulumi.String("exampledel"),
/// 				},
/// 				&esa.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs{
/// 					Type:      pulumi.String("static"),
/// 					Value:     pulumi.String("modify"),
/// 					Operation: pulumi.String("modify"),
/// 					Name:      pulumi.String("examplemodify"),
/// 				},
/// 			},
/// 			Rule:        pulumi.String("(http.host eq \"video.example.com\")"),
/// 			Sequence:    pulumi.Int(1),
/// 			SiteVersion: pulumi.Int(0),
/// 			RuleName:    pulumi.String("exampleResponseHeader"),
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
/// import com.pulumi.alicloud.esa.RatePlanInstance;
/// import com.pulumi.alicloud.esa.RatePlanInstanceArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.HttpIncomingResponseHeaderModificationRule;
/// import com.pulumi.alicloud.esa.HttpIncomingResponseHeaderModificationRuleArgs;
/// import com.pulumi.alicloud.esa.inputs.HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs;
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
///         var resourceHttpIncomingResponseHeaderModificationRuleExample = new RatePlanInstance("resourceHttpIncomingResponseHeaderModificationRuleExample", RatePlanInstanceArgs.builder()
///             .type("NS")
///             .autoRenew(false)
///             .period(1)
///             .paymentType("Subscription")
///             .coverage("overseas")
///             .autoPay(true)
///             .planName("basic")
///             .build());
///
///         var resourceSiteHttpIncomingResponseHeaderModificationRuleExample = new Site("resourceSiteHttpIncomingResponseHeaderModificationRuleExample", SiteArgs.builder()
///             .siteName(String.format("gositecdn%s.cn", default_.result()))
///             .instanceId(resourceHttpIncomingResponseHeaderModificationRuleExample.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultHttpIncomingResponseHeaderModificationRule = new HttpIncomingResponseHeaderModificationRule("defaultHttpIncomingResponseHeaderModificationRule", HttpIncomingResponseHeaderModificationRuleArgs.builder()
///             .siteId(resourceSiteHttpIncomingResponseHeaderModificationRuleExample.id())
///             .ruleEnable("on")
///             .responseHeaderModifications(
///                 HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs.builder()
///                     .type("static")
///                     .value("add")
///                     .operation("add")
///                     .name("exampleadd")
///                     .build(),
///                 HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs.builder()
///                     .type("static")
///                     .operation("del")
///                     .name("exampledel")
///                     .build(),
///                 HttpIncomingResponseHeaderModificationRuleResponseHeaderModificationArgs.builder()
///                     .type("static")
///                     .value("modify")
///                     .operation("modify")
///                     .name("examplemodify")
///                     .build())
///             .rule("(http.host eq \"video.example.com\")")
///             .sequence(1)
///             .siteVersion(0)
///             .ruleName("exampleResponseHeader")
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
///   resourceHttpIncomingResponseHeaderModificationRuleExample:
///     type: alicloud:esa:RatePlanInstance
///     name: resource_HttpIncomingResponseHeaderModificationRule_example
///     properties:
///       type: NS
///       autoRenew: false
///       period: '1'
///       paymentType: Subscription
///       coverage: overseas
///       autoPay: true
///       planName: basic
///   resourceSiteHttpIncomingResponseHeaderModificationRuleExample:
///     type: alicloud:esa:Site
///     name: resource_Site_HttpIncomingResponseHeaderModificationRule_example
///     properties:
///       siteName: gositecdn${default.result}.cn
///       instanceId: ${resourceHttpIncomingResponseHeaderModificationRuleExample.id}
///       coverage: overseas
///       accessType: NS
///   defaultHttpIncomingResponseHeaderModificationRule:
///     type: alicloud:esa:HttpIncomingResponseHeaderModificationRule
///     name: default
///     properties:
///       siteId: ${resourceSiteHttpIncomingResponseHeaderModificationRuleExample.id}
///       ruleEnable: on
///       responseHeaderModifications:
///         - type: static
///           value: add
///           operation: add
///           name: exampleadd
///         - type: static
///           operation: del
///           name: exampledel
///         - type: static
///           value: modify
///           operation: modify
///           name: examplemodify
///       rule: (http.host eq "video.example.com")
///       sequence: '1'
///       siteVersion: '0'
///       ruleName: exampleResponseHeader
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Http Incoming Response Header Modification Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/httpIncomingResponseHeaderModificationRule:HttpIncomingResponseHeaderModificationRule example <site_id>:<config_id>
/// ```
class HttpIncomingResponseHeaderModificationRule extends pulumi.CustomResource {
  /// Config Id
  late final pulumi.Output<int> configId;
  /// Modify response headers, supporting add, delete, and modify operations. See `response_header_modification` below.
  late final pulumi.Output<List<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification>> responseHeaderModifications;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// Order of rule execution. The smaller the value, the higher the priority for execution.
  late final pulumi.Output<int?> sequence;
  /// The site ID.
  late final pulumi.Output<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Creates a new [HttpIncomingResponseHeaderModificationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpIncomingResponseHeaderModificationRule]. {@macro pulumi_esa_http_incoming_response_header_modification_rule_http_incoming_response_header_modification_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpIncomingResponseHeaderModificationRule(
    String name, {
    HttpIncomingResponseHeaderModificationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/httpIncomingResponseHeaderModificationRule:HttpIncomingResponseHeaderModificationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<int>('configId');
    this.responseHeaderModifications = registerOutput<List<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification>>('responseHeaderModifications');
    this.rule = registerOutput<String?>('rule');
    this.ruleEnable = registerOutput<String?>('ruleEnable');
    this.ruleName = registerOutput<String?>('ruleName');
    this.sequence = registerOutput<int?>('sequence');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int?>('siteVersion');
  }

  /// Gets an existing [HttpIncomingResponseHeaderModificationRule] resource's state with the given [name] and [id].
  static HttpIncomingResponseHeaderModificationRule get(
    String name,
    pulumi.Input<String> id, {
    HttpIncomingResponseHeaderModificationRuleState? state,
  }) {
    return HttpIncomingResponseHeaderModificationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HttpIncomingResponseHeaderModificationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/httpIncomingResponseHeaderModificationRule:HttpIncomingResponseHeaderModificationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.configId = registerOutput<int>('configId');
    this.responseHeaderModifications = registerOutput<List<HttpIncomingResponseHeaderModificationRuleResponseHeaderModification>>('responseHeaderModifications');
    this.rule = registerOutput<String?>('rule');
    this.ruleEnable = registerOutput<String?>('ruleEnable');
    this.ruleName = registerOutput<String?>('ruleName');
    this.sequence = registerOutput<int?>('sequence');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int?>('siteVersion');
  }
}
