// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_policy_orchestrator_orchestration_scope_selector/v2_policy_orchestrator_orchestration_scope_selector.dart';

class V2PolicyOrchestratorOrchestrationScope {
  /// Optional. Selectors of the orchestration scope. There is a logical AND between each
  /// selector defined.
  /// When there is no explicit `ResourceHierarchySelector` selector specified,
  /// the scope is by default bounded to the parent of the policy orchestrator
  /// resource.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorOrchestrationScopeSelector>? selectors;

  V2PolicyOrchestratorOrchestrationScope({
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final selectorsValue = selectors;
    if (selectorsValue != null) {
      map['selectors'] = Input.encodeList<
          V2PolicyOrchestratorOrchestrationScopeSelector,
          Map<String, dynamic>>(selectorsValue, (value) => value.toMap());
    }
    return map;
  }

  factory V2PolicyOrchestratorOrchestrationScope.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationScope(
      selectors: map['selectors'] == null
          ? null
          : Input.decodeList<V2PolicyOrchestratorOrchestrationScopeSelector>(
              map['selectors'],
              (value) => V2PolicyOrchestratorOrchestrationScopeSelector.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
