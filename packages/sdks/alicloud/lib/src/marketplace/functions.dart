import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_product_args.dart';
import 'get_product_result.dart';
import 'get_products_args.dart';
import 'get_products_result.dart';

/// This data source provides the Market product item details of Alibaba Cloud.
///
/// > **NOTE:** Available in 1.69.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.marketplace.getProduct({
///     productCode: "cmapi022206",
/// });
/// export const productName = _default.then(_default => _default.products?.[0]?.name);
/// export const firstProductSkuCode = _default.then(_default => _default.products?.[0]?.skuses?.[0]?.skuCode);
/// export const firstProductPackageVersion = _default.then(_default => _default.products?.[0]?.skuses?.[0]?.packageVersions?.[0]?.packageVersion);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.marketplace.get_product(product_code="cmapi022206")
/// pulumi.export("productName", default.products[0].name)
/// pulumi.export("firstProductSkuCode", default.products[0].skuses[0].sku_code)
/// pulumi.export("firstProductPackageVersion", default.products[0].skuses[0].package_versions[0].package_version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.MarketPlace.GetProduct.Invoke(new()
///     {
///         ProductCode = "cmapi022206",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["productName"] = @default.Apply(@default => @default.Apply(getProductResult => getProductResult.Products[0]?.Name)),
///         ["firstProductSkuCode"] = @default.Apply(@default => @default.Apply(getProductResult => getProductResult.Products[0]?.Skuses[0]?.SkuCode)),
///         ["firstProductPackageVersion"] = @default.Apply(@default => @default.Apply(getProductResult => getProductResult.Products[0]?.Skuses[0]?.PackageVersions[0]?.PackageVersion)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/marketplace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := marketplace.GetProduct(ctx, &marketplace.GetProductArgs{
/// 			ProductCode: "cmapi022206",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("productName", _default.Products[0].Name)
/// 		ctx.Export("firstProductSkuCode", _default.Products[0].Skuses[0].SkuCode)
/// 		ctx.Export("firstProductPackageVersion", _default.Products[0].Skuses[0].PackageVersions[0].PackageVersion)
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
/// import com.pulumi.alicloud.marketplace.MarketplaceFunctions;
/// import com.pulumi.alicloud.marketplace.inputs.GetProductArgs;
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
///         final var default = MarketplaceFunctions.getProduct(GetProductArgs.builder()
///             .productCode("cmapi022206")
///             .build());
///
///         ctx.export("productName", default_.products()[0].name());
///         ctx.export("firstProductSkuCode", default_.products()[0].skuses()[0].skuCode());
///         ctx.export("firstProductPackageVersion", default_.products()[0].skuses()[0].packageVersions()[0].packageVersion());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:marketplace:getProduct
///       arguments:
///         productCode: cmapi022206
/// outputs:
///   productName: ${default.products[0].name}
///   firstProductSkuCode: ${default.products[0].skuses[0].skuCode}
///   firstProductPackageVersion: ${default.products[0].skuses[0].packageVersions[0].packageVersion}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_get_product_get_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductResult> getProduct(
  GetProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:marketplace/getProduct:getProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductResult.fromMap(result);
}

/// This data source provides the Market product items of Alibaba Cloud.
///
/// > **NOTE:** Available in 1.64.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.marketplace.getProducts({
///     sort: "created_on-desc",
///     categoryId: "53690006",
///     productType: "SERVICE",
/// });
/// export const firstProductCode = _default.then(_default => _default.productItems[0].code);
/// export const productCodes = _default.then(_default => _default.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.marketplace.get_products(sort="created_on-desc",
///     category_id="53690006",
///     product_type="SERVICE")
/// pulumi.export("firstProductCode", default.product_items[0]["code"])
/// pulumi.export("productCodes", default.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.MarketPlace.GetProducts.Invoke(new()
///     {
///         Sort = "created_on-desc",
///         CategoryId = "53690006",
///         ProductType = "SERVICE",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstProductCode"] = @default.Apply(@default => @default.Apply(getProductsResult => getProductsResult.ProductItems[0].Code)),
///         ["productCodes"] = @default.Apply(@default => @default.Apply(getProductsResult => getProductsResult.Ids)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/marketplace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := marketplace.GetProducts(ctx, &marketplace.GetProductsArgs{
/// 			Sort:        pulumi.StringRef("created_on-desc"),
/// 			CategoryId:  pulumi.StringRef("53690006"),
/// 			ProductType: pulumi.StringRef("SERVICE"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstProductCode", _default.ProductItems[0].Code)
/// 		ctx.Export("productCodes", _default.Ids)
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
/// import com.pulumi.alicloud.marketplace.MarketplaceFunctions;
/// import com.pulumi.alicloud.marketplace.inputs.GetProductsArgs;
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
///         final var default = MarketplaceFunctions.getProducts(GetProductsArgs.builder()
///             .sort("created_on-desc")
///             .categoryId("53690006")
///             .productType("SERVICE")
///             .build());
///
///         ctx.export("firstProductCode", default_.productItems()[0].code());
///         ctx.export("productCodes", default_.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:marketplace:getProducts
///       arguments:
///         sort: created_on-desc
///         categoryId: '53690006'
///         productType: SERVICE
/// outputs:
///   firstProductCode: ${default.productItems[0].code}
///   productCodes: ${default.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_marketplace_get_products_get_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductsResult> getProducts(
  GetProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:marketplace/getProducts:getProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductsResult.fromMap(result);
}
