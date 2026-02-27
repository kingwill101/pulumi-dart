// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepositories.
class GetRepositoriesArgs {
  /// The location of the artifact registry repositories. eg `us-central1`.
  final pulumi.Input<String> location;

  /// Optional. An expression for filtering the results by name. You can also use wildcards `*`. I.e. `my-repo`, `*-repo`, `my-*`, `*-re*`. For further information reach out to the [API docs](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories/list).
  final pulumi.Input<String>? nameFilter;

  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetRepositoriesArgs({
    required this.location,
    this.nameFilter,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final nameFilterValue = nameFilter;
    if (nameFilterValue != null) {
      map['nameFilter'] = nameFilterValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetRepositoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      nameFilter: pulumi.Input.asOptionalInput<String>(map['nameFilter']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
