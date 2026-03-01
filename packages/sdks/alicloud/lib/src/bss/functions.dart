import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_api_pricing_modules_args.dart';
import 'get_open_api_pricing_modules_result.dart';
import 'get_open_api_products_args.dart';
import 'get_open_api_products_result.dart';

/// This data source provides Bss Open Api Pricing Module available to the user.[What is Pricing Module](https://www.alibabacloud.com/help/en/boa/latest/api-bssopenapi-2017-12-14-describepricingmodule)
///
/// > **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.bss.getOpenApiPricingModules({
///     nameRegex: "国内月均日峰值带宽",
///     productCode: "cdn",
///     productType: "CDN",
///     subscriptionType: "PayAsYouGo",
/// });
/// export const alicloudBssOpenapiPricingModuleExampleId = _default.then(_default => _default.modules?.[0]?.code);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.bss.get_open_api_pricing_modules(name_regex="国内月均日峰值带宽",
///     product_code="cdn",
///     product_type="CDN",
///     subscription_type="PayAsYouGo")
/// pulumi.export("alicloudBssOpenapiPricingModuleExampleId", default.modules[0].code)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Bss.GetOpenApiPricingModules.Invoke(new()
///     {
///         NameRegex = "国内月均日峰值带宽",
///         ProductCode = "cdn",
///         ProductType = "CDN",
///         SubscriptionType = "PayAsYouGo",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudBssOpenapiPricingModuleExampleId"] = @default.Apply(@default => @default.Apply(getOpenApiPricingModulesResult => getOpenApiPricingModulesResult.Modules[0]?.Code)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := bss.GetOpenApiPricingModules(ctx, &bss.GetOpenApiPricingModulesArgs{
/// 			NameRegex:        pulumi.StringRef("国内月均日峰值带宽"),
/// 			ProductCode:      "cdn",
/// 			ProductType:      pulumi.StringRef("CDN"),
/// 			SubscriptionType: "PayAsYouGo",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudBssOpenapiPricingModuleExampleId", _default.Modules[0].Code)
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
/// import com.pulumi.alicloud.bss.BssFunctions;
/// import com.pulumi.alicloud.bss.inputs.GetOpenApiPricingModulesArgs;
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
///         final var default = BssFunctions.getOpenApiPricingModules(GetOpenApiPricingModulesArgs.builder()
///             .nameRegex("国内月均日峰值带宽")
///             .productCode("cdn")
///             .productType("CDN")
///             .subscriptionType("PayAsYouGo")
///             .build());
///
///         ctx.export("alicloudBssOpenapiPricingModuleExampleId", default_.modules()[0].code());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:bss:getOpenApiPricingModules
///       arguments:
///         nameRegex: 国内月均日峰值带宽
///         productCode: cdn
///         productType: CDN
///         subscriptionType: PayAsYouGo
/// outputs:
///   alicloudBssOpenapiPricingModuleExampleId: ${default.modules[0].code}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bss_get_open_api_pricing_modules_get_open_api_pricing_modules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenApiPricingModulesResult> getOpenApiPricingModules(
  GetOpenApiPricingModulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bss/getOpenApiPricingModules:getOpenApiPricingModules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenApiPricingModulesResult.fromMap(result);
}

/// This data source provides Bss Open Api Product available to the user.[What is Product](https://www.alibabacloud.com/help/en/boa/latest/api-bssopenapi-2017-12-14-queryproductlist)
///
/// > **NOTE:** Available since v1.195.0.
/// [args] Arguments passed to this invoke. {@macro pulumi_bss_get_open_api_products_get_open_api_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOpenApiProductsResult> getOpenApiProducts(
  GetOpenApiProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:bss/getOpenApiProducts:getOpenApiProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenApiProductsResult.fromMap(result);
}
