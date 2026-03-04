import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_prices_args.dart';
import 'get_prices_result.dart';
import 'get_products_args.dart';
import 'get_products_result.dart';
import 'get_resource_types_args.dart';
import 'get_resource_types_result.dart';

/// This data source provides Cloud Control Price available to the user.[What is Price](https://next.api.aliyun.com/document/cloudcontrol/2022-08-30/GetPrice)
///
/// &gt; **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.cloudcontrol.getPrices({
///     desireAttributes: {
///         AddressType: "internet",
///         PaymentType: "PayAsYouGo",
///     },
///     product: "SLB",
///     resourceCode: "LoadBalancer",
/// });
/// export const alicloudCloudControlPriceExampleId = _default.then(_default => _default.prices?.[0]?.discountPrice);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cloudcontrol.get_prices(desire_attributes={
///         "AddressType": "internet",
///         "PaymentType": "PayAsYouGo",
///     },
///     product="SLB",
///     resource_code="LoadBalancer")
/// pulumi.export("alicloudCloudControlPriceExampleId", default.prices[0].discount_price)
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
///     var @default = AliCloud.CloudControl.GetPrices.Invoke(new()
///     {
///         DesireAttributes =
///         {
///             { "AddressType", "internet" },
///             { "PaymentType", "PayAsYouGo" },
///         },
///         Product = "SLB",
///         ResourceCode = "LoadBalancer",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCloudControlPriceExampleId"] = @default.Apply(@default => @default.Apply(getPricesResult => getPricesResult.Prices[0]?.DiscountPrice)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudcontrol"
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
/// 		_default, err := cloudcontrol.GetPrices(ctx, &cloudcontrol.GetPricesArgs{
/// 			DesireAttributes: map[string]interface{}{
/// 				"AddressType": "internet",
/// 				"PaymentType": "PayAsYouGo",
/// 			},
/// 			Product:      "SLB",
/// 			ResourceCode: "LoadBalancer",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCloudControlPriceExampleId", _default.Prices[0].DiscountPrice)
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
/// import com.pulumi.alicloud.cloudcontrol.CloudcontrolFunctions;
/// import com.pulumi.alicloud.cloudcontrol.inputs.GetPricesArgs;
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
///         final var default = CloudcontrolFunctions.getPrices(GetPricesArgs.builder()
///             .desireAttributes(Map.ofEntries(
///                 Map.entry("AddressType", "internet"),
///                 Map.entry("PaymentType", "PayAsYouGo")
///             ))
///             .product("SLB")
///             .resourceCode("LoadBalancer")
///             .build());
///
///         ctx.export("alicloudCloudControlPriceExampleId", default_.prices()[0].discountPrice());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudcontrol:getPrices
///       arguments:
///         desireAttributes:
///           AddressType: internet
///           PaymentType: PayAsYouGo
///         product: SLB
///         resourceCode: LoadBalancer
/// outputs:
///   alicloudCloudControlPriceExampleId: ${default.prices[0].discountPrice}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudcontrol_get_prices_get_prices_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPricesResult> getPrices(
  GetPricesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudcontrol/getPrices:getPrices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPricesResult.fromMap(result);
}

/// This data source provides Cloud Control Product available to the user.[What is Product](https://next.api.aliyun.com/document/cloudcontrol/2022-08-30/ListProducts)
///
/// &gt; **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.cloudcontrol.getProducts({
///     ids: ["VPC"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cloudcontrol.get_products(ids=["VPC"])
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
///     var @default = AliCloud.CloudControl.GetProducts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "VPC",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudcontrol"
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
/// 		_, err := cloudcontrol.GetProducts(ctx, &cloudcontrol.GetProductsArgs{
/// 			Ids: []string{
/// 				"VPC",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.alicloud.cloudcontrol.CloudcontrolFunctions;
/// import com.pulumi.alicloud.cloudcontrol.inputs.GetProductsArgs;
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
///         final var default = CloudcontrolFunctions.getProducts(GetProductsArgs.builder()
///             .ids("VPC")
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
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudcontrol:getProducts
///       arguments:
///         ids:
///           - VPC
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudcontrol_get_products_get_products_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProductsResult> getProducts(
  GetProductsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudcontrol/getProducts:getProducts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProductsResult.fromMap(result);
}

/// This data source provides Cloud Control Resource Type available to the user.[What is Resource Type](https://next.api.aliyun.com/document/cloudcontrol/2022-08-30/GetResourceType)
///
/// &gt; **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.cloudcontrol.getResourceTypes({
///     product: "VPC",
///     ids: ["VSwitch"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cloudcontrol.get_resource_types(product="VPC",
///     ids=["VSwitch"])
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
///     var @default = AliCloud.CloudControl.GetResourceTypes.Invoke(new()
///     {
///         Product = "VPC",
///         Ids = new[]
///         {
///             "VSwitch",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudcontrol"
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
/// 		_, err := cloudcontrol.GetResourceTypes(ctx, &cloudcontrol.GetResourceTypesArgs{
/// 			Product: "VPC",
/// 			Ids: []string{
/// 				"VSwitch",
/// 			},
/// 		}, nil)
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
/// import com.pulumi.alicloud.cloudcontrol.CloudcontrolFunctions;
/// import com.pulumi.alicloud.cloudcontrol.inputs.GetResourceTypesArgs;
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
///         final var default = CloudcontrolFunctions.getResourceTypes(GetResourceTypesArgs.builder()
///             .product("VPC")
///             .ids("VSwitch")
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
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cloudcontrol:getResourceTypes
///       arguments:
///         product: VPC
///         ids:
///           - VSwitch
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudcontrol_get_resource_types_get_resource_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceTypesResult> getResourceTypes(
  GetResourceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cloudcontrol/getResourceTypes:getResourceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceTypesResult.fromMap(result);
}
