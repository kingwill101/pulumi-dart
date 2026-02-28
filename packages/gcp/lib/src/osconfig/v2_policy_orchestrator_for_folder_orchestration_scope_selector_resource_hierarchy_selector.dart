// ignore_for_file: unused_element, unnecessary_cast


class V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector {
  /// Names of the folders in scope.
  /// Format: `folders/{folder_id}`
  final List<String>? includedFolders;
  /// Names of the projects in scope.
  /// Format: `projects/{project_number}`
  final List<String>? includedProjects;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector].
  /// [includedFolders] Names of the folders in scope.
  /// [includedProjects] Names of the projects in scope.
  V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector({
    this.includedFolders,
    this.includedProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includedFolders': ?includedFolders,
      'includedProjects': ?includedProjects,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector(
      includedFolders: map['includedFolders'] == null ? null : (map['includedFolders'] as List).cast<String>(),
      includedProjects: map['includedProjects'] == null ? null : (map['includedProjects'] as List).cast<String>(),
    );
  }
}

