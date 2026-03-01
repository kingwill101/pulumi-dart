// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector {
  /// Names of the locations in scope.
  /// Format: `us-central1-a`
  final List<String>? includedLocations;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector].
  /// [includedLocations] Names of the locations in scope.
  V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector({
    this.includedLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'includedLocations': ?includedLocations};
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector(
      includedLocations: map['includedLocations'] == null
          ? null
          : (map['includedLocations'] as List).cast<String>(),
    );
  }
}
