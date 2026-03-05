// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_industrial_pid_projects_project.dart';

/// Result data returned by getIndustrialPidProjects.
class GetIndustrialPidProjectsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Pid Project names.
  final List<String> names;
  final String? outputFile;
  /// The ID of Pid Organization.
  final String? pidOrganizationId;
  /// The name of Pid Project.
  final String? pidProjectName;
  /// A list of Brain Industrial Pid Projects. Each element contains the following attributes:
  final List<GetIndustrialPidProjectsProject> projects;

  /// Creates a new [GetIndustrialPidProjectsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Pid Project names.
  /// [outputFile] Optional.
  /// [pidOrganizationId] The ID of Pid Organization.
  /// [pidProjectName] The name of Pid Project.
  /// [projects] A list of Brain Industrial Pid Projects. Each element contains the following attributes:
  GetIndustrialPidProjectsResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pidOrganizationId,
    this.pidProjectName,
    required this.projects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pidOrganizationId': ?pidOrganizationId,
      'pidProjectName': ?pidProjectName,
      'projects': pulumi.Input.encodeList<GetIndustrialPidProjectsProject, Map<String, dynamic>>(projects, (value) => value.toMap()),
    };
  }

  factory GetIndustrialPidProjectsResult.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidProjectsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pidOrganizationId: (() { final guardedValue = map['pidOrganizationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pidProjectName: (() { final guardedValue = map['pidProjectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      projects: pulumi.Input.decodeList<GetIndustrialPidProjectsProject>(map['projects']!, (value) => GetIndustrialPidProjectsProject.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

