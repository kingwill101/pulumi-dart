import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apps_args.dart';
import 'get_apps_result.dart';
import 'get_products_args.dart';
import 'get_products_result.dart';

/// This data source provides the Mhub Apps of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.138.0+.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "example_value";
/// const _default = new alicloud.mhub.App("default", {
///     appName: name,
///     productId: defaultAlicloudMhubProduct.id,
///     packageName: "com.test.android",
///     type: "2",
/// });
/// const ids = alicloud.mhub.getApps({});
/// export const mhubAppId1 = ids.then(ids => ids.apps?.[0]?.id);
/// const nameRegex = alicloud.mhub.getApps({
///     nameRegex: "^my-App",
/// });
/// export const mhubAppId2 = nameRegex.then(nameRegex => nameRegex.apps?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default = alicloud.mhub.App("default",
///     app_name=name,
///     product_id=default_alicloud_mhub_product["id"],
///     package_name="com.test.android",
///     type="2")
/// ids = alicloud.mhub.get_apps()
/// pulumi.export("mhubAppId1", ids.apps[0].id)
/// name_regex = alicloud.mhub.get_apps(name_regex="^my-App")
/// pulumi.export("mhubAppId2", name_regex.apps[0].id)
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
///     var name = config.Get("name") ?? "example_value";
///     var @default = new AliCloud.Mhub.App("default", new()
///     {
///         AppName = name,
///         ProductId = defaultAlicloudMhubProduct.Id,
///         PackageName = "com.test.android",
///         Type = "2",
///     });
///
///     var ids = AliCloud.Mhub.GetApps.Invoke();
///
///     var nameRegex = AliCloud.Mhub.GetApps.Invoke(new()
///     {
///         NameRegex = "^my-App",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mhubAppId1"] = ids.Apply(getAppsResult => getAppsResult.Apps[0]?.Id),
///         ["mhubAppId2"] = nameRegex.Apply(getAppsResult => getAppsResult.Apps[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "example_value"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := mhub.NewApp(ctx, "default", &mhub.AppArgs{
/// 			AppName:     pulumi.String(name),
/// 			ProductId:   pulumi.Any(defaultAlicloudMhubProduct.Id),
/// 			PackageName: pulumi.String("com.test.android"),
/// 			Type:        pulumi.String("2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := mhub.GetApps(ctx, &mhub.GetAppsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mhubAppId1", ids.Apps[0].Id)
/// 		nameRegex, err := mhub.GetApps(ctx, &mhub.GetAppsArgs{
/// 			NameRegex: pulumi.StringRef("^my-App"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mhubAppId2", nameRegex.Apps[0].Id)
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
/// import com.pulumi.alicloud.mhub.App;
/// import com.pulumi.alicloud.mhub.AppArgs;
/// import com.pulumi.alicloud.mhub.MhubFunctions;
/// import com.pulumi.alicloud.mhub.inputs.GetAppsArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         var default_ = new App("default", AppArgs.builder()
///             .appName(name)
///             .productId(defaultAlicloudMhubProduct.id())
///             .packageName("com.test.android")
///             .type("2")
///             .build());
///
///         final var ids = MhubFunctions.getApps(GetAppsArgs.builder()
///             .build());
///
///         ctx.export("mhubAppId1", ids.apps()[0].id());
///         final var nameRegex = MhubFunctions.getApps(GetAppsArgs.builder()
///             .nameRegex("^my-App")
///             .build());
///
///         ctx.export("mhubAppId2", nameRegex.apps()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_value
/// resources:
///   default:
///     type: alicloud:mhub:App
///     properties:
///       appName: ${name}
///       productId: ${defaultAlicloudMhubProduct.id}
///       packageName: com.test.android
///       type: '2'
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:mhub:getApps
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:mhub:getApps
///       arguments:
///         nameRegex: ^my-App
/// outputs:
///   mhubAppId1: ${ids.apps[0].id}
///   mhubAppId2: ${nameRegex.apps[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mhub_get_apps_get_apps_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppsResult> getApps(
  GetAppsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mhub/getApps:getApps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppsResult.fromMap(result);
}

/// This data source provides the Mhub Products of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.138.0+.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "example_value";
/// const _default = new alicloud.mhub.Product("default", {productName: name});
/// const ids = alicloud.mhub.getProducts({});
/// export const mhubProductId1 = ids.then(ids => ids.products?.[0]?.id);
/// const nameRegex = alicloud.mhub.getProducts({
///     nameRegex: "^my-Product",
/// });
/// export const mhubProductId2 = nameRegex.then(nameRegex => nameRegex.products?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "example_value"
/// default = alicloud.mhub.Product("default", product_name=name)
/// ids = alicloud.mhub.get_products()
/// pulumi.export("mhubProductId1", ids.products[0].id)
/// name_regex = alicloud.mhub.get_products(name_regex="^my-Product")
/// pulumi.export("mhubProductId2", name_regex.products[0].id)
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
///     var name = config.Get("name") ?? "example_value";
///     var @default = new AliCloud.Mhub.Product("default", new()
///     {
///         ProductName = name,
///     });
///
///     var ids = AliCloud.Mhub.GetProducts.Invoke();
///
///     var nameRegex = AliCloud.Mhub.GetProducts.Invoke(new()
///     {
///         NameRegex = "^my-Product",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mhubProductId1"] = ids.Apply(getProductsResult => getProductsResult.Products[0]?.Id),
///         ["mhubProductId2"] = nameRegex.Apply(getProductsResult => getProductsResult.Products[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "example_value"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := mhub.NewProduct(ctx, "default", &mhub.ProductArgs{
/// 			ProductName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids, err := mhub.GetProducts(ctx, &mhub.GetProductsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mhubProductId1", ids.Products[0].Id)
/// 		nameRegex, err := mhub.GetProducts(ctx, &mhub.GetProductsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Product"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mhubProductId2", nameRegex.Products[0].Id)
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
/// import com.pulumi.alicloud.mhub.Product;
/// import com.pulumi.alicloud.mhub.ProductArgs;
/// import com.pulumi.alicloud.mhub.MhubFunctions;
/// import com.pulumi.alicloud.mhub.inputs.GetProductsArgs;
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
///         final var name = config.get("name").orElse("example_value");
///         var default_ = new Product("default", ProductArgs.builder()
///             .productName(name)
///             .build());
///
///         final var ids = MhubFunctions.getProducts(GetProductsArgs.builder()
///             .build());
///
///         ctx.export("mhubProductId1", ids.products()[0].id());
///         final var nameRegex = MhubFunctions.getProducts(GetProductsArgs.builder()
///             .nameRegex("^my-Product")
///             .build());
///
///         ctx.export("mhubProductId2", nameRegex.products()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: example_value
/// resources:
///   default:
///     type: alicloud:mhub:Product
///     properties:
///       productName: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:mhub:getProducts
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:mhub:getProducts
///       arguments:
///         nameRegex: ^my-Product
/// outputs:
///   mhubProductId1: ${ids.products[0].id}
///   mhubProductId2: ${nameRegex.products[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_mhub_get_products_get_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductsResult> getProducts(
  GetProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:mhub/getProducts:getProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductsResult.fromMap(result);
}
