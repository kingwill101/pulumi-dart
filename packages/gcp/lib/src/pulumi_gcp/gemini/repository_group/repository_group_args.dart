// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_group_repository/repository_group_repository.dart';

/// The set of arguments for RepositoryGroup.
class RepositoryGroupArgs {
  /// Required. Id of the Code Repository Index.
  final Input<String> codeRepositoryIndex;

  /// Optional. Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the Code Repository Index, for example `us-central1`.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Required. List of repositories to group.
  /// Structure is documented below.
  final Input<List<RepositoryGroupRepository>> repositories;

  /// Required. Id of the Repository Group.
  final Input<String> repositoryGroupId;

  RepositoryGroupArgs({
    required this.codeRepositoryIndex,
    this.labels,
    required this.location,
    this.project,
    required this.repositories,
    required this.repositoryGroupId,
  });

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
    map['repositories'] = Input.mapInputValue<List<RepositoryGroupRepository>,
            List<Map<String, dynamic>>>(
        repositories,
        (value) =>
            Input.encodeList<RepositoryGroupRepository, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['repositoryGroupId'] = repositoryGroupId;
    return map;
  }

  factory RepositoryGroupArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryGroupArgs(
      codeRepositoryIndex: Input.asInput<String>(map['codeRepositoryIndex']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      repositories:
          Input.asInput<List<RepositoryGroupRepository>>(map['repositories']),
      repositoryGroupId: Input.asInput<String>(map['repositoryGroupId']),
    );
  }
}
