import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_service_catalog_provisioning_details.dart';
import 'project_state.dart';

/// Provides a SageMaker AI Project resource.
///
/// &gt; Note: If you are trying to use SageMaker AI projects with SageMaker AI studio you will need to add a tag with the key `sagemaker:studio-visibility` with value `true`. For more on requirements to use projects and permission needed see [AWS Docs](https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-projects-templates-custom.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Project("example", {
///     serviceCatalogProvisioningDetails: {
///         productId: exampleAwsServicecatalogProduct.id,
///     },
///     projectName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Project("example",
///     service_catalog_provisioning_details={
///         "product_id": example_aws_servicecatalog_product["id"],
///     },
///     project_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.Project("example", new()
///     {
///         ServiceCatalogProvisioningDetails = new Aws.Sagemaker.Inputs.ProjectServiceCatalogProvisioningDetailsArgs
///         {
///             ProductId = exampleAwsServicecatalogProduct.Id,
///         },
///         ProjectName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewProject(ctx, "example", &sagemaker.ProjectArgs{
/// 			ServiceCatalogProvisioningDetails: &sagemaker.ProjectServiceCatalogProvisioningDetailsArgs{
/// 				ProductId: pulumi.Any(exampleAwsServicecatalogProduct.Id),
/// 			},
/// 			ProjectName: pulumi.String("example"),
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
/// resource "aws_sagemaker_project" "example" {
///   service_catalog_provisioning_details = {
///     product_id = exampleAwsServicecatalogProduct.id
///   }
///   project_name = "example"
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
///         var example = new Project("example", ProjectArgs.builder()
///             .serviceCatalogProvisioningDetails(ProjectServiceCatalogProvisioningDetailsArgs.builder()
///                 .productId(exampleAwsServicecatalogProduct.id())
///                 .build())
///             .projectName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Project
///     properties:
///       serviceCatalogProvisioningDetails:
///         productId: ${exampleAwsServicecatalogProduct.id}
///       projectName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Projects using the `projectName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/project:Project example example
/// ```
class Project extends pulumi.CustomResource {
  /// ARN assigned by AWS to this Project.
  late final pulumi.Output<String> arn;
  /// A description for the project.
  late final pulumi.Output<String?> projectDescription;
  /// The ID of the project.
  late final pulumi.Output<String> projectId;
  /// The name of the Project.
  late final pulumi.Output<String> projectName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The product ID and provisioning artifact ID to provision a service catalog. See Service Catalog Provisioning Details below.
  late final pulumi.Output<ProjectServiceCatalogProvisioningDetails> serviceCatalogProvisioningDetails;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_sagemaker_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    projectDescription = registerOutput<String?>('projectDescription');
    projectId = registerOutput<String>('projectId');
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    serviceCatalogProvisioningDetails = registerOutput<ProjectServiceCatalogProvisioningDetails>('serviceCatalogProvisioningDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectServiceCatalogProvisioningDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    projectDescription = registerOutput<String?>('projectDescription');
    projectId = registerOutput<String>('projectId');
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    serviceCatalogProvisioningDetails = registerOutput<ProjectServiceCatalogProvisioningDetails>('serviceCatalogProvisioningDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectServiceCatalogProvisioningDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Project] resource.
  Project.reference(String urn)
    : super(
        'aws:sagemaker/project:Project',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    projectDescription = registerOutput<String?>('projectDescription');
    projectId = registerOutput<String>('projectId');
    projectName = registerOutput<String>('projectName');
    region = registerOutput<String>('region');
    serviceCatalogProvisioningDetails = registerOutput<ProjectServiceCatalogProvisioningDetails>('serviceCatalogProvisioningDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectServiceCatalogProvisioningDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
