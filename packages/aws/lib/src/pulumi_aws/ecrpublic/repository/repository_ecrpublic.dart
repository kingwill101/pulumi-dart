import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_catalog_data/repository_catalog_data.dart';
import 'repository_ecrpublic_args.dart';

/// Provides a Public Elastic Container Registry Repository.
///
/// > **NOTE:** This resource can only be used in the `us-east-1` region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Public Repositories using the `repository_name`. For example:
///
/// ```sh
/// $ pulumi import aws:ecrpublic/repository:Repository example example
/// ```
class RepositoryEcrpublic extends pulumi.CustomResource {
  /// Full ARN of the repository.
  late final pulumi.Output<String> arn;

  /// Catalog data configuration for the repository. See below for schema.
  late final pulumi.Output<RepositoryCatalogData?> catalogData;
  late final pulumi.Output<bool?> forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID where the repository was created.
  late final pulumi.Output<String> registryId;

  /// Name of the repository.
  late final pulumi.Output<String> repositoryName;

  /// The URI of the repository.
  late final pulumi.Output<String> repositoryUri;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  RepositoryEcrpublic(
    String name, {
    RepositoryEcrpublicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecrpublic/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogData = registerOutput<RepositoryCatalogData?>('catalogData');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.repositoryUri = registerOutput<String>('repositoryUri');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
