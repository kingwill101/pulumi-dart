// ignore_for_file: unused_element, unnecessary_cast


class GetIndustrialPidProjectsProject {
  /// The ID of the Pid Project.
  final String id;
  /// The ID of Pid Organization.
  final String pidOrganizationId;
  /// The description of Pid Project.
  final String pidProjectDesc;
  /// The ID of Pid Project.
  final String pidProjectId;
  /// The name of Pid Project.
  final String pidProjectName;

  /// Creates a new [GetIndustrialPidProjectsProject].
  /// [id] The ID of the Pid Project.
  /// [pidOrganizationId] The ID of Pid Organization.
  /// [pidProjectDesc] The description of Pid Project.
  /// [pidProjectId] The ID of Pid Project.
  /// [pidProjectName] The name of Pid Project.
  GetIndustrialPidProjectsProject({
    required this.id,
    required this.pidOrganizationId,
    required this.pidProjectDesc,
    required this.pidProjectId,
    required this.pidProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pidOrganizationId': pidOrganizationId,
      'pidProjectDesc': pidProjectDesc,
      'pidProjectId': pidProjectId,
      'pidProjectName': pidProjectName,
    };
  }

  factory GetIndustrialPidProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidProjectsProject(
      id: map['id'] as String,
      pidOrganizationId: map['pidOrganizationId'] as String,
      pidProjectDesc: map['pidProjectDesc'] as String,
      pidProjectId: map['pidProjectId'] as String,
      pidProjectName: map['pidProjectName'] as String,
    );
  }
}

