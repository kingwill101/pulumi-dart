import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_rule_args.dart';
import 'origin_rule_state.dart';

/// Provides a ESA Origin Rule resource.
///
///
///
/// For information about ESA Origin Rule and how to use it, see [What is Origin Rule](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateOriginRule).
///
/// &gt; **NOTE:** Available since v1.244.0.
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
/// const _default = alicloud.esa.getSites({
///     planSubscribeType: "enterpriseplan",
/// });
/// const defaultOriginRule = new alicloud.esa.OriginRule("default", {
///     originSni: "origin.example.com",
///     siteId: _default.then(_default => _default.sites?.[0]?.id),
///     originHost: "origin.example.com",
///     dnsRecord: "tf.example.com",
///     siteVersion: 0,
///     ruleName: "tf",
///     originHttpsPort: "443",
///     originScheme: "http",
///     range: "on",
///     originHttpPort: "8080",
///     rule: "(http.host eq \"video.example.com\")",
///     ruleEnable: "on",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_origin_rule = alicloud.esa.OriginRule("default",
///     origin_sni="origin.example.com",
///     site_id=default.sites[0].id,
///     origin_host="origin.example.com",
///     dns_record="tf.example.com",
///     site_version=0,
///     rule_name="tf",
///     origin_https_port="443",
///     origin_scheme="http",
///     range="on",
///     origin_http_port="8080",
///     rule="(http.host eq \"video.example.com\")",
///     rule_enable="on")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         PlanSubscribeType = "enterpriseplan",
///     });
///
///     var defaultOriginRule = new AliCloud.Esa.OriginRule("default", new()
///     {
///         OriginSni = "origin.example.com",
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.Id)),
///         OriginHost = "origin.example.com",
///         DnsRecord = "tf.example.com",
///         SiteVersion = 0,
///         RuleName = "tf",
///         OriginHttpsPort = "443",
///         OriginScheme = "http",
///         Range = "on",
///         OriginHttpPort = "8080",
///         Rule = "(http.host eq \"video.example.com\")",
///         RuleEnable = "on",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := esa.GetSites(ctx, &esa.GetSitesArgs{
/// 			PlanSubscribeType: pulumi.StringRef("enterpriseplan"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewOriginRule(ctx, "default", &esa.OriginRuleArgs{
/// 			OriginSni:       pulumi.String("origin.example.com"),
/// 			SiteId:          pulumi.Int(_default.Sites[0].Id),
/// 			OriginHost:      pulumi.String("origin.example.com"),
/// 			DnsRecord:       pulumi.String("tf.example.com"),
/// 			SiteVersion:     pulumi.Int(0),
/// 			RuleName:        pulumi.String("tf"),
/// 			OriginHttpsPort: pulumi.String("443"),
/// 			OriginScheme:    pulumi.String("http"),
/// 			Range:           pulumi.String("on"),
/// 			OriginHttpPort:  pulumi.String("8080"),
/// 			Rule:            pulumi.String("(http.host eq \"video.example.com\")"),
/// 			RuleEnable:      pulumi.String("on"),
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
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
/// import com.pulumi.alicloud.esa.OriginRule;
/// import com.pulumi.alicloud.esa.OriginRuleArgs;
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
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .planSubscribeType("enterpriseplan")
///             .build());
///
///         var defaultOriginRule = new OriginRule("defaultOriginRule", OriginRuleArgs.builder()
///             .originSni("origin.example.com")
///             .siteId(default_.sites()[0].id())
///             .originHost("origin.example.com")
///             .dnsRecord("tf.example.com")
///             .siteVersion(0)
///             .ruleName("tf")
///             .originHttpsPort("443")
///             .originScheme("http")
///             .range("on")
///             .originHttpPort("8080")
///             .rule("(http.host eq \"video.example.com\")")
///             .ruleEnable("on")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultOriginRule:
///     type: alicloud:esa:OriginRule
///     name: default
///     properties:
///       originSni: origin.example.com
///       siteId: ${default.sites[0].id}
///       originHost: origin.example.com
///       dnsRecord: tf.example.com
///       siteVersion: '0'
///       ruleName: tf
///       originHttpsPort: '443'
///       originScheme: http
///       range: on
///       originHttpPort: '8080'
///       rule: (http.host eq "video.example.com")
///       ruleEnable: on
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Origin Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/originRule:OriginRule example <site_id>:<config_id>
/// ```
class OriginRule extends pulumi.CustomResource {
  /// Back-to-source rule configuration ID
  late final pulumi.Output<int> configId;

  /// Overwrite the DNS resolution record of the origin request.
  late final pulumi.Output<String?> dnsRecord;

  /// Return Source 302 follow switch. Value range:
  late final pulumi.Output<String?> follow302Enable;

  /// 302 follows the upper limit of the number of times, with a value range of [1-5].
  late final pulumi.Output<String?> follow302MaxTries;

  /// Retain the original request parameter switch. Value range:
  late final pulumi.Output<String?> follow302RetainArgs;

  /// Retain the original request header switch. Value range:
  late final pulumi.Output<String?> follow302RetainHeader;

  /// Modify the source host after 302.
  late final pulumi.Output<String?> follow302TargetHost;

  /// The HOST carried in the back-to-origin request.
  late final pulumi.Output<String?> originHost;

  /// The port of the origin station accessed when the HTTP protocol is used to return to the origin.
  late final pulumi.Output<String?> originHttpPort;

  /// The port of the origin station accessed when the HTTPS protocol is used to return to the origin.
  late final pulumi.Output<String?> originHttpsPort;

  /// The mtls switch. Value range:
  late final pulumi.Output<String?> originMtls;

  /// Read timeout interval of the source station (s).
  late final pulumi.Output<String?> originReadTimeout;

  /// The protocol used by the back-to-origin request. Value range:
  late final pulumi.Output<String?> originScheme;

  /// SNI carried in the back-to-origin request.
  late final pulumi.Output<String?> originSni;

  /// Source station certificate verification switch. Value range:
  late final pulumi.Output<String?> originVerify;

  /// Use the range sharding method to download the file from the source. Value range:
  late final pulumi.Output<String?> range;

  /// range shard size.
  late final pulumi.Output<String?> rangeChunkSize;

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

  /// Creates a new [OriginRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginRule]. {@macro pulumi_esa_origin_rule_origin_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginRule(
    String name, {
    OriginRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/originRule:OriginRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    dnsRecord = registerOutput<String?>('dnsRecord');
    follow302Enable = registerOutput<String?>('follow302Enable');
    follow302MaxTries = registerOutput<String?>('follow302MaxTries');
    follow302RetainArgs = registerOutput<String?>('follow302RetainArgs');
    follow302RetainHeader = registerOutput<String?>('follow302RetainHeader');
    follow302TargetHost = registerOutput<String?>('follow302TargetHost');
    originHost = registerOutput<String?>('originHost');
    originHttpPort = registerOutput<String?>('originHttpPort');
    originHttpsPort = registerOutput<String?>('originHttpsPort');
    originMtls = registerOutput<String?>('originMtls');
    originReadTimeout = registerOutput<String?>('originReadTimeout');
    originScheme = registerOutput<String?>('originScheme');
    originSni = registerOutput<String?>('originSni');
    originVerify = registerOutput<String?>('originVerify');
    range = registerOutput<String?>('range');
    rangeChunkSize = registerOutput<String?>('rangeChunkSize');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
  }

  /// Gets an existing [OriginRule] resource's state with the given [name] and [id].
  static OriginRule get(
    String name,
    pulumi.Input<String> id, {
    OriginRuleState? state,
  }) {
    return OriginRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OriginRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/originRule:OriginRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configId = registerOutput<int>('configId');
    dnsRecord = registerOutput<String?>('dnsRecord');
    follow302Enable = registerOutput<String?>('follow302Enable');
    follow302MaxTries = registerOutput<String?>('follow302MaxTries');
    follow302RetainArgs = registerOutput<String?>('follow302RetainArgs');
    follow302RetainHeader = registerOutput<String?>('follow302RetainHeader');
    follow302TargetHost = registerOutput<String?>('follow302TargetHost');
    originHost = registerOutput<String?>('originHost');
    originHttpPort = registerOutput<String?>('originHttpPort');
    originHttpsPort = registerOutput<String?>('originHttpsPort');
    originMtls = registerOutput<String?>('originMtls');
    originReadTimeout = registerOutput<String?>('originReadTimeout');
    originScheme = registerOutput<String?>('originScheme');
    originSni = registerOutput<String?>('originSni');
    originVerify = registerOutput<String?>('originVerify');
    range = registerOutput<String?>('range');
    rangeChunkSize = registerOutput<String?>('rangeChunkSize');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
  }
}
