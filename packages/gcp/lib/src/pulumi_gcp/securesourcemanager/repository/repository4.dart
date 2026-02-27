import 'package:pulumi/pulumi.dart';
import '../repository_initial_config/repository_initial_config.dart';
import '../repository_uri/repository_uri.dart';
import 'repository_args4.dart';

/// Repositories store source code. It supports all Git SCM client commands and has built-in pull requests and issue tracking. Both HTTPS and SSH authentication are supported.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
/// ## Example Usage
///
/// ### Secure Source Manager Repository Basic
///
///
///
/// ### Secure Source Manager Repository Initial Config
///
///
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}`
///
/// * `{{location}}/{{repository_id}}`
///
/// * `{{repository_id}}`
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{project}}/{{location}}/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{location}}/{{repository_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{repository_id}}
/// ```
class Repository4 extends CustomResource {
  /// Time the repository was created in UTC.
  late final Output<String> createTime;

  /// The deletion policy for the repository. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental deletion
  /// by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  late final Output<String?> deletionPolicy;

  /// Description of the repository, which cannot exceed 500 characters.
  late final Output<String?> description;

  /// Initial configurations for the repository.
  /// Structure is documented below.
  late final Output<RepositoryInitialConfig?> initialConfig;

  /// The name of the instance in which the repository is hosted.
  late final Output<String> instance;

  /// The location for the Repository.
  late final Output<String> location;

  /// The resource name for the Repository.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The ID for the Repository.
  late final Output<String> repositoryId;

  /// Unique identifier of the repository.
  late final Output<String> uid;

  /// Time the repository was updated in UTC.
  late final Output<String> updateTime;

  /// URIs for the repository.
  /// Structure is documented below.
  late final Output<List<RepositoryUri>> uris;

  Repository4(
    String name, {
    RepositoryArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.description = registerOutput<String?>('description');
    this.initialConfig =
        registerOutput<RepositoryInitialConfig?>('initialConfig');
    this.instance = registerOutput<String>('instance');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.uris = registerOutput<List<RepositoryUri>>('uris');
  }
}
