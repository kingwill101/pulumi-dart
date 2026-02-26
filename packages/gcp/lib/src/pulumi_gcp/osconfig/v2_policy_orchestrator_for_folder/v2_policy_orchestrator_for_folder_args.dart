// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2_policy_orchestrator_for_folder_orchestrated_resource/v2_policy_orchestrator_for_folder_orchestrated_resource.dart';
import '../v2_policy_orchestrator_for_folder_orchestration_scope/v2_policy_orchestrator_for_folder_orchestration_scope.dart';

/// The set of arguments for V2PolicyOrchestratorForFolder.
class V2PolicyOrchestratorForFolderArgs {
  /// Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// <span pulumi-lang-nodejs="`orchestrationScope`" pulumi-lang-dotnet="`OrchestrationScope`" pulumi-lang-go="`orchestrationScope`" pulumi-lang-python="`orchestration_scope`" pulumi-lang-yaml="`orchestrationScope`" pulumi-lang-java="`orchestrationScope`">`orchestration_scope`</span>. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  final Input<String> action;

  /// Freeform text describing the purpose of the resource.
  final Input<String>? description;

  /// The parent resource name in the form of `folders/{folder_id}/locations/global`.
  final Input<String> folderId;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  final Input<V2PolicyOrchestratorForFolderOrchestratedResource>
      orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  final Input<V2PolicyOrchestratorForFolderOrchestrationScope>?
      orchestrationScope;

  /// The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  final Input<String> policyOrchestratorId;

  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  final Input<String>? state;

  V2PolicyOrchestratorForFolderArgs({
    required this.action,
    this.description,
    required this.folderId,
    this.labels,
    required this.orchestratedResource,
    this.orchestrationScope,
    required this.policyOrchestratorId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['folderId'] = folderId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['orchestratedResource'] = Input.mapInputValue<
        V2PolicyOrchestratorForFolderOrchestratedResource,
        Map<String, dynamic>>(orchestratedResource, (value) => value.toMap());
    final orchestrationScopeValue = orchestrationScope;
    if (orchestrationScopeValue != null) {
      map['orchestrationScope'] = Input.mapOptionalInputValue<
              V2PolicyOrchestratorForFolderOrchestrationScope,
              Map<String, dynamic>>(
          orchestrationScopeValue, (value) => value.toMap());
    }
    map['policyOrchestratorId'] = policyOrchestratorId;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorForFolderArgs.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderArgs(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      folderId: Input.asInput<String>(map['folderId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      orchestratedResource:
          Input.asInput<V2PolicyOrchestratorForFolderOrchestratedResource>(
              map['orchestratedResource']),
      orchestrationScope: Input.asOptionalInput<
              V2PolicyOrchestratorForFolderOrchestrationScope>(
          map['orchestrationScope']),
      policyOrchestratorId: Input.asInput<String>(map['policyOrchestratorId']),
      state: Input.asOptionalInput<String>(map['state']),
    );
  }
}
