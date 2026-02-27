import 'package:pulumi/pulumi.dart';
import '../repository_pubsub_config/repository_pubsub_config.dart';
import 'repository_args5.dart';

/// A repository (or repo) is a Git repository storing versioned source content.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/source-repositories/docs/reference/rest/v1/projects.repos)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/source-repositories/)
///
/// ## Example Usage
///
/// ### Sourcerepo Repository Basic
///
///
///
/// ### Sourcerepo Repository Full
///
///
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/repos/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repository:Repository default projects/{{project}}/repos/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:sourcerepo/repository:Repository default {{name}}
/// ```
class Repository5 extends CustomResource {
  /// If set to true, skip repository creation if a repository with the same name already exists.
  late final Output<bool?> createIgnoreAlreadyExists;

  /// Resource name of the repository, of the form `{{repo}}`.
  /// The repo name may contain slashes. eg, `name/with/slash`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// How this repository publishes a change in the repository through Cloud Pub/Sub.
  /// Keyed by the topic names.
  /// Structure is documented below.
  late final Output<List<RepositoryPubsubConfig>?> pubsubConfigs;

  /// The disk usage of the repo, in bytes.
  late final Output<int> size;

  /// URL to clone the repository from Google Cloud Source Repositories.
  late final Output<String> url;

  Repository5(
    String name, {
    RepositoryArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:sourcerepo/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createIgnoreAlreadyExists =
        registerOutput<bool?>('createIgnoreAlreadyExists');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pubsubConfigs =
        registerOutput<List<RepositoryPubsubConfig>?>('pubsubConfigs');
    this.size = registerOutput<int>('size');
    this.url = registerOutput<String>('url');
  }
}
