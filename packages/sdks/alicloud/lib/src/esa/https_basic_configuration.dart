import 'package:pulumi/pulumi.dart' as pulumi;
import 'https_basic_configuration_args.dart';
import 'https_basic_configuration_state.dart';

/// Provides a ESA Https Basic Configuration resource.
///
///
///
/// For information about ESA Https Basic Configuration and how to use it, see [What is Https Basic Configuration](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateHttpsBasicConfiguration).
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
/// const example = new alicloud.esa.RatePlanInstance("example", {
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
/// const resourceHttpBasicConfigurationSetExample = new alicloud.esa.Site("resource_HttpBasicConfiguration_set_example", {
///     siteName: `gositecdn-${_default.result}.cn`,
///     instanceId: example.id,
///     coverage: "overseas",
///     accessType: "NS",
/// });
/// const defaultHttpsBasicConfiguration = new alicloud.esa.HttpsBasicConfiguration("default", {
///     https: "on",
///     rule: "true",
///     ruleName: "example2",
///     siteId: resourceHttpBasicConfigurationSetExample.id,
///     ruleEnable: "on",
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
/// example = alicloud.esa.RatePlanInstance("example",
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
/// resource_http_basic_configuration_set_example = alicloud.esa.Site("resource_HttpBasicConfiguration_set_example",
///     site_name=f"gositecdn-{default['result']}.cn",
///     instance_id=example.id,
///     coverage="overseas",
///     access_type="NS")
/// default_https_basic_configuration = alicloud.esa.HttpsBasicConfiguration("default",
///     https="on",
///     rule="true",
///     rule_name="example2",
///     site_id=resource_http_basic_configuration_set_example.id,
///     rule_enable="on")
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
///     var example = new AliCloud.Esa.RatePlanInstance("example", new()
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
///     var resourceHttpBasicConfigurationSetExample = new AliCloud.Esa.Site("resource_HttpBasicConfiguration_set_example", new()
///     {
///         SiteName = $"gositecdn-{@default.Result}.cn",
///         InstanceId = example.Id,
///         Coverage = "overseas",
///         AccessType = "NS",
///     });
///
///     var defaultHttpsBasicConfiguration = new AliCloud.Esa.HttpsBasicConfiguration("default", new()
///     {
///         Https = "on",
///         Rule = "true",
///         RuleName = "example2",
///         SiteId = resourceHttpBasicConfigurationSetExample.Id,
///         RuleEnable = "on",
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
/// 		example, err := esa.NewRatePlanInstance(ctx, "example", &esa.RatePlanInstanceArgs{
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
/// 		resourceHttpBasicConfigurationSetExample, err := esa.NewSite(ctx, "resource_HttpBasicConfiguration_set_example", &esa.SiteArgs{
/// 			SiteName:   pulumi.Sprintf("gositecdn-%v.cn", _default.Result),
/// 			InstanceId: example.ID(),
/// 			Coverage:   pulumi.String("overseas"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewHttpsBasicConfiguration(ctx, "default", &esa.HttpsBasicConfigurationArgs{
/// 			Https:      pulumi.String("on"),
/// 			Rule:       pulumi.String("true"),
/// 			RuleName:   pulumi.String("example2"),
/// 			SiteId:     resourceHttpBasicConfigurationSetExample.ID(),
/// 			RuleEnable: pulumi.String("on"),
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
/// import com.pulumi.alicloud.esa.HttpsBasicConfiguration;
/// import com.pulumi.alicloud.esa.HttpsBasicConfigurationArgs;
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
///         var example = new RatePlanInstance("example", RatePlanInstanceArgs.builder()
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
///         var resourceHttpBasicConfigurationSetExample = new Site("resourceHttpBasicConfigurationSetExample", SiteArgs.builder()
///             .siteName(String.format("gositecdn-%s.cn", default_.result()))
///             .instanceId(example.id())
///             .coverage("overseas")
///             .accessType("NS")
///             .build());
///
///         var defaultHttpsBasicConfiguration = new HttpsBasicConfiguration("defaultHttpsBasicConfiguration", HttpsBasicConfigurationArgs.builder()
///             .https("on")
///             .rule("true")
///             .ruleName("example2")
///             .siteId(resourceHttpBasicConfigurationSetExample.id())
///             .ruleEnable("on")
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
///   example:
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
///   resourceHttpBasicConfigurationSetExample:
///     type: alicloud:esa:Site
///     name: resource_HttpBasicConfiguration_set_example
///     properties:
///       siteName: gositecdn-${default.result}.cn
///       instanceId: ${example.id}
///       coverage: overseas
///       accessType: NS
///   defaultHttpsBasicConfiguration:
///     type: alicloud:esa:HttpsBasicConfiguration
///     name: default
///     properties:
///       https: on
///       rule: 'true'
///       ruleName: example2
///       siteId: ${resourceHttpBasicConfigurationSetExample.id}
///       ruleEnable: on
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Https Basic Configuration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/httpsBasicConfiguration:HttpsBasicConfiguration example <site_id>:<config_id>
/// ```
class HttpsBasicConfiguration extends pulumi.CustomResource {
  /// Custom cipher suite, indicating the specific encryption algorithm selected when CiphersuiteGroup is set to custom.
  late final pulumi.Output<String?> ciphersuite;
  /// Cipher suite group. Default is all cipher suites. Possible values:
  /// - all: All cipher suites.
  /// - strict: Strong cipher suites.
  /// - custom: Custom cipher suites.
  late final pulumi.Output<String?> ciphersuiteGroup;
  /// ConfigId of the configuration, which can be obtained by calling the [ListHttpsBasicConfigurations](https://www.alibabacloud.com/help/en/doc-detail/2867470.html) interface.
  late final pulumi.Output<int> configId;
  /// Indicates whether HTTP2 is enabled. Default is on. Possible values:
  /// - on: Enabled.
  /// - off: Disabled.
  late final pulumi.Output<String?> http2;
  /// Whether to enable HTTP3, which is enabled by default. The value can be:
  /// - on: Enabled.
  /// - off: Disabled.
  late final pulumi.Output<String?> http3;
  /// Whether to enable HTTPS. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  late final pulumi.Output<String?> https;
  /// Indicates whether OCSP is enabled. Default is off. Possible values:
  /// - on: Enabled.
  /// - off: Disabled.
  late final pulumi.Output<String?> ocspStapling;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// -  Match all incoming requests: value set to true
  /// -  Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\")
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  /// - on: open.
  /// - off: close.
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;
  /// Site ID, which can be obtained by calling the ListSites interface.
  late final pulumi.Output<String> siteId;
  /// Whether to enable TLS1.0. Default is disabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  late final pulumi.Output<String?> tls10;
  /// Whether to enable TLS1.1. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  late final pulumi.Output<String?> tls11;
  /// Whether to enable TLS1.2. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  late final pulumi.Output<String?> tls12;
  /// Whether to enable TLS1.3. Default is enabled. Possible values:
  /// - on: Enable.
  /// - off: Disable.
  late final pulumi.Output<String?> tls13;

  /// Creates a new [HttpsBasicConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpsBasicConfiguration]. {@macro pulumi_esa_https_basic_configuration_https_basic_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpsBasicConfiguration(
    String name, {
    HttpsBasicConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/httpsBasicConfiguration:HttpsBasicConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ciphersuite = registerOutput<String?>('ciphersuite');
    ciphersuiteGroup = registerOutput<String?>('ciphersuiteGroup');
    configId = registerOutput<int>('configId');
    http2 = registerOutput<String?>('http2');
    http3 = registerOutput<String?>('http3');
    https = registerOutput<String?>('https');
    ocspStapling = registerOutput<String?>('ocspStapling');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    tls10 = registerOutput<String?>('tls10');
    tls11 = registerOutput<String?>('tls11');
    tls12 = registerOutput<String?>('tls12');
    tls13 = registerOutput<String?>('tls13');
  }

  /// Gets an existing [HttpsBasicConfiguration] resource's state with the given [name] and [id].
  static HttpsBasicConfiguration get(
    String name,
    pulumi.Input<String> id, {
    HttpsBasicConfigurationState? state,
  }) {
    return HttpsBasicConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HttpsBasicConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/httpsBasicConfiguration:HttpsBasicConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ciphersuite = registerOutput<String?>('ciphersuite');
    ciphersuiteGroup = registerOutput<String?>('ciphersuiteGroup');
    configId = registerOutput<int>('configId');
    http2 = registerOutput<String?>('http2');
    http3 = registerOutput<String?>('http3');
    https = registerOutput<String?>('https');
    ocspStapling = registerOutput<String?>('ocspStapling');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    tls10 = registerOutput<String?>('tls10');
    tls11 = registerOutput<String?>('tls11');
    tls12 = registerOutput<String?>('tls12');
    tls13 = registerOutput<String?>('tls13');
  }
}
