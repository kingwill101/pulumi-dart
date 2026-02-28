// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector {
  /// Optional. Names of the locations in scope.
  /// Format: `us-central1-a`
  final List<String>? includedLocations;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector].
  /// [includedLocations] Optional. Names of the locations in scope.
  V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector({
    this.includedLocations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final includedLocationsValue = includedLocations;
    if (includedLocationsValue != null) {
      map['includedLocations'] = includedLocationsValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector(
      includedLocations: map['includedLocations'] == null
          ? null
          : (map['includedLocations'] as List).cast<String>(),
    );
  }
}
