// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource.dart';
import 'v2_policy_orchestrator_orchestration_scope.dart';

/// {@template pulumi_osconfig_v2_policy_orchestrator_v2_policy_orchestrator_args_doc}
/// The set of arguments for V2PolicyOrchestrator.
/// {@endtemplate}
/// {@macro pulumi_osconfig_v2_policy_orchestrator_v2_policy_orchestrator_args_doc}
class V2PolicyOrchestratorArgs {
  /// Required. Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final pulumi.Input<String> action;

  /// Optional. Freeform text describing the purpose of the resource.
  final pulumi.Input<String>? description;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestratedResource>
      orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final pulumi.Input<V2PolicyOrchestratorOrchestrationScope>?
      orchestrationScope;

  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final pulumi.Input<String> policyOrchestratorId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final pulumi.Input<String>? state;

  /// Creates a new [V2PolicyOrchestratorArgs].
  /// [action] Required. Action to be done by the orchestrator in
  /// [description] Optional. Freeform text describing the purpose of the resource.
  /// [labels] Optional. Labels as key value pairs
  /// [orchestratedResource] Represents a resource that is being orchestrated by the policy orchestrator.
  /// [orchestrationScope] Defines a set of selectors which drive which resources are in scope of policy
  /// [policyOrchestratorId] Required. The logical identifier of the policy orchestrator, with the following
  /// [project] The ID of the project in which the resource belongs.
  /// [state] Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  V2PolicyOrchestratorArgs({
    required String action,
    String? description,
    Map<String, String>? labels,
    required V2PolicyOrchestratorOrchestratedResource orchestratedResource,
    V2PolicyOrchestratorOrchestrationScope? orchestrationScope,
    required String policyOrchestratorId,
    String? project,
    String? state,
  })  : action = pulumi.Input.asInput<String>(action),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        orchestratedResource =
            pulumi.Input.asInput<V2PolicyOrchestratorOrchestratedResource>(
                orchestratedResource),
        orchestrationScope = pulumi.Input.asOptionalInput<
            V2PolicyOrchestratorOrchestrationScope>(orchestrationScope),
        policyOrchestratorId =
            pulumi.Input.asInput<String>(policyOrchestratorId),
        project = pulumi.Input.asOptionalInput<String>(project),
        state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['orchestratedResource'] = pulumi.Input.mapInputValue<
        V2PolicyOrchestratorOrchestratedResource,
        Map<String, dynamic>>(orchestratedResource, (value) => value.toMap());
    final orchestrationScopeValue = orchestrationScope;
    if (orchestrationScopeValue != null) {
      map['orchestrationScope'] = pulumi.Input.mapOptionalInputValue<
              V2PolicyOrchestratorOrchestrationScope, Map<String, dynamic>>(
          orchestrationScopeValue, (value) => value.toMap());
    }
    map['policyOrchestratorId'] = policyOrchestratorId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorArgs.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorArgs(
      action: map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      orchestratedResource: V2PolicyOrchestratorOrchestratedResource.fromMap(
          (map['orchestratedResource'] as Map).cast<String, dynamic>()),
      orchestrationScope: map['orchestrationScope'] == null
          ? null
          : V2PolicyOrchestratorOrchestrationScope.fromMap(
              (map['orchestrationScope'] as Map).cast<String, dynamic>()),
      policyOrchestratorId: map['policyOrchestratorId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
