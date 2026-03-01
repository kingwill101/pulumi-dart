// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_project.dart';

/// Result data returned by getProjects.
class GetProjectsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetProjectsProject> projects;

  /// Creates a new [GetProjectsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [projects] Required.
  GetProjectsResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.projects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'projects': pulumi.Input.encodeList<GetProjectsProject, Map<String, dynamic>>(projects, (value) => value.toMap()),
    };
  }

  factory GetProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      projects: pulumi.Input.decodeList<GetProjectsProject>(map['projects'], (value) => GetProjectsProject.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

