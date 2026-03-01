import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_rule_args.dart';

/// Provides a ESA Cache Rule resource.
///
///
///
/// For information about ESA Cache Rule and how to use it, see [What is Cache Rule](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateCacheRule).
///
/// > **NOTE:** Available since v1.244.0.
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
/// const defaultCacheRule = new alicloud.esa.CacheRule("default", {
///     userDeviceType: "off",
///     browserCacheMode: "no_cache",
///     userLanguage: "off",
///     checkPresenceHeader: "headername",
///     includeCookie: "cookie_exapmle",
///     edgeCacheMode: "follow_origin",
///     additionalCacheablePorts: "2053",
///     ruleName: "rule_example",
///     edgeStatusCodeCacheTtl: "300",
///     browserCacheTtl: "300",
///     queryString: "example",
///     userGeo: "off",
///     sortQueryStringForCache: "off",
///     checkPresenceCookie: "cookiename",
///     cacheReserveEligibility: "bypass_cache_reserve",
///     queryStringMode: "ignore_all",
///     rule: "http.host eq \"video.example.com\"",
///     cacheDeceptionArmor: "off",
///     siteId: _default.then(_default => _default.sites?.[0]?.id),
///     bypassCache: "cache_all",
///     edgeCacheTtl: "300",
///     ruleEnable: "off",
///     siteVersion: 0,
///     includeHeader: "example",
///     serveStale: "off",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.esa.get_sites(plan_subscribe_type="enterpriseplan")
/// default_cache_rule = alicloud.esa.CacheRule("default",
///     user_device_type="off",
///     browser_cache_mode="no_cache",
///     user_language="off",
///     check_presence_header="headername",
///     include_cookie="cookie_exapmle",
///     edge_cache_mode="follow_origin",
///     additional_cacheable_ports="2053",
///     rule_name="rule_example",
///     edge_status_code_cache_ttl="300",
///     browser_cache_ttl="300",
///     query_string="example",
///     user_geo="off",
///     sort_query_string_for_cache="off",
///     check_presence_cookie="cookiename",
///     cache_reserve_eligibility="bypass_cache_reserve",
///     query_string_mode="ignore_all",
///     rule="http.host eq \"video.example.com\"",
///     cache_deception_armor="off",
///     site_id=default.sites[0].id,
///     bypass_cache="cache_all",
///     edge_cache_ttl="300",
///     rule_enable="off",
///     site_version=0,
///     include_header="example",
///     serve_stale="off")
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
///     var defaultCacheRule = new AliCloud.Esa.CacheRule("default", new()
///     {
///         UserDeviceType = "off",
///         BrowserCacheMode = "no_cache",
///         UserLanguage = "off",
///         CheckPresenceHeader = "headername",
///         IncludeCookie = "cookie_exapmle",
///         EdgeCacheMode = "follow_origin",
///         AdditionalCacheablePorts = "2053",
///         RuleName = "rule_example",
///         EdgeStatusCodeCacheTtl = "300",
///         BrowserCacheTtl = "300",
///         QueryString = "example",
///         UserGeo = "off",
///         SortQueryStringForCache = "off",
///         CheckPresenceCookie = "cookiename",
///         CacheReserveEligibility = "bypass_cache_reserve",
///         QueryStringMode = "ignore_all",
///         Rule = "http.host eq \"video.example.com\"",
///         CacheDeceptionArmor = "off",
///         SiteId = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.Id)),
///         BypassCache = "cache_all",
///         EdgeCacheTtl = "300",
///         RuleEnable = "off",
///         SiteVersion = 0,
///         IncludeHeader = "example",
///         ServeStale = "off",
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
/// 		_, err = esa.NewCacheRule(ctx, "default", &esa.CacheRuleArgs{
/// 			UserDeviceType:           pulumi.String("off"),
/// 			BrowserCacheMode:         pulumi.String("no_cache"),
/// 			UserLanguage:             pulumi.String("off"),
/// 			CheckPresenceHeader:      pulumi.String("headername"),
/// 			IncludeCookie:            pulumi.String("cookie_exapmle"),
/// 			EdgeCacheMode:            pulumi.String("follow_origin"),
/// 			AdditionalCacheablePorts: pulumi.String("2053"),
/// 			RuleName:                 pulumi.String("rule_example"),
/// 			EdgeStatusCodeCacheTtl:   pulumi.String("300"),
/// 			BrowserCacheTtl:          pulumi.String("300"),
/// 			QueryString:              pulumi.String("example"),
/// 			UserGeo:                  pulumi.String("off"),
/// 			SortQueryStringForCache:  pulumi.String("off"),
/// 			CheckPresenceCookie:      pulumi.String("cookiename"),
/// 			CacheReserveEligibility:  pulumi.String("bypass_cache_reserve"),
/// 			QueryStringMode:          pulumi.String("ignore_all"),
/// 			Rule:                     pulumi.String("http.host eq \"video.example.com\""),
/// 			CacheDeceptionArmor:      pulumi.String("off"),
/// 			SiteId:                   pulumi.Int(_default.Sites[0].Id),
/// 			BypassCache:              pulumi.String("cache_all"),
/// 			EdgeCacheTtl:             pulumi.String("300"),
/// 			RuleEnable:               pulumi.String("off"),
/// 			SiteVersion:              pulumi.Int(0),
/// 			IncludeHeader:            pulumi.String("example"),
/// 			ServeStale:               pulumi.String("off"),
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
/// import com.pulumi.alicloud.esa.CacheRule;
/// import com.pulumi.alicloud.esa.CacheRuleArgs;
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
///         var defaultCacheRule = new CacheRule("defaultCacheRule", CacheRuleArgs.builder()
///             .userDeviceType("off")
///             .browserCacheMode("no_cache")
///             .userLanguage("off")
///             .checkPresenceHeader("headername")
///             .includeCookie("cookie_exapmle")
///             .edgeCacheMode("follow_origin")
///             .additionalCacheablePorts("2053")
///             .ruleName("rule_example")
///             .edgeStatusCodeCacheTtl("300")
///             .browserCacheTtl("300")
///             .queryString("example")
///             .userGeo("off")
///             .sortQueryStringForCache("off")
///             .checkPresenceCookie("cookiename")
///             .cacheReserveEligibility("bypass_cache_reserve")
///             .queryStringMode("ignore_all")
///             .rule("http.host eq \"video.example.com\"")
///             .cacheDeceptionArmor("off")
///             .siteId(default_.sites()[0].id())
///             .bypassCache("cache_all")
///             .edgeCacheTtl("300")
///             .ruleEnable("off")
///             .siteVersion(0)
///             .includeHeader("example")
///             .serveStale("off")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultCacheRule:
///     type: alicloud:esa:CacheRule
///     name: default
///     properties:
///       userDeviceType: off
///       browserCacheMode: no_cache
///       userLanguage: off
///       checkPresenceHeader: headername
///       includeCookie: cookie_exapmle
///       edgeCacheMode: follow_origin
///       additionalCacheablePorts: '2053'
///       ruleName: rule_example
///       edgeStatusCodeCacheTtl: '300'
///       browserCacheTtl: '300'
///       queryString: example
///       userGeo: off
///       sortQueryStringForCache: off
///       checkPresenceCookie: cookiename
///       cacheReserveEligibility: bypass_cache_reserve
///       queryStringMode: ignore_all
///       rule: http.host eq "video.example.com"
///       cacheDeceptionArmor: off
///       siteId: ${default.sites[0].id}
///       bypassCache: cache_all
///       edgeCacheTtl: '300'
///       ruleEnable: off
///       siteVersion: '0'
///       includeHeader: example
///       serveStale: off
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         planSubscribeType: enterpriseplan
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Cache Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/cacheRule:CacheRule example <site_id>:<cache_rule_id>
/// ```
class CacheRule extends pulumi.CustomResource {
  /// Enable caching on specified ports. Value range: 8880, 2052, 2082, 2086, 2095, 2053, 2083, 2087, 2096
  late final pulumi.Output<String?> additionalCacheablePorts;
  /// Browser cache mode. Possible values:
  late final pulumi.Output<String?> browserCacheMode;
  /// Browser cache expiration time in seconds.
  late final pulumi.Output<String?> browserCacheTtl;
  /// Set the bypass cache mode. Possible values:
  late final pulumi.Output<String?> bypassCache;
  /// Cache deception protection. Used to defend against web cache deception attacks, only the cache content that passes the validation will be cached. Value range:
  late final pulumi.Output<String?> cacheDeceptionArmor;
  /// Cache retention eligibility. Used to control whether user requests bypass the cache retention node when returning to the origin. Possible values:
  late final pulumi.Output<String?> cacheReserveEligibility;
  /// Cache Rule Id.
  late final pulumi.Output<int> cacheRuleId;
  /// When generating the cache key, check if the cookie exists. If it does, add the cookie name (case-insensitive) to the cache key. Multiple cookie names are supported, separated by spaces.
  late final pulumi.Output<String?> checkPresenceCookie;
  /// When generating the cache key, check if the header exists. If it does, add the header name (case-insensitive) to the cache key. Multiple header names are supported, separated by spaces.
  late final pulumi.Output<String?> checkPresenceHeader;
  /// Edge cache mode. Possible values:
  late final pulumi.Output<String?> edgeCacheMode;
  /// Edge cache expiration time in seconds.
  late final pulumi.Output<String?> edgeCacheTtl;
  /// Status code cache expiration time in seconds.
  late final pulumi.Output<String?> edgeStatusCodeCacheTtl;
  /// When generating the cache key, add the specified cookie names and their values. Multiple values are supported, separated by spaces.
  late final pulumi.Output<String?> includeCookie;
  /// When generating the cache key, add the specified header names and their values. Multiple values are supported, separated by spaces.
  late final pulumi.Output<String?> includeHeader;
  /// Query strings to be reserved or excluded. Multiple values are supported, separated by spaces.
  late final pulumi.Output<String?> queryString;
  /// The processing mode for query strings when generating the cache key. Possible values:
  late final pulumi.Output<String?> queryStringMode;
  /// Rule content, using conditional expressions to match user requests. When adding global configuration, this parameter does not need to be set. There are two usage scenarios:
  /// - Match all incoming requests: value set to true.
  /// - Match specified request: Set the value to a custom expression, for example: (http.host eq \"video.example.com\").
  late final pulumi.Output<String?> rule;
  /// Rule switch. When adding global configuration, this parameter does not need to be set. Value range:
  late final pulumi.Output<String?> ruleEnable;
  /// Rule name. When adding global configuration, this parameter does not need to be set.
  late final pulumi.Output<String?> ruleName;
  /// The rule execution order prioritizes lower numerical values. It is only applicable when setting or modifying the order of individual rule configurations.
  late final pulumi.Output<int> sequence;
  /// Serve stale cache. When enabled, the node can still respond to user requests with expired cached files when the origin server is unavailable. Value range:
  late final pulumi.Output<String?> serveStale;
  /// The site ID, which can be obtained by calling the [ListSites] API.
  late final pulumi.Output<String> siteId;
  /// The version number of the site configuration. For sites that have enabled configuration version management, this parameter can be used to specify the effective version of the configuration site, which defaults to version 0.
  late final pulumi.Output<int?> siteVersion;
  /// Query string sorting, disabled by default. Possible values:
  late final pulumi.Output<String?> sortQueryStringForCache;
  /// When generating the cache key, add the client device type. Possible values:
  late final pulumi.Output<String?> userDeviceType;
  /// When generating the cache key, add the client's geographic location. Possible values:
  late final pulumi.Output<String?> userGeo;
  /// When generating cache keys, include the client's language type. Possible values:
  late final pulumi.Output<String?> userLanguage;

  /// Creates a new [CacheRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CacheRule]. {@macro pulumi_esa_cache_rule_cache_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CacheRule(
    String name, {
    CacheRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/cacheRule:CacheRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalCacheablePorts = registerOutput<String?>('additionalCacheablePorts');
    this.browserCacheMode = registerOutput<String?>('browserCacheMode');
    this.browserCacheTtl = registerOutput<String?>('browserCacheTtl');
    this.bypassCache = registerOutput<String?>('bypassCache');
    this.cacheDeceptionArmor = registerOutput<String?>('cacheDeceptionArmor');
    this.cacheReserveEligibility = registerOutput<String?>('cacheReserveEligibility');
    this.cacheRuleId = registerOutput<int>('cacheRuleId');
    this.checkPresenceCookie = registerOutput<String?>('checkPresenceCookie');
    this.checkPresenceHeader = registerOutput<String?>('checkPresenceHeader');
    this.edgeCacheMode = registerOutput<String?>('edgeCacheMode');
    this.edgeCacheTtl = registerOutput<String?>('edgeCacheTtl');
    this.edgeStatusCodeCacheTtl = registerOutput<String?>('edgeStatusCodeCacheTtl');
    this.includeCookie = registerOutput<String?>('includeCookie');
    this.includeHeader = registerOutput<String?>('includeHeader');
    this.queryString = registerOutput<String?>('queryString');
    this.queryStringMode = registerOutput<String?>('queryStringMode');
    this.rule = registerOutput<String?>('rule');
    this.ruleEnable = registerOutput<String?>('ruleEnable');
    this.ruleName = registerOutput<String?>('ruleName');
    this.sequence = registerOutput<int>('sequence');
    this.serveStale = registerOutput<String?>('serveStale');
    this.siteId = registerOutput<String>('siteId');
    this.siteVersion = registerOutput<int?>('siteVersion');
    this.sortQueryStringForCache = registerOutput<String?>('sortQueryStringForCache');
    this.userDeviceType = registerOutput<String?>('userDeviceType');
    this.userGeo = registerOutput<String?>('userGeo');
    this.userLanguage = registerOutput<String?>('userLanguage');
  }
}
