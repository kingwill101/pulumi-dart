import 'package:pulumi/pulumi.dart';
import '../project_service_catalog_provisioning_details/project_service_catalog_provisioning_details.dart';
import 'project_args7.dart';

/// Provides a SageMaker AI Project resource.
///
/// > Note: If you are trying to use SageMaker AI projects with SageMaker AI studio you will need to add a tag with the key `sagemaker:studio-visibility` with value <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. For more on requirements to use projects and permission needed see [AWS Docs](https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-projects-templates-custom.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Project("example", {
/// projectName: "example",
/// serviceCatalogProvisioningDetails: {
/// productId: exampleAwsServicecatalogProduct.id,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Project("example",
/// project_name="example",
/// service_catalog_provisioning_details={
/// "product_id": example_aws_servicecatalog_product["id"],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.Project("example", new()
/// {
/// ProjectName = "example",
/// ServiceCatalogProvisioningDetails = new Aws.Sagemaker.Inputs.ProjectServiceCatalogProvisioningDetailsArgs
/// {
/// ProductId = exampleAwsServicecatalogProduct.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewProject(ctx, "example", &sagemaker.ProjectArgs{
/// ProjectName: pulumi.String("example"),
/// ServiceCatalogProvisioningDetails: &sagemaker.ProjectServiceCatalogProvisioningDetailsArgs{
/// ProductId: pulumi.Any(exampleAwsServicecatalogProduct.Id),
/// },
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
/// import com.pulumi.aws.sagemaker.Project;
/// import com.pulumi.aws.sagemaker.ProjectArgs;
/// import com.pulumi.aws.sagemaker.inputs.ProjectServiceCatalogProvisioningDetailsArgs;
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
/// var example = new Project("example", ProjectArgs.builder()
/// .projectName("example")
/// .serviceCatalogProvisioningDetails(ProjectServiceCatalogProvisioningDetailsArgs.builder()
/// .productId(exampleAwsServicecatalogProduct.id())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:Project
/// properties:
/// projectName: example
/// serviceCatalogProvisioningDetails:
/// productId: ${exampleAwsServicecatalogProduct.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Projects using the <span pulumi-lang-nodejs="`projectName`" pulumi-lang-dotnet="`ProjectName`" pulumi-lang-go="`projectName`" pulumi-lang-python="`project_name`" pulumi-lang-yaml="`projectName`" pulumi-lang-java="`projectName`">`project_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/project:Project example example
/// ```
class Project7 extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Project.
  late final Output<String> arn;

  /// A description for the project.
  late final Output<String?> projectDescription;

  /// The ID of the project.
  late final Output<String> projectId;

  /// The name of the Project.
  late final Output<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  late final Output<ProjectServiceCatalogProvisioningDetails>
      serviceCatalogProvisioningDetails;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Project7(
    String name, {
    ProjectArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.projectDescription = Output.createUnknown<String?>();
    this.projectId = Output.createUnknown<String>();
    this.projectName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serviceCatalogProvisioningDetails =
        Output.createUnknown<ProjectServiceCatalogProvisioningDetails>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
