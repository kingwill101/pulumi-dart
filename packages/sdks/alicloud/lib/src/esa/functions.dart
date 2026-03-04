import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sites_args.dart';
import 'get_sites_result.dart';

/// This data source provides Esa Site available to the user.[What is Site](https://next.api.alibabacloud.com/document/ESA/2024-09-10/CreateSite)
///
/// &gt; **NOTE:** Available since v1.244.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const defaultIEoDfU = new alicloud.esa.RatePlanInstance("defaultIEoDfU", {
///     type: "NS",
///     autoRenew: true,
///     period: 1,
///     paymentType: "Subscription",
///     coverage: "overseas",
///     autoPay: true,
///     planName: "basic",
/// });
/// const defaultSite = new alicloud.esa.Site("default", {
///     siteName: "bcd.com",
///     coverage: "overseas",
///     accessType: "NS",
///     instanceId: defaultIEoDfU.id,
/// });
/// const _default = alicloud.esa.getSitesOutput({
///     ids: [defaultSite.id],
///     nameRegex: defaultSite.siteName,
///     siteName: "bcd.com",
/// });
/// export const alicloudEsaSiteExampleId = _default.apply(_default => _default.sites?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_i_eo_df_u = alicloud.esa.RatePlanInstance("defaultIEoDfU",
///     type="NS",
///     auto_renew=True,
///     period=1,
///     payment_type="Subscription",
///     coverage="overseas",
///     auto_pay=True,
///     plan_name="basic")
/// default_site = alicloud.esa.Site("default",
///     site_name="bcd.com",
///     coverage="overseas",
///     access_type="NS",
///     instance_id=default_i_eo_df_u.id)
/// default = alicloud.esa.get_sites_output(ids=[default_site.id],
///     name_regex=default_site.site_name,
///     site_name="bcd.com")
/// pulumi.export("alicloudEsaSiteExampleId", default.sites[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
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
///     var defaultSite = new AliCloud.Esa.Site("default", new()
///     {
///         SiteName = "bcd.com",
///         Coverage = "overseas",
///         AccessType = "NS",
///         InstanceId = defaultIEoDfU.Id,
///     });
///
///     var @default = AliCloud.Esa.GetSites.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultSite.Id,
///         },
///         NameRegex = defaultSite.SiteName,
///         SiteName = "bcd.com",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEsaSiteExampleId"] = @default.Apply(@default => @default.Apply(getSitesResult => getSitesResult.Sites[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/esa"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultIEoDfU, err := esa.NewRatePlanInstance(ctx, "defaultIEoDfU", &esa.RatePlanInstanceArgs{
/// Type: pulumi.String("NS"),
/// AutoRenew: pulumi.Bool(true),
/// Period: pulumi.Int(1),
/// PaymentType: pulumi.String("Subscription"),
/// Coverage: pulumi.String("overseas"),
/// AutoPay: pulumi.Bool(true),
/// PlanName: pulumi.String("basic"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSite, err := esa.NewSite(ctx, "default", &esa.SiteArgs{
/// SiteName: pulumi.String("bcd.com"),
/// Coverage: pulumi.String("overseas"),
/// AccessType: pulumi.String("NS"),
/// InstanceId: defaultIEoDfU.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _default := esa.GetSitesOutput(ctx, esa.GetSitesOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultSite.ID(),
/// },
/// NameRegex: defaultSite.SiteName,
/// SiteName: pulumi.String("bcd.com"),
/// }, nil);
/// ctx.Export("alicloudEsaSiteExampleId", _default.ApplyT(func(_default esa.GetSitesResult) (*int, error) {
/// return &default.Sites[0].Id, nil
/// }).(pulumi.IntPtrOutput))
/// return nil
/// })
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
/// import com.pulumi.alicloud.esa.Site;
/// import com.pulumi.alicloud.esa.SiteArgs;
/// import com.pulumi.alicloud.esa.EsaFunctions;
/// import com.pulumi.alicloud.esa.inputs.GetSitesArgs;
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
///         var defaultSite = new Site("defaultSite", SiteArgs.builder()
///             .siteName("bcd.com")
///             .coverage("overseas")
///             .accessType("NS")
///             .instanceId(defaultIEoDfU.id())
///             .build());
///
///         final var default = EsaFunctions.getSites(GetSitesArgs.builder()
///             .ids(defaultSite.id())
///             .nameRegex(defaultSite.siteName())
///             .siteName("bcd.com")
///             .build());
///
///         ctx.export("alicloudEsaSiteExampleId", default_.applyValue(_default_ -> _default_.sites()[0].id()));
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
///   defaultSite:
///     type: alicloud:esa:Site
///     name: default
///     properties:
///       siteName: bcd.com
///       coverage: overseas
///       accessType: NS
///       instanceId: ${defaultIEoDfU.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:esa:getSites
///       arguments:
///         ids:
///           - ${defaultSite.id}
///         nameRegex: ${defaultSite.siteName}
///         siteName: bcd.com
/// outputs:
///   alicloudEsaSiteExampleId: ${default.sites[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_esa_get_sites_get_sites_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSitesResult> getSites(
  GetSitesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:esa/getSites:getSites',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSitesResult.fromMap(result);
}
