import 'package:pulumi/pulumi.dart';
import '../repository_creation_template_encryption_configuration/repository_creation_template_encryption_configuration.dart';
import '../repository_creation_template_image_tag_mutability_exclusion_filter/repository_creation_template_image_tag_mutability_exclusion_filter.dart';
import 'repository_creation_template_args.dart';

/// Provides an Elastic Container Registry Repository Creation Template.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the ECR Repository Creating Templates using the `prefix`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repositoryCreationTemplate:RepositoryCreationTemplate example example
/// ```
class RepositoryCreationTemplate extends CustomResource {
  /// Which features this template applies to. Must contain one or more of `CREATE_ON_PUSH`, `PULL_THROUGH_CACHE`, or `REPLICATION`.
  late final Output<List<String>> appliedFors;

  /// A custom IAM role to use for repository creation. Required if using repository tags or KMS encryption.
  late final Output<String?> customRoleArn;

  /// The description for this template.
  late final Output<String?> description;

  /// Encryption configuration for any created repositories. See below for schema.
  late final Output<List<RepositoryCreationTemplateEncryptionConfiguration>?>
      encryptionConfigurations;

  /// The tag mutability setting for any created repositories. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  late final Output<String?> imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  late final Output<
          List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>?>
      imageTagMutabilityExclusionFilters;

  /// The lifecycle policy document to apply to any created repositories. See more details about [Policy Parameters](http://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html#lifecycle_policy_parameters) in the official AWS docs. Consider using the `aws.ecr.getLifecyclePolicyDocument` data_source to generate/manage the JSON document used for the `lifecycle_policy` argument.
  late final Output<String?> lifecyclePolicy;

  /// The repository name prefix to match against. Use `ROOT` to match any prefix that doesn't explicitly match another template.
  late final Output<String> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The registry ID the repository creation template applies to.
  late final Output<String> registryId;

  /// The registry policy document to apply to any created repositories. This is a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide.
  late final Output<String?> repositoryPolicy;

  /// A map of tags to assign to any created repositories.
  late final Output<Map<String, String>?> resourceTags;

  RepositoryCreationTemplate(
    String name, {
    RepositoryCreationTemplateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repositoryCreationTemplate:RepositoryCreationTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appliedFors = registerOutput<List<String>>('appliedFors');
    this.customRoleArn = registerOutput<String?>('customRoleArn');
    this.description = registerOutput<String?>('description');
    this.encryptionConfigurations = registerOutput<
            List<RepositoryCreationTemplateEncryptionConfiguration>?>(
        'encryptionConfigurations');
    this.imageTagMutability = registerOutput<String?>('imageTagMutability');
    this.imageTagMutabilityExclusionFilters = registerOutput<
            List<RepositoryCreationTemplateImageTagMutabilityExclusionFilter>?>(
        'imageTagMutabilityExclusionFilters');
    this.lifecyclePolicy = registerOutput<String?>('lifecyclePolicy');
    this.prefix = registerOutput<String>('prefix');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryPolicy = registerOutput<String?>('repositoryPolicy');
    this.resourceTags = registerOutput<Map<String, String>?>('resourceTags');
  }
}
