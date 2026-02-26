import 'package:pulumi/pulumi.dart';
import 'provisioning_artifact_args.dart';

/// Manages a Service Catalog Provisioning Artifact for a specified product.
///
/// > A "provisioning artifact" is also referred to as a "version."
///
/// > **NOTE:** You cannot create a provisioning artifact for a product that was shared with you.
///
/// > **NOTE:** The user or role that use this resource must have the `cloudformation:GetTemplate` IAM policy permission. This policy permission is required when using the <span pulumi-lang-nodejs="`templatePhysicalId`" pulumi-lang-dotnet="`TemplatePhysicalId`" pulumi-lang-go="`templatePhysicalId`" pulumi-lang-python="`template_physical_id`" pulumi-lang-yaml="`templatePhysicalId`" pulumi-lang-java="`templatePhysicalId`">`template_physical_id`</span> argument.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.ProvisioningArtifact("example", {
/// name: "example",
/// productId: exampleAwsServicecatalogProduct.id,
/// type: "CLOUD_FORMATION_TEMPLATE",
/// templateUrl: `https://${exampleAwsS3Bucket.bucketRegionalDomainName}/${exampleAwsS3Object.key}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ProvisioningArtifact("example",
/// name="example",
/// product_id=example_aws_servicecatalog_product["id"],
/// type="CLOUD_FORMATION_TEMPLATE",
/// template_url=f"https://{example_aws_s3_bucket['bucketRegionalDomainName']}/{example_aws_s3_object['key']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ServiceCatalog.ProvisioningArtifact("example", new()
/// {
/// Name = "example",
/// ProductId = exampleAwsServicecatalogProduct.Id,
/// Type = "CLOUD_FORMATION_TEMPLATE",
/// TemplateUrl = $"https://{exampleAwsS3Bucket.BucketRegionalDomainName}/{exampleAwsS3Object.Key}",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := servicecatalog.NewProvisioningArtifact(ctx, "example", &servicecatalog.ProvisioningArtifactArgs{
/// Name:        pulumi.String("example"),
/// ProductId:   pulumi.Any(exampleAwsServicecatalogProduct.Id),
/// Type:        pulumi.String("CLOUD_FORMATION_TEMPLATE"),
/// TemplateUrl: pulumi.Sprintf("https://%v/%v", exampleAwsS3Bucket.BucketRegionalDomainName, exampleAwsS3Object.Key),
/// })
/// if err != nil {
/// return err
/// }
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ProvisioningArtifact("example", ProvisioningArtifactArgs.builder()
/// .name("example")
/// .productId(exampleAwsServicecatalogProduct.id())
/// .type("CLOUD_FORMATION_TEMPLATE")
/// .templateUrl(String.format("https://%s/%s", exampleAwsS3Bucket.bucketRegionalDomainName(),exampleAwsS3Object.key()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:servicecatalog:ProvisioningArtifact
/// properties:
/// name: example
/// productId: ${exampleAwsServicecatalogProduct.id}
/// type: CLOUD_FORMATION_TEMPLATE
/// templateUrl: https://${exampleAwsS3Bucket.bucketRegionalDomainName}/${exampleAwsS3Object.key}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.servicecatalog.ProvisioningArtifact`" pulumi-lang-dotnet="`aws.servicecatalog.ProvisioningArtifact`" pulumi-lang-go="`servicecatalog.ProvisioningArtifact`" pulumi-lang-python="`servicecatalog.ProvisioningArtifact`" pulumi-lang-yaml="`aws.servicecatalog.ProvisioningArtifact`" pulumi-lang-java="`aws.servicecatalog.ProvisioningArtifact`">`aws.servicecatalog.ProvisioningArtifact`</span> using the provisioning artifact ID and product ID separated by a colon. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/provisioningArtifact:ProvisioningArtifact example pa-ij2b6lusy6dec:prod-el3an0rma3
/// ```
class ProvisioningArtifact extends CustomResource {
  /// Language code. Valid values: <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span> (English), <span pulumi-lang-nodejs="`jp`" pulumi-lang-dotnet="`Jp`" pulumi-lang-go="`jp`" pulumi-lang-python="`jp`" pulumi-lang-yaml="`jp`" pulumi-lang-java="`jp`">`jp`</span> (Japanese), <span pulumi-lang-nodejs="`zh`" pulumi-lang-dotnet="`Zh`" pulumi-lang-go="`zh`" pulumi-lang-python="`zh`" pulumi-lang-yaml="`zh`" pulumi-lang-java="`zh`">`zh`</span> (Chinese). The default value is <span pulumi-lang-nodejs="`en`" pulumi-lang-dotnet="`En`" pulumi-lang-go="`en`" pulumi-lang-python="`en`" pulumi-lang-yaml="`en`" pulumi-lang-java="`en`">`en`</span>.
  late final Output<String?> acceptLanguage;

  /// Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> active;

  /// Time when the provisioning artifact was created.
  late final Output<String> createdTime;

  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  late final Output<String> description;

  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  late final Output<bool?> disableTemplateValidation;

  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  late final Output<String?> guidance;

  /// Name of the provisioning artifact (for example, <span pulumi-lang-nodejs="`v1`" pulumi-lang-dotnet="`V1`" pulumi-lang-go="`v1`" pulumi-lang-python="`v1`" pulumi-lang-yaml="`v1`" pulumi-lang-java="`v1`">`v1`</span>, <span pulumi-lang-nodejs="`v2beta`" pulumi-lang-dotnet="`V2beta`" pulumi-lang-go="`v2beta`" pulumi-lang-python="`v2beta`" pulumi-lang-yaml="`v2beta`" pulumi-lang-java="`v2beta`">`v2beta`</span>). No spaces are allowed.
  late final Output<String> name;

  /// Identifier of the product.
  late final Output<String> productId;

  /// Provisioning artifact identifier.
  late final Output<String> provisioningArtifactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  late final Output<String?> templatePhysicalId;

  /// Template source as URL of the CloudFormation template in Amazon S3.
  ///
  /// The following arguments are optional:
  late final Output<String?> templateUrl;

  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  late final Output<String?> type;

  ProvisioningArtifact(
    String name, {
    ProvisioningArtifactArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/provisioningArtifact:ProvisioningArtifact',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.active = registerOutput<bool?>('active');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.disableTemplateValidation =
        registerOutput<bool?>('disableTemplateValidation');
    this.guidance = registerOutput<String?>('guidance');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.provisioningArtifactId =
        registerOutput<String>('provisioningArtifactId');
    this.region = registerOutput<String>('region');
    this.templatePhysicalId = registerOutput<String?>('templatePhysicalId');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.type = registerOutput<String?>('type');
  }
}
