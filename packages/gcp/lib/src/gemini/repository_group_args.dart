// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_group_repository.dart';

/// {@template pulumi_gemini_repository_group_repository_group_args_doc}
/// The set of arguments for RepositoryGroup.
/// {@endtemplate}
/// {@macro pulumi_gemini_repository_group_repository_group_args_doc}
class RepositoryGroupArgs {
  /// Required. Id of the Code Repository Index.
  final pulumi.Input<String> codeRepositoryIndex;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Required. List of repositories to group.
  /// Structure is documented below.
  final pulumi.Input<List<RepositoryGroupRepository>> repositories;

  /// Required. Id of the Repository Group.
  final pulumi.Input<String> repositoryGroupId;

  /// Creates a new [RepositoryGroupArgs].
  /// [codeRepositoryIndex] Required. Id of the Code Repository Index.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] The location of the Code Repository Index, for example `us-central1`.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositories] Required. List of repositories to group.
  /// [repositoryGroupId] Required. Id of the Repository Group.
  RepositoryGroupArgs({
    required String codeRepositoryIndex,
    Map<String, String>? labels,
    required String location,
    String? project,
    required List<RepositoryGroupRepository> repositories,
    required String repositoryGroupId,
  })  : codeRepositoryIndex = pulumi.Input.asInput<String>(codeRepositoryIndex),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        repositories =
            pulumi.Input.asInput<List<RepositoryGroupRepository>>(repositories),
        repositoryGroupId = pulumi.Input.asInput<String>(repositoryGroupId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeRepositoryIndex'] = codeRepositoryIndex;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositories'] = pulumi.Input.mapInputValue<
            List<RepositoryGroupRepository>, List<Map<String, dynamic>>>(
        repositories,
        (value) => pulumi.Input.encodeList<RepositoryGroupRepository,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['repositoryGroupId'] = repositoryGroupId;
    return map;
  }

  factory RepositoryGroupArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryGroupArgs(
      codeRepositoryIndex: map['codeRepositoryIndex'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositories: pulumi.Input.decodeList<RepositoryGroupRepository>(
          map['repositories'],
          (value) => RepositoryGroupRepository.fromMap(
              (value as Map).cast<String, dynamic>())),
      repositoryGroupId: map['repositoryGroupId'] as String,
    );
  }
}
