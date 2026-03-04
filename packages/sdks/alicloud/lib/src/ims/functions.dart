import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oidc_providers_args.dart';
import 'get_oidc_providers_result.dart';

/// This data source provides Ims Oidc Provider available to the user.[What is Oidc Provider](https://next.api.alibabacloud.com/document/Ims/2019-08-15/CreateOIDCProvider)
///
/// &gt; **NOTE:** Available since v1.248.0.
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
/// const oidcProviderName = config.get("oidcProviderName") || "amp-resource-example-oidc-provider";
/// const defaultOidcProvider = new alicloud.ims.OidcProvider("default", {
///     description: oidcProviderName,
///     issuerUrl: "https://oauth.aliyun.com",
///     fingerprints: ["0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71"],
///     issuanceLimitTime: 12,
///     oidcProviderName: oidcProviderName,
///     clientIds: [
///         "123",
///         "456",
///     ],
/// });
/// const _default = alicloud.ims.getOidcProvidersOutput({
///     ids: [defaultOidcProvider.id],
/// });
/// export const alicloudImsOidcProviderExampleId = _default.apply(_default => _default.providers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// oidc_provider_name = config.get("oidcProviderName")
/// if oidc_provider_name is None:
///     oidc_provider_name = "amp-resource-example-oidc-provider"
/// default_oidc_provider = alicloud.ims.OidcProvider("default",
///     description=oidc_provider_name,
///     issuer_url="https://oauth.aliyun.com",
///     fingerprints=["0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71"],
///     issuance_limit_time=12,
///     oidc_provider_name=oidc_provider_name,
///     client_ids=[
///         "123",
///         "456",
///     ])
/// default = alicloud.ims.get_oidc_providers_output(ids=[default_oidc_provider.id])
/// pulumi.export("alicloudImsOidcProviderExampleId", default.providers[0].id)
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
///     var oidcProviderName = config.Get("oidcProviderName") ?? "amp-resource-example-oidc-provider";
///     var defaultOidcProvider = new AliCloud.Ims.OidcProvider("default", new()
///     {
///         Description = oidcProviderName,
///         IssuerUrl = "https://oauth.aliyun.com",
///         Fingerprints = new[]
///         {
///             "0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71",
///         },
///         IssuanceLimitTime = 12,
///         OidcProviderName = oidcProviderName,
///         ClientIds = new[]
///         {
///             "123",
///             "456",
///         },
///     });
///
///     var @default = AliCloud.Ims.GetOidcProviders.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultOidcProvider.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudImsOidcProviderExampleId"] = @default.Apply(@default => @default.Apply(getOidcProvidersResult => getOidcProvidersResult.Providers[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ims"
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
/// oidcProviderName := "amp-resource-example-oidc-provider";
/// if param := cfg.Get("oidcProviderName"); param != ""{
/// oidcProviderName = param
/// }
/// defaultOidcProvider, err := ims.NewOidcProvider(ctx, "default", &ims.OidcProviderArgs{
/// Description: pulumi.String(oidcProviderName),
/// IssuerUrl: pulumi.String("https://oauth.aliyun.com"),
/// Fingerprints: pulumi.StringArray{
/// pulumi.String("0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71"),
/// },
/// IssuanceLimitTime: pulumi.Int(12),
/// OidcProviderName: pulumi.String(oidcProviderName),
/// ClientIds: pulumi.StringArray{
/// pulumi.String("123"),
/// pulumi.String("456"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _default := ims.GetOidcProvidersOutput(ctx, ims.GetOidcProvidersOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultOidcProvider.ID(),
/// },
/// }, nil);
/// ctx.Export("alicloudImsOidcProviderExampleId", _default.ApplyT(func(_default ims.GetOidcProvidersResult) (*string, error) {
/// return &default.Providers[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.ims.OidcProvider;
/// import com.pulumi.alicloud.ims.OidcProviderArgs;
/// import com.pulumi.alicloud.ims.ImsFunctions;
/// import com.pulumi.alicloud.ims.inputs.GetOidcProvidersArgs;
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
///         final var oidcProviderName = config.get("oidcProviderName").orElse("amp-resource-example-oidc-provider");
///         var defaultOidcProvider = new OidcProvider("defaultOidcProvider", OidcProviderArgs.builder()
///             .description(oidcProviderName)
///             .issuerUrl("https://oauth.aliyun.com")
///             .fingerprints("0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71")
///             .issuanceLimitTime(12)
///             .oidcProviderName(oidcProviderName)
///             .clientIds(
///                 "123",
///                 "456")
///             .build());
///
///         final var default = ImsFunctions.getOidcProviders(GetOidcProvidersArgs.builder()
///             .ids(defaultOidcProvider.id())
///             .build());
///
///         ctx.export("alicloudImsOidcProviderExampleId", default_.applyValue(_default_ -> _default_.providers()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   oidcProviderName:
///     type: string
///     default: amp-resource-example-oidc-provider
/// resources:
///   defaultOidcProvider:
///     type: alicloud:ims:OidcProvider
///     name: default
///     properties:
///       description: ${oidcProviderName}
///       issuerUrl: https://oauth.aliyun.com
///       fingerprints:
///         - 0BBFAB97059595E8D1EC48E89EB8657C0E5AAE71
///       issuanceLimitTime: '12'
///       oidcProviderName: ${oidcProviderName}
///       clientIds:
///         - '123'
///         - '456'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ims:getOidcProviders
///       arguments:
///         ids:
///           - ${defaultOidcProvider.id}
/// outputs:
///   alicloudImsOidcProviderExampleId: ${default.providers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ims_get_oidc_providers_get_oidc_providers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOidcProvidersResult> getOidcProviders(
  GetOidcProvidersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ims/getOidcProviders:getOidcProviders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOidcProvidersResult.fromMap(result);
}
