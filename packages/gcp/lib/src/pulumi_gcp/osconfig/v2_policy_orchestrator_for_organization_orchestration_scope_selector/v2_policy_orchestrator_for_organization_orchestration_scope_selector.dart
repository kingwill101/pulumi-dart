// ignore_for_file: unused_element, unnecessary_cast

import '../v2_policy_orchestrator_for_organization_orchestration_scope_selector_location_selector/v2_policy_orchestrator_for_organization_orchestration_scope_selector_location_selector.dart';
import '../v2_policy_orchestrator_for_organization_orchestration_scope_selector_resource_hierarchy_selector/v2_policy_orchestrator_for_organization_orchestration_scope_selector_resource_hierarchy_selector.dart';

class V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector {
  /// Selector containing locations in scope.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector?
      locationSelector;

  /// Selector containing Cloud Resource Manager resource hierarchy nodes.
  /// Structure is documented below.
  final V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector?
      resourceHierarchySelector;

  V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector({
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

  factory V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationScopeSelector(
      locationSelector: map['locationSelector'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorLocationSelector
              .fromMap(
                  (map['locationSelector'] as Map).cast<String, dynamic>()),
      resourceHierarchySelector: map['resourceHierarchySelector'] == null
          ? null
          : V2PolicyOrchestratorForOrganizationOrchestrationScopeSelectorResourceHierarchySelector
              .fromMap((map['resourceHierarchySelector'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
