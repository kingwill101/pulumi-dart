// ignore_for_file: unused_element, unnecessary_cast

import 'v2_policy_orchestrator_orchestration_scope_selector_location_selector.dart';
import 'v2_policy_orchestrator_orchestration_scope_selector_resource_hierarchy_selector.dart';

class V2PolicyOrchestratorOrchestrationScopeSelector {
  /// Selector containing locations in scope.
  /// Structure is documented below.
  final V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector?
      locationSelector;

  /// Selector containing Cloud Resource Manager resource hierarchy nodes.
  /// Structure is documented below.
  final V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector?
      resourceHierarchySelector;

  /// Creates a new [V2PolicyOrchestratorOrchestrationScopeSelector].
  /// [locationSelector] Selector containing locations in scope.
  /// [resourceHierarchySelector] Selector containing Cloud Resource Manager resource hierarchy nodes.
  V2PolicyOrchestratorOrchestrationScopeSelector({
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

  factory V2PolicyOrchestratorOrchestrationScopeSelector.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScopeSelector(
      locationSelector: map['locationSelector'] == null
          ? null
          : V2PolicyOrchestratorOrchestrationScopeSelectorLocationSelector
              .fromMap(
                  (map['locationSelector'] as Map).cast<String, dynamic>()),
      resourceHierarchySelector: map['resourceHierarchySelector'] == null
          ? null
          : V2PolicyOrchestratorOrchestrationScopeSelectorResourceHierarchySelector
              .fromMap((map['resourceHierarchySelector'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
