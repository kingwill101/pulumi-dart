import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_args.dart';

/// Provides a ESA Site resource.
///
///
///
/// For information about ESA Site and how to use it, see [What is Site](https://www.alibabacloud.com/help/en/edge-security-acceleration/esa/user-guide/site-management).
///
/// > **NOTE:** Available since v1.234.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultIEoDfU = new alicloud.esa.RatePlanInstance("defaultIEoDfU", {
///     type: "NS",
///     autoRenew: true,
///     period: 1,
///     paymentType: "Subscription",
///     coverage: "overseas",
///     autoPay: true,
///     planName: "basic",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: `bcd${defaultInteger.result}.com`,
///     coverage: "overseas",
///     accessType: "NS",
///     instanceId: defaultIEoDfU.id,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
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
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_i_eo_df_u = alicloud.esa.RatePlanInstance("defaultIEoDfU",
///     type="NS",
///     auto_renew=True,
///     period=1,
///     payment_type="Subscription",
///     coverage="overseas",
///     auto_pay=True,
///     plan_name="basic")
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_site = alicloud.esa.Site("default",
///     site_name=f"bcd{default_integer['result']}.com",
///     coverage="overseas",
///     access_type="NS",
///     instance_id=default_i_eo_df_u.id,
///     resource_group_id=default.ids[0])
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultIEoDfU = new AliCloud.Esa.RatePlanInstance("defaultIEoDfU", new()
///     {
///         Type = "NS",
///         AutoRenew = true,
///         Period = 1,
///         PaymentType = "Subscription",
///         Coverage = "overseas",
///         AutoPay = true,
///         PlanName = "basic",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = $"bcd{defaultInteger.Result}.com",
///         Coverage = "overseas",
///         AccessType = "NS",
///         InstanceId = defaultIEoDfU.Id,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIEoDfU, err := esa.NewRatePlanInstance(ctx, "defaultIEoDfU", &esa.RatePlanInstanceArgs{
/// 			Type:        pulumi.String("NS"),
/// 			AutoRenew:   pulumi.Bool(true),
/// 			Period:      pulumi.Int(1),
/// 			PaymentType: pulumi.String("Subscription"),
/// 			Coverage:    pulumi.String("overseas"),
/// 			AutoPay:     pulumi.Bool(true),
/// 			PlanName:    pulumi.String("basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = esa.NewSite(ctx, "default", &esa.SiteArgs{
/// 			SiteName:        pulumi.Sprintf("bcd%v.com", defaultInteger.Result),
/// 			Coverage:        pulumi.String("overseas"),
/// 			AccessType:      pulumi.String("NS"),
/// 			InstanceId:      defaultIEoDfU.ID(),
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.esa.RatePlanInstance;
/// import com.pulumi.alicloud.esa.RatePlanInstanceArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultIEoDfU = new RatePlanInstance("defaultIEoDfU", RatePlanInstanceArgs.builder()
///             .type("NS")
///             .autoRenew(true)
///             .period(1)
///             .paymentType("Subscription")
///             .coverage("overseas")
///             .autoPay(true)
///             .planName("basic")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName(String.format("bcd%s.com", defaultInteger.result()))
///             .coverage("overseas")
///             .accessType("NS")
///             .instanceId(defaultIEoDfU.id())
///             .resourceGroupId(default_.ids()[0])
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
///   defaultIEoDfU:
///     type: alicloud:esa:RatePlanInstance
///     properties:
///       type: NS
///       autoRenew: true
///       period: '1'
///       paymentType: Subscription
///       coverage: overseas
///       autoPay: true
///       planName: basic
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: bcd${defaultInteger.result}.com
///       coverage: overseas
///       accessType: NS
///       instanceId: ${defaultIEoDfU.id}
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ESA Site can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:esa/site:Site example <id>
/// ```
class Site extends pulumi.CustomResource {
  /// The DNS setup. Valid values:
  /// - `NS`
  /// - `CNAME`
  late final pulumi.Output<String?> accessType;
  /// Add visitor geolocation header. Value range:
  late final pulumi.Output<String?> addClientGeolocationHeader;
  /// Add the "ali-real-client-ip" header containing the real client IP. Value range:
  late final pulumi.Output<String?> addRealClientIpHeader;
  /// Multi-level cache architecture mode. Possible values:
  late final pulumi.Output<String> cacheArchitectureMode;
  /// Site cache hold switch. Value:
  late final pulumi.Output<String?> cacheReserveEnable;
  /// The ID of the cache instance.
  late final pulumi.Output<String?> cacheReserveInstanceId;
  /// Whether the custom CacheTag name ignores case. Value range:
  late final pulumi.Output<String?> caseInsensitive;
  /// The service location. Valid values:
  late final pulumi.Output<String?> coverage;
  /// The time when the website was added. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether to enable mainland China network access optimization, the default is off. Value range:
  late final pulumi.Output<String?> crossBorderOptimization;
  /// Development mode configuration function switch. Value range:
  late final pulumi.Output<String?> developmentMode;
  /// CNAME flattening mode. Possible values:
  late final pulumi.Output<String?> flattenMode;
  /// The ID of the associated package instance.
  late final pulumi.Output<String> instanceId;
  /// Specifies whether to enable IPv6. Valid values:
  late final pulumi.Output<String> ipv6Enable;
  /// The region in which Ipv6 is enabled. The default value is x.x:
  /// - 'x.x': Global.
  /// - 'Cn.cn ': Mainland China.
  late final pulumi.Output<String> ipv6Region;
  /// Specifies whether to temporarily pause ESA on the website. If you set this parameter to true, all requests to the domains in your DNS records go directly to your origin server. Valid values:
  late final pulumi.Output<bool?> paused;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Release the search engine crawler configuration. Value:
  late final pulumi.Output<String?> seoBypass;
  /// The website name.
  late final pulumi.Output<String> siteName;
  /// Specifies whether to enable site hold.After you enable site hold, other accounts cannot add your website domain or its subdomains to ESA. Valid values:
  late final pulumi.Output<String?> siteNameExclusive;
  /// The version number of the site. For sites with version management enabled, you can use this parameter to specify the site version for which the configuration will take effect, defaulting to version 0.
  late final pulumi.Output<int?> siteVersion;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// Custom CacheTag name.
  late final pulumi.Output<String?> tagName;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Version management enabled. When true, version management is turned on for the table site.
  late final pulumi.Output<bool?> versionManagement;

  /// Creates a new [Site].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Site]. {@macro pulumi_esa_site_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Site(
    String name, {
    SiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:esa/site:Site',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String?>('accessType');
    this.addClientGeolocationHeader = registerOutput<String?>('addClientGeolocationHeader');
    this.addRealClientIpHeader = registerOutput<String?>('addRealClientIpHeader');
    this.cacheArchitectureMode = registerOutput<String>('cacheArchitectureMode');
    this.cacheReserveEnable = registerOutput<String?>('cacheReserveEnable');
    this.cacheReserveInstanceId = registerOutput<String?>('cacheReserveInstanceId');
    this.caseInsensitive = registerOutput<String?>('caseInsensitive');
    this.coverage = registerOutput<String?>('coverage');
    this.createTime = registerOutput<String>('createTime');
    this.crossBorderOptimization = registerOutput<String?>('crossBorderOptimization');
    this.developmentMode = registerOutput<String?>('developmentMode');
    this.flattenMode = registerOutput<String?>('flattenMode');
    this.instanceId = registerOutput<String>('instanceId');
    this.ipv6Enable = registerOutput<String>('ipv6Enable');
    this.ipv6Region = registerOutput<String>('ipv6Region');
    this.paused = registerOutput<bool?>('paused');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.seoBypass = registerOutput<String?>('seoBypass');
    this.siteName = registerOutput<String>('siteName');
    this.siteNameExclusive = registerOutput<String?>('siteNameExclusive');
    this.siteVersion = registerOutput<int?>('siteVersion');
    this.status = registerOutput<String>('status');
    this.tagName = registerOutput<String?>('tagName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.versionManagement = registerOutput<bool?>('versionManagement');
  }
}
