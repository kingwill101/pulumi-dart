import 'package:pulumi/pulumi.dart';
import '../project_service_catalog_provisioning_details/project_service_catalog_provisioning_details.dart';
import 'project_args7.dart';

/// Provides a SageMaker AI Project resource.
///
/// > Note: If you are trying to use SageMaker AI projects with SageMaker AI studio you will need to add a tag with the key `sagemaker:studio-visibility` with value `true`. For more on requirements to use projects and permission needed see [AWS Docs](https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-projects-templates-custom.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Projects using the `project_name`. For example:
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

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
    this.arn = registerOutput<String>('arn');
    this.projectDescription = registerOutput<String?>('projectDescription');
    this.projectId = registerOutput<String>('projectId');
    this.projectName = registerOutput<String>('projectName');
    this.region = registerOutput<String>('region');
    this.serviceCatalogProvisioningDetails =
        registerOutput<ProjectServiceCatalogProvisioningDetails>(
            'serviceCatalogProvisioningDetails');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
