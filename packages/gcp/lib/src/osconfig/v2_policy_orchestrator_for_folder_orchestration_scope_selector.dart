// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_for_folder_orchestration_scope_selector_location_selector.dart';
import 'v2_policy_orchestrator_for_folder_orchestration_scope_selector_resource_hierarchy_selector.dart';

class V2PolicyOrchestratorForFolderOrchestrationScopeSelector {
  /// Selector containing locations in scope.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector?
      locationSelector;

  /// Selector containing Cloud Resource Manager resource hierarchy nodes.
  /// Structure is documented below.
  final V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector?
      resourceHierarchySelector;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScopeSelector].
  /// [locationSelector] Selector containing locations in scope.
  /// [resourceHierarchySelector] Selector containing Cloud Resource Manager resource hierarchy nodes.
  V2PolicyOrchestratorForFolderOrchestrationScopeSelector({
    this.locationSelector,
    this.resourceHierarchySelector,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationSelectorValue = locationSelector;
    if (locationSelectorValue != null) {
      map['locationSelector'] = locationSelectorValue.toMap();
    }
    final resourceHierarchySelectorValue = resourceHierarchySelector;
    if (resourceHierarchySelectorValue != null) {
      map['resourceHierarchySelector'] = resourceHierarchySelectorValue.toMap();
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScopeSelector.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationScopeSelector(
      locationSelector: map['locationSelector'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestrationScopeSelectorLocationSelector
              .fromMap(
                  (map['locationSelector'] as Map).cast<String, dynamic>()),
      resourceHierarchySelector: map['resourceHierarchySelector'] == null
          ? null
          : V2PolicyOrchestratorForFolderOrchestrationScopeSelectorResourceHierarchySelector
              .fromMap((map['resourceHierarchySelector'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
