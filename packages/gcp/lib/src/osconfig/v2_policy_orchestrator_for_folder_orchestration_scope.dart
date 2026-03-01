// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestration_scope_selector.dart';

class V2PolicyOrchestratorForFolderOrchestrationScope {
  /// Selectors of the orchestration scope. There is a logical AND between each
  /// selector defined.
  /// When there is no explicit `ResourceHierarchySelector` selector specified,
  /// the scope is by default bounded to the parent of the policy orchestrator
  /// resource.
  /// Structure is documented below.
  final List<V2PolicyOrchestratorForFolderOrchestrationScopeSelector>? selectors;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationScope].
  /// [selectors] Selectors of the orchestration scope. There is a logical AND between each
  V2PolicyOrchestratorForFolderOrchestrationScope({
    this.selectors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectors': ?selectors == null ? null : pulumi.Input.encodeList<V2PolicyOrchestratorForFolderOrchestrationScopeSelector, Map<String, dynamic>>(selectors!, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationScope.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationScope(
      selectors: map['selectors'] == null ? null : pulumi.Input.decodeList<V2PolicyOrchestratorForFolderOrchestrationScopeSelector>(map['selectors'], (value) => V2PolicyOrchestratorForFolderOrchestrationScopeSelector.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

