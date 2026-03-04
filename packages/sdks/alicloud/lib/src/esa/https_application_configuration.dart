import 'package:pulumi/pulumi.dart' as pulumi;
import 'https_application_configuration_args.dart';
import 'https_application_configuration_state.dart';

/// Provides a ESA Https Application Configuration resource.
///
///
///
/// For information about ESA Https Application Configuration and how to use it, see [What is Https Application Configuration](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateHttpsApplicationConfiguration).
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
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "httpsapplicationconfiguration.example.com",
///     instanceId: _default.then(_default => _default.sites?.[0]?.instanceId),
///     coverage: "domestic",
///     accessType: "NS",
/// });
/// const defaultHttpsApplicationConfiguration = new alicloud.esa.HttpsApplicationConfiguration("default", {
///     hstsMaxAge: "31536000",
///     altSvcClear: "off",
///     rule: "http.host eq \"video.example.com\"",
///     httpsForce: "off",
///     altSvcMa: "86400",
///     hsts: "off",
///     ruleName: "rule_example",
///     ruleEnable: "off",
///     siteId: defaultSite.id,
///     altSvcPersist: "off",
///     hstsPreload: "off",
///     hstsIncludeSubdomains: "off",
///     altSvc: "off",
///     httpsForceCode: "301",
///     siteVersion: 0,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_site = alicloud.esa.Site("default",
///     site_name="httpsapplicationconfiguration.example.com",
///     instance_id=default.sites[0].instance_id,
///     coverage="domestic",
///     access_type="NS")
/// default_https_application_configuration = alicloud.esa.HttpsApplicationConfiguration("default",
///     hsts_max_age="31536000",
///     alt_svc_clear="off",
///     rule="http.host eq \"video.example.com\"",
///     https_force="off",
///     alt_svc_ma="86400",
///     hsts="off",
///     rule_name="rule_example",
///     rule_enable="off",
///     site_id=default_site.id,
///     alt_svc_persist="off",
///     hsts_preload="off",
///     hsts_include_subdomains="off",
///     alt_svc="off",
///     https_force_code="301",
///     site_version=0)
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
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "httpsapplicationconfiguration.example.com",
///         InstanceId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.InstanceId)),
///         Coverage = "domestic",
///         AccessType = "NS",
///     });
///
///     var defaultHttpsApplicationConfiguration = new AliCloud.Esa.HttpsApplicationConfiguration("default", new()
///     {
///         HstsMaxAge = "31536000",
///         AltSvcClear = "off",
///         Rule = "http.host eq \"video.example.com\"",
///         HttpsForce = "off",
///         AltSvcMa = "86400",
///         Hsts = "off",
///         RuleName = "rule_example",
///         RuleEnable = "off",
///         SiteId = defaultSite.Id,
///         AltSvcPersist = "off",
///         HstsPreload = "off",
///         HstsIncludeSubdomains = "off",
///         AltSvc = "off",
///         HttpsForceCode = "301",
///         SiteVersion = 0,
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
/// 		defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:   pulumi.String("httpsapplicationconfiguration.example.com"),
/// 			InstanceId: pulumi.String(_default.Sites[0].InstanceId),
/// 			Coverage:   pulumi.String("domestic"),
/// 			AccessType: pulumi.String("NS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewHttpsApplicationConfiguration(ctx, "default", &esa.HttpsApplicationConfigurationArgs{
/// 			HstsMaxAge:            pulumi.String("31536000"),
/// 			AltSvcClear:           pulumi.String("off"),
/// 			Rule:                  pulumi.String("http.host eq \"video.example.com\""),
/// 			HttpsForce:            pulumi.String("off"),
/// 			AltSvcMa:              pulumi.String("86400"),
/// 			Hsts:                  pulumi.String("off"),
/// 			RuleName:              pulumi.String("rule_example"),
/// 			RuleEnable:            pulumi.String("off"),
/// 			SiteId:                defaultSite.ID(),
/// 			AltSvcPersist:         pulumi.String("off"),
/// 			HstsPreload:           pulumi.String("off"),
/// 			HstsIncludeSubdomains: pulumi.String("off"),
/// 			AltSvc:                pulumi.String("off"),
/// 			HttpsForceCode:        pulumi.String("301"),
/// 			SiteVersion:           pulumi.Int(0),
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
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.HttpsApplicationConfiguration;
/// import com.pulumi.alicloud.esa.HttpsApplicationConfigurationArgs;
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
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("httpsapplicationconfiguration.example.com")
///             .instanceId(default_.sites()[0].instanceId())
///             .coverage("domestic")
///             .accessType("NS")
///             .build());
///
///         var defaultHttpsApplicationConfiguration = new HttpsApplicationConfiguration("defaultHttpsApplicationConfiguration", HttpsApplicationConfigurationArgs.builder()
///             .hstsMaxAge("31536000")
///             .altSvcClear("off")
///             .rule("http.host eq \"video.example.com\"")
///             .httpsForce("off")
///             .altSvcMa("86400")
///             .hsts("off")
///             .ruleName("rule_example")
///             .ruleEnable("off")
///             .siteId(defaultSite.id())
///             .altSvcPersist("off")
///             .hstsPreload("off")
///             .hstsIncludeSubdomains("off")
///             .altSvc("off")
///             .httpsForceCode("301")
///             .siteVersion(0)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: httpsapplicationconfiguration.example.com
///       instanceId: ${default.sites[0].instanceId}
///       coverage: domestic
///       accessType: NS
///   defaultHttpsApplicationConfiguration:
///     type: alicloud:esa:HttpsApplicationConfiguration
///     name: default
///     properties:
///       hstsMaxAge: '31536000'
///       altSvcClear: off
///       rule: http.host eq "video.example.com"
///       httpsForce: off
///       altSvcMa: '86400'
///       hsts: off
///       ruleName: rule_example
///       ruleEnable: off
///       siteId: ${defaultSite.id}
///       altSvcPersist: off
///       hstsPreload: off
///       hstsIncludeSubdomains: off
///       altSvc: off
///       httpsForceCode: '301'
///       siteVersion: '0'
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
/// ESA Https Application Configuration can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/httpsApplicationConfiguration:HttpsApplicationConfiguration example <site_id>:<config_id>
/// ```
class HttpsApplicationConfiguration extends pulumi.CustomResource {
  /// Function switch, default off. Value range:
  late final pulumi.Output<String?> altSvc;

  /// Alt-Svc whether The header contains the clear parameter. This parameter is disabled by default. Value range:
  late final pulumi.Output<String?> altSvcClear;

  /// The effective time of the Alt-Svc, in seconds. The default value is 86400 seconds.
  late final pulumi.Output<String?> altSvcMa;

  /// Alt-Svc whether The header contains the persist parameter. This parameter is disabled by default. Value range:
  late final pulumi.Output<String?> altSvcPersist;

  /// Config Id
  late final pulumi.Output<int> configId;

  /// Whether to enable HSTS. It is disabled by default. Value range:
  late final pulumi.Output<String?> hsts;

  /// Whether to include subdomains in HSTS is disabled by default. Value range:
  late final pulumi.Output<String?> hstsIncludeSubdomains;

  /// The expiration time of HSTS, in seconds.
  late final pulumi.Output<String?> hstsMaxAge;

  /// Whether to enable HSTS preloading. It is disabled by default. Value range:
  late final pulumi.Output<String?> hstsPreload;

  /// Whether to enable forced HTTPS. It is disabled by default. Value range:
  late final pulumi.Output<String?> httpsForce;

  /// Forced HTTPS jump status code, value range:
  late final pulumi.Output<String?> httpsForceCode;

  /// Whether to enable to reject TLS handshake requests without SNI. This parameter is disabled by default. Value range:
  late final pulumi.Output<String?> httpsNoSniDeny;

  /// Whether to enable SNI verification. It is disabled by default. Value range:
  late final pulumi.Output<String?> httpsSniVerify;

  /// Specifies the list of allowed SNI whitelists, separated by spaces.
  late final pulumi.Output<String?> httpsSniWhitelist;

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

  /// The site ID, which can be obtained by calling the ListSites API.
  late final pulumi.Output<String> siteId;

  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;

  /// Creates a new [HttpsApplicationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpsApplicationConfiguration]. {@macro pulumi_esa_https_application_configuration_https_application_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpsApplicationConfiguration(
    String name, {
    HttpsApplicationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/httpsApplicationConfiguration:HttpsApplicationConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    altSvc = registerOutput<String?>('altSvc');
    altSvcClear = registerOutput<String?>('altSvcClear');
    altSvcMa = registerOutput<String?>('altSvcMa');
    altSvcPersist = registerOutput<String?>('altSvcPersist');
    configId = registerOutput<int>('configId');
    hsts = registerOutput<String?>('hsts');
    hstsIncludeSubdomains = registerOutput<String?>('hstsIncludeSubdomains');
    hstsMaxAge = registerOutput<String?>('hstsMaxAge');
    hstsPreload = registerOutput<String?>('hstsPreload');
    httpsForce = registerOutput<String?>('httpsForce');
    httpsForceCode = registerOutput<String?>('httpsForceCode');
    httpsNoSniDeny = registerOutput<String?>('httpsNoSniDeny');
    httpsSniVerify = registerOutput<String?>('httpsSniVerify');
    httpsSniWhitelist = registerOutput<String?>('httpsSniWhitelist');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
  }

  /// Gets an existing [HttpsApplicationConfiguration] resource's state with the given [name] and [id].
  static HttpsApplicationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    HttpsApplicationConfigurationState? state,
  }) {
    return HttpsApplicationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HttpsApplicationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:esa/httpsApplicationConfiguration:HttpsApplicationConfiguration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    altSvc = registerOutput<String?>('altSvc');
    altSvcClear = registerOutput<String?>('altSvcClear');
    altSvcMa = registerOutput<String?>('altSvcMa');
    altSvcPersist = registerOutput<String?>('altSvcPersist');
    configId = registerOutput<int>('configId');
    hsts = registerOutput<String?>('hsts');
    hstsIncludeSubdomains = registerOutput<String?>('hstsIncludeSubdomains');
    hstsMaxAge = registerOutput<String?>('hstsMaxAge');
    hstsPreload = registerOutput<String?>('hstsPreload');
    httpsForce = registerOutput<String?>('httpsForce');
    httpsForceCode = registerOutput<String?>('httpsForceCode');
    httpsNoSniDeny = registerOutput<String?>('httpsNoSniDeny');
    httpsSniVerify = registerOutput<String?>('httpsSniVerify');
    httpsSniWhitelist = registerOutput<String?>('httpsSniWhitelist');
    rule = registerOutput<String?>('rule');
    ruleEnable = registerOutput<String?>('ruleEnable');
    ruleName = registerOutput<String?>('ruleName');
    sequence = registerOutput<int>('sequence');
    siteId = registerOutput<String>('siteId');
    siteVersion = registerOutput<int?>('siteVersion');
  }
}
