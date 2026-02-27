import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_external_connections/repository_external_connections.dart';
import '../repository_upstream/repository_upstream.dart';
import 'repository_args.dart';

/// Provides a CodeArtifact Repository Resource.
///
/// ## Example Usage
///
///
///
///
/// ### With Upstream Repository
///
///
///
///
/// ### With External Connection
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeArtifact repository.
///
///
/// Using `pulumi import`, import CodeArtifact Repository using the CodeArtifact Repository ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/repository:Repository example arn:aws:codeartifact:us-west-2:012345678912:repository/tf-acc-test-6968272603913957763/tf-acc-test-6968272603913957763
/// ```
class Repository extends pulumi.CustomResource {
  /// The account number of the AWS account that manages the repository.
  late final pulumi.Output<String> administratorAccount;

  /// The ARN of the repository.
  late final pulumi.Output<String> arn;

  /// The description of the repository.
  late final pulumi.Output<String?> description;

  /// The domain that contains the created repository.
  late final pulumi.Output<String> domain;

  /// The account number of the AWS account that owns the domain.
  late final pulumi.Output<String> domainOwner;

  /// An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections.
  late final pulumi.Output<RepositoryExternalConnections?> externalConnections;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The name of the repository to create.
  late final pulumi.Output<String> repository;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream
  late final pulumi.Output<List<RepositoryUpstream>?> upstreams;

  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorAccount = registerOutput<String>('administratorAccount');
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.domain = registerOutput<String>('domain');
    this.domainOwner = registerOutput<String>('domainOwner');
    this.externalConnections =
        registerOutput<RepositoryExternalConnections?>('externalConnections');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<String>('repository');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.upstreams = registerOutput<List<RepositoryUpstream>?>('upstreams');
  }
}
