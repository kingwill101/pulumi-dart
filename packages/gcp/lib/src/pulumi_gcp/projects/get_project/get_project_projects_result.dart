// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_project_project/get_project_project.dart';

/// Result data returned by getProject.
class GetProjectProjectsResult {
  final String filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of projects matching the provided filter. Structure is defined below.
  final List<GetProjectProject> projects;

  GetProjectProjectsResult({
    required this.filter,
    required this.id,
    required this.projects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['id'] = id;
    map['projects'] =
        pulumi.Input.encodeList<GetProjectProject, Map<String, dynamic>>(
            projects, (value) => value.toMap());
    return map;
  }

  factory GetProjectProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectProjectsResult(
      filter: map['filter'] as String,
      id: map['id'] as String,
      projects: pulumi.Input.decodeList<GetProjectProject>(
          map['projects'],
          (value) => GetProjectProject.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
