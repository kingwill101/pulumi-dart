import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_args.dart';
import 'product_provisioning_artifact_parameters.dart';
import 'product_state.dart';

/// Manages a Service Catalog Product.
///
/// &gt; **NOTE:** The user or role that uses this resources must have the `cloudformation:GetTemplate` IAM policy permission. This policy permission is required when using the `templatePhysicalId` argument.
///
/// &gt; A "provisioning artifact" is also referred to as a "version." A "distributor" is also referred to as a "vendor."
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.Product("example", {
///     provisioningArtifactParameters: {
///         templateUrl: "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json",
///     },
///     name: "example",
///     owner: "example-owner",
///     type: "CLOUD_FORMATION_TEMPLATE",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.Product("example",
///     provisioning_artifact_parameters={
///         "template_url": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json",
///     },
///     name="example",
///     owner="example-owner",
///     type="CLOUD_FORMATION_TEMPLATE",
///     tags={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.Product("example", new()
///     {
///         ProvisioningArtifactParameters = new Aws.ServiceCatalog.Inputs.ProductProvisioningArtifactParametersArgs
///         {
///             TemplateUrl = "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json",
///         },
///         Name = "example",
///         Owner = "example-owner",
///         Type = "CLOUD_FORMATION_TEMPLATE",
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewProduct(ctx, "example", &servicecatalog.ProductArgs{
/// 			ProvisioningArtifactParameters: &servicecatalog.ProductProvisioningArtifactParametersArgs{
/// 				TemplateUrl: pulumi.String("https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json"),
/// 			},
/// 			Name:  pulumi.String("example"),
/// 			Owner: pulumi.String("example-owner"),
/// 			Type:  pulumi.String("CLOUD_FORMATION_TEMPLATE"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_servicecatalog_product" "example" {
///   provisioning_artifact_parameters = {
///     template_url = "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json"
///   }
///   name  = "example"
///   owner = "example-owner"
///   type  = "CLOUD_FORMATION_TEMPLATE"
///   tags = {
///     "foo" = "bar"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.servicecatalog.Product;
/// import com.pulumi.aws.servicecatalog.ProductArgs;
/// import com.pulumi.aws.servicecatalog.inputs.ProductProvisioningArtifactParametersArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .provisioningArtifactParameters(ProductProvisioningArtifactParametersArgs.builder()
///                 .templateUrl("https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json")
///                 .build())
///             .name("example")
///             .owner("example-owner")
///             .type("CLOUD_FORMATION_TEMPLATE")
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:Product
///     properties:
///       provisioningArtifactParameters:
///         templateUrl: https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/temp1.json
///       name: example
///       owner: example-owner
///       type: CLOUD_FORMATION_TEMPLATE
///       tags:
///         foo: bar
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.Product` using the product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/product:Product example prod-dnigbtea24ste
/// ```
class Product extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;
  /// ARN of the product.
  late final pulumi.Output<String> arn;
  /// Time when the product was created.
  late final pulumi.Output<String> createdTime;
  /// Description of the product.
  late final pulumi.Output<String> description;
  /// Distributor (i.e., vendor) of the product.
  late final pulumi.Output<String> distributor;
  /// Whether the product has a default path. If the product does not have a default path, call `ListLaunchPaths` to disambiguate between paths.  Otherwise, `ListLaunchPaths` is not required, and the output of ProductViewSummary can be used directly with `DescribeProvisioningParameters`.
  late final pulumi.Output<bool> hasDefaultPath;
  /// Name of the product.
  late final pulumi.Output<String> name;
  /// Owner of the product.
  late final pulumi.Output<String> owner;
  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioningArtifactParameters` Block for details.
  late final pulumi.Output<ProductProvisioningArtifactParameters> provisioningArtifactParameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the product.
  late final pulumi.Output<String> status;
  /// Support information about the product.
  late final pulumi.Output<String> supportDescription;
  /// Contact email for product support.
  late final pulumi.Output<String> supportEmail;
  /// Contact URL for product support.
  late final pulumi.Output<String> supportUrl;
  /// Tags to apply to the product. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  /// Creates a new [Product].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Product]. {@macro pulumi_servicecatalog_product_product_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Product(
    String name, {
    ProductArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/product:Product',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    distributor = registerOutput<String>('distributor');
    hasDefaultPath = registerOutput<bool>('hasDefaultPath');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    provisioningArtifactParameters = registerOutput<ProductProvisioningArtifactParameters>('provisioningArtifactParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProductProvisioningArtifactParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    supportDescription = registerOutput<String>('supportDescription');
    supportEmail = registerOutput<String>('supportEmail');
    supportUrl = registerOutput<String>('supportUrl');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Product] resource's state with the given [name] and [id].
  static Product get(
    String name,
    pulumi.Input<String> id, {
    ProductState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Product._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Product._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/product:Product',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    distributor = registerOutput<String>('distributor');
    hasDefaultPath = registerOutput<bool>('hasDefaultPath');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    provisioningArtifactParameters = registerOutput<ProductProvisioningArtifactParameters>('provisioningArtifactParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProductProvisioningArtifactParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    supportDescription = registerOutput<String>('supportDescription');
    supportEmail = registerOutput<String>('supportEmail');
    supportUrl = registerOutput<String>('supportUrl');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Product] resource.
  Product.reference(String urn)
    : super(
        'aws:servicecatalog/product:Product',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    distributor = registerOutput<String>('distributor');
    hasDefaultPath = registerOutput<bool>('hasDefaultPath');
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    provisioningArtifactParameters = registerOutput<ProductProvisioningArtifactParameters>('provisioningArtifactParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProductProvisioningArtifactParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    supportDescription = registerOutput<String>('supportDescription');
    supportEmail = registerOutput<String>('supportEmail');
    supportUrl = registerOutput<String>('supportUrl');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
