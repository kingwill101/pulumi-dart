import 'package:pulumi/pulumi.dart';
import '../v2_policy_orchestrator_orchestrated_resource/v2_policy_orchestrator_orchestrated_resource.dart';
import '../v2_policy_orchestrator_orchestration_scope/v2_policy_orchestrator_orchestration_scope.dart';
import '../v2_policy_orchestrator_orchestration_state/v2_policy_orchestrator_orchestration_state.dart';
import 'v2_policy_orchestrator_args.dart';

/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
///
///
/// ## Example Usage
///
/// ### Osconfigv2 Policy Orchestrator Basic
///
///
///
///
/// ## Import
///
/// PolicyOrchestrator can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}`
///
/// * `{{project}}/{{policy_orchestrator_id}}`
///
/// * `{{policy_orchestrator_id}}`
///
/// When using the `pulumi import` command, PolicyOrchestrator can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator default projects/{{project}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator default {{project}}/{{policy_orchestrator_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator default {{policy_orchestrator_id}}
/// ```
class V2PolicyOrchestrator extends CustomResource {
  /// Required. Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  late final Output<String> action;

  /// Output only. Timestamp when the policy orchestrator resource was created.
  late final Output<String> createTime;

  /// Optional. Freeform text describing the purpose of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Immutable. Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  late final Output<String> name;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  late final Output<V2PolicyOrchestratorOrchestratedResource>
      orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  late final Output<V2PolicyOrchestratorOrchestrationScope?> orchestrationScope;

  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  late final Output<List<V2PolicyOrchestratorOrchestrationState>>
      orchestrationStates;

  /// Required. The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  late final Output<String> policyOrchestratorId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  late final Output<bool> reconciling;

  /// Optional. State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  late final Output<String?> state;

  /// Output only. Timestamp when the policy orchestrator resource was last modified.
  late final Output<String> updateTime;

  V2PolicyOrchestrator(
    String name, {
    V2PolicyOrchestratorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/v2PolicyOrchestrator:V2PolicyOrchestrator',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.orchestratedResource =
        registerOutput<V2PolicyOrchestratorOrchestratedResource>(
            'orchestratedResource');
    this.orchestrationScope =
        registerOutput<V2PolicyOrchestratorOrchestrationScope?>(
            'orchestrationScope');
    this.orchestrationStates =
        registerOutput<List<V2PolicyOrchestratorOrchestrationState>>(
            'orchestrationStates');
    this.policyOrchestratorId = registerOutput<String>('policyOrchestratorId');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String?>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
