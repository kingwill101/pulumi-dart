import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_policy_orchestrator_for_folder_orchestrated_resource/v2_policy_orchestrator_for_folder_orchestrated_resource.dart';
import '../v2_policy_orchestrator_for_folder_orchestration_scope/v2_policy_orchestrator_for_folder_orchestration_scope.dart';
import '../v2_policy_orchestrator_for_folder_orchestration_state/v2_policy_orchestrator_for_folder_orchestration_state.dart';
import 'v2_policy_orchestrator_for_folder_args.dart';

/// PolicyOrchestrator helps managing project+zone level policy resources (e.g.
/// OS Policy Assignments), by providing tools to create, update and delete them
/// across projects and locations, at scale.
///
///
///
/// ## Example Usage
///
/// ### Osconfigv2 Policy Orchestrator For Folder Basic
///
///
///
///
/// ## Import
///
/// PolicyOrchestratorForFolder can be imported using any of these accepted formats:
///
/// * `folders/{{folder_id}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}`
///
/// * `{{folder_id}}/{{policy_orchestrator_id}}`
///
/// When using the `pulumi import` command, PolicyOrchestratorForFolder can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder default folders/{{folder_id}}/locations/global/policyOrchestrators/{{policy_orchestrator_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder default {{folder_id}}/{{policy_orchestrator_id}}
/// ```
class V2PolicyOrchestratorForFolder extends pulumi.CustomResource {
  /// Action to be done by the orchestrator in
  /// `projects/{project_id}/zones/{zone_id}` locations defined by the
  /// `orchestration_scope`. Allowed values:
  /// - `UPSERT` - Orchestrator will create or update target resources.
  /// - `DELETE` - Orchestrator will delete target resources, if they exist
  late final pulumi.Output<String> action;

  /// Timestamp when the policy orchestrator resource was created.
  late final pulumi.Output<String> createTime;

  /// Freeform text describing the purpose of the resource.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// The parent resource name in the form of `folders/{folder_id}/locations/global`.
  late final pulumi.Output<String> folderId;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  late final pulumi.Output<String> name;

  /// Represents a resource that is being orchestrated by the policy orchestrator.
  /// Structure is documented below.
  late final pulumi.Output<V2PolicyOrchestratorForFolderOrchestratedResource>
      orchestratedResource;

  /// Defines a set of selectors which drive which resources are in scope of policy
  /// orchestration.
  /// Structure is documented below.
  late final pulumi.Output<V2PolicyOrchestratorForFolderOrchestrationScope?>
      orchestrationScope;

  /// Describes the state of the orchestration process.
  /// Structure is documented below.
  late final pulumi
      .Output<List<V2PolicyOrchestratorForFolderOrchestrationState>>
      orchestrationStates;

  /// The logical identifier of the policy orchestrator, with the following
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the parent.
  late final pulumi.Output<String> policyOrchestratorId;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  late final pulumi.Output<bool> reconciling;

  /// State of the orchestrator. Can be updated to change orchestrator behaviour.
  /// Allowed values:
  /// - `ACTIVE` - orchestrator is actively looking for actions to be taken.
  /// - `STOPPED` - orchestrator won't make any changes.
  /// Note: There might be more states added in the future. We use string here
  /// instead of an enum, to avoid the need of propagating new states to all the
  /// client code.
  late final pulumi.Output<String?> state;

  /// Timestamp when the policy orchestrator resource was last modified.
  late final pulumi.Output<String> updateTime;

  V2PolicyOrchestratorForFolder(
    String name, {
    V2PolicyOrchestratorForFolderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/v2PolicyOrchestratorForFolder:V2PolicyOrchestratorForFolder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.folderId = registerOutput<String>('folderId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.orchestratedResource =
        registerOutput<V2PolicyOrchestratorForFolderOrchestratedResource>(
            'orchestratedResource');
    this.orchestrationScope =
        registerOutput<V2PolicyOrchestratorForFolderOrchestrationScope?>(
            'orchestrationScope');
    this.orchestrationStates =
        registerOutput<List<V2PolicyOrchestratorForFolderOrchestrationState>>(
            'orchestrationStates');
    this.policyOrchestratorId = registerOutput<String>('policyOrchestratorId');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String?>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
