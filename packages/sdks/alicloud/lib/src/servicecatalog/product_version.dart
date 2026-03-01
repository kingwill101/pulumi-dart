import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_version_args.dart';
import 'product_version_state.dart';

/// Provides a Service Catalog Product Version resource.
///
/// There can be one or more versions of the product.
///
/// For information about Service Catalog Product Version and how to use it, see [What is Product Version](https://www.alibabacloud.com/help/en/service-catalog/developer-reference/api-servicecatalog-2021-09-01-createproductversion).
///
/// > **NOTE:** Available since v1.230.0.
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
/// const defaultmaeTcE = new alicloud.servicecatalog.Product("defaultmaeTcE", {
///     providerName: name,
///     productName: name,
///     productType: "Ros",
/// });
/// const _default = new alicloud.servicecatalog.ProductVersion("default", {
///     guidance: "Default",
///     templateUrl: "oss://servicecatalog-cn-hangzhou/1466115886172051/terraform/template/tpl-bp1x4v3r44u7u7/template.json",
///     active: true,
///     description: "产品版本测试",
///     productVersionName: name,
///     productId: defaultmaeTcE.id,
///     templateType: "RosTerraformTemplate",
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
/// defaultmae_tc_e = alicloud.servicecatalog.Product("defaultmaeTcE",
///     provider_name=name,
///     product_name=name,
///     product_type="Ros")
/// default = alicloud.servicecatalog.ProductVersion("default",
///     guidance="Default",
///     template_url="oss://servicecatalog-cn-hangzhou/1466115886172051/terraform/template/tpl-bp1x4v3r44u7u7/template.json",
///     active=True,
///     description="产品版本测试",
///     product_version_name=name,
///     product_id=defaultmae_tc_e.id,
///     template_type="RosTerraformTemplate")
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
///     var defaultmaeTcE = new AliCloud.ServiceCatalog.Product("defaultmaeTcE", new()
///     {
///         ProviderName = name,
///         ProductName = name,
///         ProductType = "Ros",
///     });
///
///     var @default = new AliCloud.ServiceCatalog.ProductVersion("default", new()
///     {
///         Guidance = "Default",
///         TemplateUrl = "oss://servicecatalog-cn-hangzhou/1466115886172051/terraform/template/tpl-bp1x4v3r44u7u7/template.json",
///         Active = true,
///         Description = "产品版本测试",
///         ProductVersionName = name,
///         ProductId = defaultmaeTcE.Id,
///         TemplateType = "RosTerraformTemplate",
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
/// 		defaultmaeTcE, err := servicecatalog.NewProduct(ctx, "defaultmaeTcE", &servicecatalog.ProductArgs{
/// 			ProviderName: pulumi.String(name),
/// 			ProductName:  pulumi.String(name),
/// 			ProductType:  pulumi.String("Ros"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicecatalog.NewProductVersion(ctx, "default", &servicecatalog.ProductVersionArgs{
/// 			Guidance:           pulumi.String("Default"),
/// 			TemplateUrl:        pulumi.String("oss://servicecatalog-cn-hangzhou/1466115886172051/terraform/template/tpl-bp1x4v3r44u7u7/template.json"),
/// 			Active:             pulumi.Bool(true),
/// 			Description:        pulumi.String("产品版本测试"),
/// 			ProductVersionName: pulumi.String(name),
/// 			ProductId:          defaultmaeTcE.ID(),
/// 			TemplateType:       pulumi.String("RosTerraformTemplate"),
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
/// import com.pulumi.alicloud.servicecatalog.ProductVersion;
/// import com.pulumi.alicloud.servicecatalog.ProductVersionArgs;
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
///         var defaultmaeTcE = new Product("defaultmaeTcE", ProductArgs.builder()
///             .providerName(name)
///             .productName(name)
///             .productType("Ros")
///             .build());
///
///         var default_ = new ProductVersion("default", ProductVersionArgs.builder()
///             .guidance("Default")
///             .templateUrl("oss://servicecatalog-cn-hangzhou/1466115886172051/terraform/template/tpl-bp1x4v3r44u7u7/template.json")
///             .active(true)
///             .description("产品版本测试")
///             .productVersionName(name)
///             .productId(defaultmaeTcE.id())
///             .templateType("RosTerraformTemplate")
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
///   defaultmaeTcE:
///     type: alicloud:servicecatalog:Product
///     properties:
///       providerName: ${name}
///       productName: ${name}
///       productType: Ros
///   default:
///     type: alicloud:servicecatalog:ProductVersion
///     properties:
///       guidance: Default
///       templateUrl: oss://servicecatalog-cn-hangzhou/1466115886172051/terraform/template/tpl-bp1x4v3r44u7u7/template.json
///       active: true
///       description: 产品版本测试
///       productVersionName: ${name}
///       productId: ${defaultmaeTcE.id}
///       templateType: RosTerraformTemplate
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Service Catalog Product Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:servicecatalog/productVersion:ProductVersion example <id>
/// ```
class ProductVersion extends pulumi.CustomResource {
  /// Whether the version is activated
  late final pulumi.Output<bool?> active;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Version description
  late final pulumi.Output<String?> description;
  /// Administrator guidance
  late final pulumi.Output<String?> guidance;
  /// Product ID
  late final pulumi.Output<String> productId;
  /// The name of the resource
  late final pulumi.Output<String> productVersionName;
  /// Template Type
  late final pulumi.Output<String> templateType;
  /// Template URL
  late final pulumi.Output<String> templateUrl;

  /// Creates a new [ProductVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProductVersion]. {@macro pulumi_servicecatalog_product_version_product_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProductVersion(
    String name, {
    ProductVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/productVersion:ProductVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.guidance = registerOutput<String?>('guidance');
    this.productId = registerOutput<String>('productId');
    this.productVersionName = registerOutput<String>('productVersionName');
    this.templateType = registerOutput<String>('templateType');
    this.templateUrl = registerOutput<String>('templateUrl');
  }

  /// Gets an existing [ProductVersion] resource's state with the given [name] and [id].
  static ProductVersion get(
    String name,
    pulumi.Input<String> id, {
    ProductVersionState? state,
  }) {
    return ProductVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProductVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:servicecatalog/productVersion:ProductVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.active = registerOutput<bool?>('active');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.guidance = registerOutput<String?>('guidance');
    this.productId = registerOutput<String>('productId');
    this.productVersionName = registerOutput<String>('productVersionName');
    this.templateType = registerOutput<String>('templateType');
    this.templateUrl = registerOutput<String>('templateUrl');
  }
}
