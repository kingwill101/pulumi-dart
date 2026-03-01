import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_args.dart';

/// Provides a MHUB Product resource.
///
/// For information about MHUB Product and how to use it, see [What is Product](https://help.aliyun.com/product/65109.html).
///
/// > **NOTE:** Available since v1.138.0+.
///
/// > **NOTE:** At present, the resource only supports cn-shanghai region.
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
/// const example = new alicloud.mhub.Product("example", {productName: "example_value"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.mhub.Product("example", product_name="example_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Mhub.Product("example", new()
///     {
///         ProductName = "example_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mhub.NewProduct(ctx, "example", &mhub.ProductArgs{
/// 			ProductName: pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.mhub.Product;
/// import com.pulumi.alicloud.mhub.ProductArgs;
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
///         var example = new Product("example", ProductArgs.builder()
///             .productName("example_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:mhub:Product
///     properties:
///       productName: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// MHUB Product can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:mhub/product:Product example <id>
/// ```
class Product extends pulumi.CustomResource {
  /// ProductName.
  late final pulumi.Output<String> productName;

  /// Creates a new [Product].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Product]. {@macro pulumi_mhub_product_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Product(
    String name, {
    ProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:mhub/product:Product',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.productName = registerOutput<String>('productName');
  }
}
