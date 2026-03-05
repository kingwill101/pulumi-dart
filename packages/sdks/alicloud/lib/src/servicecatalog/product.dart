import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_args.dart';
import 'product_state.dart';

/// Provides a Service Catalog Product resource.
///
/// Service catalog product, IaC template encapsulation concept.
///
/// For information about Service Catalog Product and how to use it, see [What is Product](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-createproduct).
///
/// &gt; **NOTE:** Available since v1.230.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.servicecatalog.Product("default", {
///     providerName: name,
///     description: "desc",
///     productName: name,
///     productType: "Ros",
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
/// default = alicloud.servicecatalog.Product("default",
///     provider_name=name,
///     description="desc",
///     product_name=name,
///     product_type="Ros")
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
///     var @default = new AliCloud.ServiceCatalog.Product("default", new()
///     {
///         ProviderName = name,
///         Description = "desc",
///         ProductName = name,
///         ProductType = "Ros",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/servicecatalog"
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
/// 		_, err := servicecatalog.NewProduct(ctx, "default", &servicecatalog.ProductArgs{
/// 			ProviderName: pulumi.String(name),
/// 			Description:  pulumi.String("desc"),
/// 			ProductName:  pulumi.String(name),
/// 			ProductType:  pulumi.String("Ros"),
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
/// import com.pulumi.alicloud.servicecatalog.Product;
/// import com.pulumi.alicloud.servicecatalog.ProductArgs;
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
///         var default_ = new Product("default", ProductArgs.builder()
///             .providerName(name)
///             .description("desc")
///             .productName(name)
///             .productType("Ros")
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
///   default:
///     type: alicloud:servicecatalog:Product
///     properties:
///       providerName: ${name}
///       description: desc
///       productName: ${name}
///       productType: Ros
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Catalog Product can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicecatalog/product:Product example <id>
/// ```
class Product extends pulumi.CustomResource {
  /// The creation time of the product
  late final pulumi.Output<String> createTime;
  /// The description of the product
  late final pulumi.Output<String?> description;
  /// The name of the product
  late final pulumi.Output<String> productName;
  /// The type of the product
  late final pulumi.Output<String> productType;
  /// The provider name of the product
  late final pulumi.Output<String> providerName;

  /// Creates a new [Product].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Product]. {@macro pulumi_servicecatalog_product_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Product(
    String name, {
    ProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/product:Product',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    productName = registerOutput<String>('productName');
    productType = registerOutput<String>('productType');
    providerName = registerOutput<String>('providerName');
  }

  /// Gets an existing [Product] resource's state with the given [name] and [id].
  static Product get(
    String name,
    pulumi.Input<String> id, {
    ProductState? state,
  }) {
    return Product._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Product._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/product:Product',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    productName = registerOutput<String>('productName');
    productType = registerOutput<String>('productType');
    providerName = registerOutput<String>('providerName');
  }
}
