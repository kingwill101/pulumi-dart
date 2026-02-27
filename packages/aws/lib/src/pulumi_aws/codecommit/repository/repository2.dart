import 'package:pulumi/pulumi.dart';
import 'repository_args2.dart';

/// Provides a CodeCommit Repository Resource.
///
/// ## Example Usage
///
///
///
/// ### AWS KMS Customer Managed Keys (CMK)
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit repository using repository name. For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/repository:Repository imported ExistingRepo
/// ```
class Repository2 extends CustomResource {
  /// The ARN of the repository
  late final Output<String> arn;

  /// The URL to use for cloning the repository over HTTPS.
  late final Output<String> cloneUrlHttp;

  /// The URL to use for cloning the repository over SSH.
  late final Output<String> cloneUrlSsh;

  /// The default branch of the repository. The branch specified here needs to exist.
  late final Output<String?> defaultBranch;

  /// The description of the repository. This needs to be less than 1000 characters
  late final Output<String?> description;

  /// The ARN of the encryption key. If no key is specified, the default `aws/codecommit` Amazon Web Services managed key is used.
  late final Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the repository
  late final Output<String> repositoryId;

  /// The name for the repository. This needs to be less than 100 characters.
  late final Output<String> repositoryName;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Repository2(
    String name, {
    RepositoryArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloneUrlHttp = registerOutput<String>('cloneUrlHttp');
    this.cloneUrlSsh = registerOutput<String>('cloneUrlSsh');
    this.defaultBranch = registerOutput<String?>('defaultBranch');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
