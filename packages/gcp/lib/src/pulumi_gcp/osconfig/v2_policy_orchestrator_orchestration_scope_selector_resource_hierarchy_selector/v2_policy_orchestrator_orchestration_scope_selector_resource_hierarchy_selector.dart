// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector {
  /// Optional. Names of the folders in scope.
  /// Format: `folders/{folder_id}`
  final List<String>? includedFolders;

  /// Optional. Names of the projects in scope.
  /// Format: `projects/{project_number}`
  final List<String>? includedProjects;

  V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includedFoldersValue = includedFolders;
    if (includedFoldersValue != null) {
      map['includedFolders'] = includedFoldersValue;
    }
    final includedProjectsValue = includedProjects;
    if (includedProjectsValue != null) {
      map['includedProjects'] = includedProjectsValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector(
      includedFolders: map['includedFolders'] == null
          ? null
          : (map['includedFolders'] as List).cast<String>(),
      includedProjects: map['includedProjects'] == null
          ? null
          : (map['includedProjects'] as List).cast<String>(),
    );
  }
}
