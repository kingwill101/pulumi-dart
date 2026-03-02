// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_projects_project.dart';

/// Result data returned by getProjects.
class GetProjectsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetProjectsProject> projects;
  final String? status;

  /// Creates a new [GetProjectsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [projects] Required.
  /// [status] Optional.
  GetProjectsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.projects,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'projects': pulumi.Input.encodeList<GetProjectsProject, Map<String, dynamic>>(projects, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetProjectsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      projects: pulumi.Input.decodeList<GetProjectsProject>(map['projects'], (value) => GetProjectsProject.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

