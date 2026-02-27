import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_group_repository/repository_group_repository.dart';
import 'repository_group_args.dart';

/// The resource for managing Repository Group for Gemini Code Assist.
///
///
/// To get more information about RepositoryGroup, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.codeRepositoryIndexes.repositoryGroups)
///
/// ## Example Usage
///
/// ### Gemini Repository Group Basic
///
///
///
///
/// ## Import
///
/// RepositoryGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}`
///
/// * `{{project}}/{{location}}/{{code_repository_index}}/{{repository_group_id}}`
///
/// * `{{location}}/{{code_repository_index}}/{{repository_group_id}}`
///
/// When using the `pulumi import` command, RepositoryGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroup:RepositoryGroup default projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroup:RepositoryGroup default {{project}}/{{location}}/{{code_repository_index}}/{{repository_group_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroup:RepositoryGroup default {{location}}/{{code_repository_index}}/{{repository_group_id}}
/// ```
class RepositoryGroup extends pulumi.CustomResource {
  /// Required. Id of the Code Repository Index.
  late final pulumi.Output<String> codeRepositoryIndex;

  /// Output only. Create time stamp.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. Name of Repository Group.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Required. List of repositories to group.
  /// Structure is documented below.
  late final pulumi.Output<List<RepositoryGroupRepository>> repositories;

  /// Required. Id of the Repository Group.
  late final pulumi.Output<String> repositoryGroupId;

  /// Output only. Update time stamp.
  late final pulumi.Output<String> updateTime;

  RepositoryGroup(
    String name, {
    RepositoryGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/repositoryGroup:RepositoryGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.codeRepositoryIndex = registerOutput<String>('codeRepositoryIndex');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.repositories =
        registerOutput<List<RepositoryGroupRepository>>('repositories');
    this.repositoryGroupId = registerOutput<String>('repositoryGroupId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
