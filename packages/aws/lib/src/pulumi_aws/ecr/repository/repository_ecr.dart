import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_encryption_configuration/repository_encryption_configuration.dart';
import '../repository_image_scanning_configuration/repository_image_scanning_configuration.dart';
import '../repository_image_tag_mutability_exclusion_filter/repository_image_tag_mutability_exclusion_filter.dart';
import 'repository_ecr_args.dart';

/// Provides an Elastic Container Registry Repository.
///
/// ## Example Usage
///
///
///
/// ### With Image Tag Mutability Exclusion
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the ECR repository.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import ECR Repositories using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/repository:Repository service test-service
/// ```
class RepositoryEcr extends pulumi.CustomResource {
  /// Full ARN of the repository.
  late final pulumi.Output<String> arn;

  /// Encryption configuration for the repository. See below for schema.
  late final pulumi.Output<List<RepositoryEncryptionConfiguration>?>
      encryptionConfigurations;

  /// If `true`, will delete the repository even if it contains images.
  /// Defaults to `false`.
  late final pulumi.Output<bool?> forceDelete;

  /// Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the [ECR User Guide](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html) for more information about image scanning.
  late final pulumi.Output<RepositoryImageScanningConfiguration?>
      imageScanningConfiguration;

  /// The tag mutability setting for the repository. Must be one of: `MUTABLE`, `IMMUTABLE`, `IMMUTABLE_WITH_EXCLUSION`, or `MUTABLE_WITH_EXCLUSION`. Defaults to `MUTABLE`.
  late final pulumi.Output<String?> imageTagMutability;

  /// Configuration block that defines filters to specify which image tags can override the default tag mutability setting. Only applicable when `image_tag_mutability` is set to `IMMUTABLE_WITH_EXCLUSION` or `MUTABLE_WITH_EXCLUSION`. See below for schema.
  late final pulumi.Output<List<RepositoryImageTagMutabilityExclusionFilter>?>
      imageTagMutabilityExclusionFilters;

  /// Name of the repository.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;

  /// The URL of the repository (in the form `aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName`).
  late final pulumi.Output<String> repositoryUrl;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  RepositoryEcr(
    String name, {
    RepositoryEcrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.encryptionConfigurations =
        registerOutput<List<RepositoryEncryptionConfiguration>?>(
            'encryptionConfigurations');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.imageScanningConfiguration =
        registerOutput<RepositoryImageScanningConfiguration?>(
            'imageScanningConfiguration');
    this.imageTagMutability = registerOutput<String?>('imageTagMutability');
    this.imageTagMutabilityExclusionFilters =
        registerOutput<List<RepositoryImageTagMutabilityExclusionFilter>?>(
            'imageTagMutabilityExclusionFilters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryUrl = registerOutput<String>('repositoryUrl');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
