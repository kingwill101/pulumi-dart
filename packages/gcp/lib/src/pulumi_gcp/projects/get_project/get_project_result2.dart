// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_project_project/get_project_project.dart';

/// Result data returned by getProject.
class GetProjectResult2 {
  final String filter;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of projects matching the provided filter. Structure is defined below.
  final List<GetProjectProject> projects;

  GetProjectResult2({
    required this.filter,
    required this.id,
    required this.projects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['id'] = id;
    map['projects'] = Input.encodeList<GetProjectProject, Map<String, dynamic>>(
        projects, (value) => value.toMap());
    return map;
  }

  factory GetProjectResult2.fromMap(Map<String, dynamic> map) {
    return GetProjectResult2(
      filter: map['filter'] as String,
      id: map['id'] as String,
      projects: Input.decodeList<GetProjectProject>(
          map['projects'],
          (value) => GetProjectProject.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
