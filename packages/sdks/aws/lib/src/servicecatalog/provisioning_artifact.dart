import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_artifact_args.dart';
import 'provisioning_artifact_state.dart';

/// Manages a Service Catalog Provisioning Artifact for a specified product.
///
/// &gt; A "provisioning artifact" is also referred to as a "version."
///
/// &gt; **NOTE:** You cannot create a provisioning artifact for a product that was shared with you.
///
/// &gt; **NOTE:** The user or role that use this resource must have the `cloudformation:GetTemplate` IAM policy permission. This policy permission is required when using the `template_physical_id` argument.
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
/// const example = new aws.servicecatalog.ProvisioningArtifact("example", {
///     name: "example",
///     productId: exampleAwsServicecatalogProduct.id,
///     type: "CLOUD_FORMATION_TEMPLATE",
///     templateUrl: `https://${exampleAwsS3Bucket.bucketRegionalDomainName}/${exampleAwsS3Object.key}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ProvisioningArtifact("example",
///     name="example",
///     product_id=example_aws_servicecatalog_product["id"],
///     type="CLOUD_FORMATION_TEMPLATE",
///     template_url=f"https://{example_aws_s3_bucket['bucketRegionalDomainName']}/{example_aws_s3_object['key']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.ProvisioningArtifact("example", new()
///     {
///         Name = "example",
///         ProductId = exampleAwsServicecatalogProduct.Id,
///         Type = "CLOUD_FORMATION_TEMPLATE",
///         TemplateUrl = $"https://{exampleAwsS3Bucket.BucketRegionalDomainName}/{exampleAwsS3Object.Key}",
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
/// 		_, err := servicecatalog.NewProvisioningArtifact(ctx, "example", &servicecatalog.ProvisioningArtifactArgs{
/// 			Name:        pulumi.String("example"),
/// 			ProductId:   pulumi.Any(exampleAwsServicecatalogProduct.Id),
/// 			Type:        pulumi.String("CLOUD_FORMATION_TEMPLATE"),
/// 			TemplateUrl: pulumi.Sprintf("https://%v/%v", exampleAwsS3Bucket.BucketRegionalDomainName, exampleAwsS3Object.Key),
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
/// import com.pulumi.aws.servicecatalog.ProvisioningArtifact;
/// import com.pulumi.aws.servicecatalog.ProvisioningArtifactArgs;
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
///         var example = new ProvisioningArtifact("example", ProvisioningArtifactArgs.builder()
///             .name("example")
///             .productId(exampleAwsServicecatalogProduct.id())
///             .type("CLOUD_FORMATION_TEMPLATE")
///             .templateUrl(String.format("https://%s/%s", exampleAwsS3Bucket.bucketRegionalDomainName(),exampleAwsS3Object.key()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:ProvisioningArtifact
///     properties:
///       name: example
///       productId: ${exampleAwsServicecatalogProduct.id}
///       type: CLOUD_FORMATION_TEMPLATE
///       templateUrl: https://${exampleAwsS3Bucket.bucketRegionalDomainName}/${exampleAwsS3Object.key}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ProvisioningArtifact` using the provisioning artifact ID and product ID separated by a colon. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/provisioningArtifact:ProvisioningArtifact example pa-ij2b6lusy6dec:prod-el3an0rma3
/// ```
class ProvisioningArtifact extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is `true`.
  late final pulumi.Output<bool?> active;

  /// Time when the provisioning artifact was created.
  late final pulumi.Output<String> createdTime;

  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  late final pulumi.Output<String> description;

  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  late final pulumi.Output<bool?> disableTemplateValidation;

  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  late final pulumi.Output<String?> guidance;

  /// Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  late final pulumi.Output<String> name;

  /// Identifier of the product.
  late final pulumi.Output<String> productId;

  /// Provisioning artifact identifier.
  late final pulumi.Output<String> provisioningArtifactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  late final pulumi.Output<String?> templatePhysicalId;

  /// Template source as URL of the CloudFormation template in Amazon S3.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String?> templateUrl;

  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  late final pulumi.Output<String?> type;

  /// Creates a new [ProvisioningArtifact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProvisioningArtifact]. {@macro pulumi_servicecatalog_provisioning_artifact_provisioning_artifact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProvisioningArtifact(
    String name, {
    ProvisioningArtifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/provisioningArtifact:ProvisioningArtifact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    active = registerOutput<bool?>('active');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    disableTemplateValidation = registerOutput<bool?>(
      'disableTemplateValidation',
    );
    guidance = registerOutput<String?>('guidance');
    this.name = registerOutput<String>('name');
    productId = registerOutput<String>('productId');
    provisioningArtifactId = registerOutput<String>('provisioningArtifactId');
    region = registerOutput<String>('region');
    templatePhysicalId = registerOutput<String?>('templatePhysicalId');
    templateUrl = registerOutput<String?>('templateUrl');
    type = registerOutput<String?>('type');
  }

  /// Gets an existing [ProvisioningArtifact] resource's state with the given [name] and [id].
  static ProvisioningArtifact get(
    String name,
    pulumi.Input<String> id, {
    ProvisioningArtifactState? state,
  }) {
    return ProvisioningArtifact._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProvisioningArtifact._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/provisioningArtifact:ProvisioningArtifact',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    active = registerOutput<bool?>('active');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    disableTemplateValidation = registerOutput<bool?>(
      'disableTemplateValidation',
    );
    guidance = registerOutput<String?>('guidance');
    this.name = registerOutput<String>('name');
    productId = registerOutput<String>('productId');
    provisioningArtifactId = registerOutput<String>('provisioningArtifactId');
    region = registerOutput<String>('region');
    templatePhysicalId = registerOutput<String?>('templatePhysicalId');
    templateUrl = registerOutput<String?>('templateUrl');
    type = registerOutput<String?>('type');
  }
}
