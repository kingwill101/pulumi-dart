import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_end_user_products_args.dart';
import 'get_end_user_products_result.dart';
import 'get_launch_options_args.dart';
import 'get_launch_options_result.dart';
import 'get_portfolios_args.dart';
import 'get_portfolios_result.dart';
import 'get_product_as_end_users_args.dart';
import 'get_product_as_end_users_result.dart';
import 'get_product_versions_args.dart';
import 'get_product_versions_result.dart';
import 'get_provisioned_products_args.dart';
import 'get_provisioned_products_result.dart';

/// This data source provides Service Catalog End User Product available to the user.[What is End User Product](https://www.alibabacloud.com/help/en/servicecatalog/latest/api-servicecatalog-2021-09-01-listproductsasenduser)
///
/// > **NOTE:** Available since v1.197.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.servicecatalog.getEndUserProducts({
///     nameRegex: "ram模板创建",
/// });
/// export const alicloudServiceCatalogEndUserProductExampleId = _default.then(_default => _default.endUserProducts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicecatalog.get_end_user_products(name_regex="ram模板创建")
/// pulumi.export("alicloudServiceCatalogEndUserProductExampleId", default.end_user_products[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceCatalog.GetEndUserProducts.Invoke(new()
///     {
///         NameRegex = "ram模板创建",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudServiceCatalogEndUserProductExampleId"] = @default.Apply(@default => @default.Apply(getEndUserProductsResult => getEndUserProductsResult.EndUserProducts[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := servicecatalog.GetEndUserProducts(ctx, &servicecatalog.GetEndUserProductsArgs{
/// 			NameRegex: pulumi.StringRef("ram模板创建"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudServiceCatalogEndUserProductExampleId", _default.EndUserProducts[0].Id)
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
/// import com.pulumi.alicloud.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetEndUserProductsArgs;
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
///         final var default = ServicecatalogFunctions.getEndUserProducts(GetEndUserProductsArgs.builder()
///             .nameRegex("ram模板创建")
///             .build());
///
///         ctx.export("alicloudServiceCatalogEndUserProductExampleId", default_.endUserProducts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicecatalog:getEndUserProducts
///       arguments:
///         nameRegex: ram模板创建
/// outputs:
///   alicloudServiceCatalogEndUserProductExampleId: ${default.endUserProducts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_end_user_products_get_end_user_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndUserProductsResult> getEndUserProducts(
  GetEndUserProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicecatalog/getEndUserProducts:getEndUserProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndUserProductsResult.fromMap(result);
}

/// This data source provides Service Catalog Launch Option available to the user. [What is Launch Option](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-listlaunchoptions).
///
/// > **NOTE:** Available since v1.196.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.servicecatalog.getEndUserProducts({
///     nameRegex: "ram模板创建",
/// });
/// const defaultGetLaunchOptions = alicloud.servicecatalog.getLaunchOptions({
///     productId: "data.alicloud_service_catalog_end_user_products.default.end_user_products.0.id",
/// });
/// export const alicloudServiceCatalogLaunchOptionExampleId = defaultGetLaunchOptions.then(defaultGetLaunchOptions => defaultGetLaunchOptions.launchOptions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicecatalog.get_end_user_products(name_regex="ram模板创建")
/// default_get_launch_options = alicloud.servicecatalog.get_launch_options(product_id="data.alicloud_service_catalog_end_user_products.default.end_user_products.0.id")
/// pulumi.export("alicloudServiceCatalogLaunchOptionExampleId", default_get_launch_options.launch_options[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceCatalog.GetEndUserProducts.Invoke(new()
///     {
///         NameRegex = "ram模板创建",
///     });
///
///     var defaultGetLaunchOptions = AliCloud.ServiceCatalog.GetLaunchOptions.Invoke(new()
///     {
///         ProductId = "data.alicloud_service_catalog_end_user_products.default.end_user_products.0.id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudServiceCatalogLaunchOptionExampleId"] = defaultGetLaunchOptions.Apply(getLaunchOptionsResult => getLaunchOptionsResult.LaunchOptions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.GetEndUserProducts(ctx, &servicecatalog.GetEndUserProductsArgs{
/// 			NameRegex: pulumi.StringRef("ram模板创建"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetLaunchOptions, err := servicecatalog.GetLaunchOptions(ctx, &servicecatalog.GetLaunchOptionsArgs{
/// 			ProductId: "data.alicloud_service_catalog_end_user_products.default.end_user_products.0.id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudServiceCatalogLaunchOptionExampleId", defaultGetLaunchOptions.LaunchOptions[0].Id)
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
/// import com.pulumi.alicloud.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetEndUserProductsArgs;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetLaunchOptionsArgs;
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
///         final var default = ServicecatalogFunctions.getEndUserProducts(GetEndUserProductsArgs.builder()
///             .nameRegex("ram模板创建")
///             .build());
///
///         final var defaultGetLaunchOptions = ServicecatalogFunctions.getLaunchOptions(GetLaunchOptionsArgs.builder()
///             .productId("data.alicloud_service_catalog_end_user_products.default.end_user_products.0.id")
///             .build());
///
///         ctx.export("alicloudServiceCatalogLaunchOptionExampleId", defaultGetLaunchOptions.launchOptions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicecatalog:getEndUserProducts
///       arguments:
///         nameRegex: ram模板创建
///   defaultGetLaunchOptions:
///     fn::invoke:
///       function: alicloud:servicecatalog:getLaunchOptions
///       arguments:
///         productId: data.alicloud_service_catalog_end_user_products.default.end_user_products.0.id
/// outputs:
///   alicloudServiceCatalogLaunchOptionExampleId: ${defaultGetLaunchOptions.launchOptions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_launch_options_get_launch_options_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLaunchOptionsResult> getLaunchOptions(
  GetLaunchOptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicecatalog/getLaunchOptions:getLaunchOptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLaunchOptionsResult.fromMap(result);
}

/// This data source provides Service Catalog Portfolio available to the user.[What is Portfolio](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-createportfolio)
///
/// > **NOTE:** Available in 1.204.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.servicecatalog.getPortfolios({
///     ids: [defaultAlicloudServiceCatalogPortfolio.id],
///     nameRegex: defaultAlicloudServiceCatalogPortfolio.name,
/// });
/// export const alicloudServiceCatalogPortfolioExampleId = _default.then(_default => _default.portfolios?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicecatalog.get_portfolios(ids=[default_alicloud_service_catalog_portfolio["id"]],
///     name_regex=default_alicloud_service_catalog_portfolio["name"])
/// pulumi.export("alicloudServiceCatalogPortfolioExampleId", default.portfolios[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceCatalog.GetPortfolios.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudServiceCatalogPortfolio.Id,
///         },
///         NameRegex = defaultAlicloudServiceCatalogPortfolio.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudServiceCatalogPortfolioExampleId"] = @default.Apply(@default => @default.Apply(getPortfoliosResult => getPortfoliosResult.Portfolios[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := servicecatalog.GetPortfolios(ctx, &servicecatalog.GetPortfoliosArgs{
/// Ids: interface{}{
/// defaultAlicloudServiceCatalogPortfolio.Id,
/// },
/// NameRegex: pulumi.StringRef(defaultAlicloudServiceCatalogPortfolio.Name),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudServiceCatalogPortfolioExampleId", _default.Portfolios[0].Id)
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
/// import com.pulumi.alicloud.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetPortfoliosArgs;
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
///         final var default = ServicecatalogFunctions.getPortfolios(GetPortfoliosArgs.builder()
///             .ids(defaultAlicloudServiceCatalogPortfolio.id())
///             .nameRegex(defaultAlicloudServiceCatalogPortfolio.name())
///             .build());
///
///         ctx.export("alicloudServiceCatalogPortfolioExampleId", default_.portfolios()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicecatalog:getPortfolios
///       arguments:
///         ids:
///           - ${defaultAlicloudServiceCatalogPortfolio.id}
///         nameRegex: ${defaultAlicloudServiceCatalogPortfolio.name}
/// outputs:
///   alicloudServiceCatalogPortfolioExampleId: ${default.portfolios[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_portfolios_get_portfolios_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPortfoliosResult> getPortfolios(
  GetPortfoliosArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicecatalog/getPortfolios:getPortfolios',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPortfoliosResult.fromMap(result);
}

/// > **DEPRECATED:** It has been deprecated from version `1.197.0`.
/// Please use new datasource alicloud.servicecatalog.getEndUserProducts instead.
///
/// This data source provides Service Catalog Product As End User available to the user.[What is Product As End User](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-listproductsasenduser)
///
/// > **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.servicecatalog.getProductAsEndUsers({
///     nameRegex: "ram模板创建",
/// });
/// export const alicloudServiceCatalogProductAsEndUserExampleId = _default.then(_default => _default.users?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicecatalog.get_product_as_end_users(name_regex="ram模板创建")
/// pulumi.export("alicloudServiceCatalogProductAsEndUserExampleId", default.users[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceCatalog.GetProductAsEndUsers.Invoke(new()
///     {
///         NameRegex = "ram模板创建",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudServiceCatalogProductAsEndUserExampleId"] = @default.Apply(@default => @default.Apply(getProductAsEndUsersResult => getProductAsEndUsersResult.Users[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := servicecatalog.GetProductAsEndUsers(ctx, &servicecatalog.GetProductAsEndUsersArgs{
/// 			NameRegex: pulumi.StringRef("ram模板创建"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudServiceCatalogProductAsEndUserExampleId", _default.Users[0].Id)
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
/// import com.pulumi.alicloud.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetProductAsEndUsersArgs;
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
///         final var default = ServicecatalogFunctions.getProductAsEndUsers(GetProductAsEndUsersArgs.builder()
///             .nameRegex("ram模板创建")
///             .build());
///
///         ctx.export("alicloudServiceCatalogProductAsEndUserExampleId", default_.users()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicecatalog:getProductAsEndUsers
///       arguments:
///         nameRegex: ram模板创建
/// outputs:
///   alicloudServiceCatalogProductAsEndUserExampleId: ${default.users[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_product_as_end_users_get_product_as_end_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductAsEndUsersResult> getProductAsEndUsers(
  GetProductAsEndUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicecatalog/getProductAsEndUsers:getProductAsEndUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductAsEndUsersResult.fromMap(result);
}

/// This data source provides Service Catalog Product Version available to the user.[What is Product Version](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-listproductversions)
///
/// > **NOTE:** Available in 1.196.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.servicecatalog.getProductVersions({
///     nameRegex: "1.0.0",
///     productId: "prod-bp125x4k29wb7q",
/// });
/// export const alicloudServiceCatalogProductVersionExampleId = _default.then(_default => _default.productVersions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicecatalog.get_product_versions(name_regex="1.0.0",
///     product_id="prod-bp125x4k29wb7q")
/// pulumi.export("alicloudServiceCatalogProductVersionExampleId", default.product_versions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceCatalog.GetProductVersions.Invoke(new()
///     {
///         NameRegex = "1.0.0",
///         ProductId = "prod-bp125x4k29wb7q",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudServiceCatalogProductVersionExampleId"] = @default.Apply(@default => @default.Apply(getProductVersionsResult => getProductVersionsResult.ProductVersions[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := servicecatalog.GetProductVersions(ctx, &servicecatalog.GetProductVersionsArgs{
/// 			NameRegex: pulumi.StringRef("1.0.0"),
/// 			ProductId: "prod-bp125x4k29wb7q",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudServiceCatalogProductVersionExampleId", _default.ProductVersions[0].Id)
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
/// import com.pulumi.alicloud.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetProductVersionsArgs;
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
///         final var default = ServicecatalogFunctions.getProductVersions(GetProductVersionsArgs.builder()
///             .nameRegex("1.0.0")
///             .productId("prod-bp125x4k29wb7q")
///             .build());
///
///         ctx.export("alicloudServiceCatalogProductVersionExampleId", default_.productVersions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicecatalog:getProductVersions
///       arguments:
///         nameRegex: 1.0.0
///         productId: prod-bp125x4k29wb7q
/// outputs:
///   alicloudServiceCatalogProductVersionExampleId: ${default.productVersions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_product_versions_get_product_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductVersionsResult> getProductVersions(
  GetProductVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicecatalog/getProductVersions:getProductVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductVersionsResult.fromMap(result);
}

/// This data source provides Service Catalog Provisioned Product available to the user. [What is Provisioned Product](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-launchproduct)
///
/// > **NOTE:** Available since v1.196.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.servicecatalog.getProvisionedProducts({
///     ids: ["IdExample"],
///     nameRegex: "NameRegexExample",
/// });
/// export const alicloudServiceCatalogProvisionedProductExampleId = _default.then(_default => _default.provisionedProducts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.servicecatalog.get_provisioned_products(ids=["IdExample"],
///     name_regex="NameRegexExample")
/// pulumi.export("alicloudServiceCatalogProvisionedProductExampleId", default.provisioned_products[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ServiceCatalog.GetProvisionedProducts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "IdExample",
///         },
///         NameRegex = "NameRegexExample",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudServiceCatalogProvisionedProductExampleId"] = @default.Apply(@default => @default.Apply(getProvisionedProductsResult => getProvisionedProductsResult.ProvisionedProducts[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := servicecatalog.GetProvisionedProducts(ctx, &servicecatalog.GetProvisionedProductsArgs{
/// 			Ids: []string{
/// 				"IdExample",
/// 			},
/// 			NameRegex: pulumi.StringRef("NameRegexExample"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudServiceCatalogProvisionedProductExampleId", _default.ProvisionedProducts[0].Id)
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
/// import com.pulumi.alicloud.servicecatalog.ServicecatalogFunctions;
/// import com.pulumi.alicloud.servicecatalog.inputs.GetProvisionedProductsArgs;
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
///         final var default = ServicecatalogFunctions.getProvisionedProducts(GetProvisionedProductsArgs.builder()
///             .ids("IdExample")
///             .nameRegex("NameRegexExample")
///             .build());
///
///         ctx.export("alicloudServiceCatalogProvisionedProductExampleId", default_.provisionedProducts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:servicecatalog:getProvisionedProducts
///       arguments:
///         ids:
///           - IdExample
///         nameRegex: NameRegexExample
/// outputs:
///   alicloudServiceCatalogProvisionedProductExampleId: ${default.provisionedProducts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_servicecatalog_get_provisioned_products_get_provisioned_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProvisionedProductsResult> getProvisionedProducts(
  GetProvisionedProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:servicecatalog/getProvisionedProducts:getProvisionedProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProvisionedProductsResult.fromMap(result);
}
