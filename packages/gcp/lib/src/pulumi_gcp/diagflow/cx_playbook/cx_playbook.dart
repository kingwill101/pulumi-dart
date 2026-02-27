import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_playbook_instruction/cx_playbook_instruction.dart';
import '../cx_playbook_llm_model_settings/cx_playbook_llm_model_settings.dart';
import 'cx_playbook_args.dart';

/// Playbook is the basic building block to instruct the LLM how to execute a certain task.
///
///
/// To get more information about Playbook, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.playbooks)
/// * How-to Guides
/// * [Official CX Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Playbook Basic
///
///
///
/// ### Dialogflowcx Playbook Fulfillment
///
///
///
///
/// ## Import
///
/// Playbook can be imported using any of these accepted formats:
///
/// * `{{parent}}/playbooks/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Playbook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPlaybook:CxPlaybook default {{parent}}/playbooks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPlaybook:CxPlaybook default {{parent}}/{{name}}
/// ```
class CxPlaybook extends pulumi.CustomResource {
  /// The timestamp of initial playbook creation.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> createTime;

  /// The human-readable name of the playbook, unique within an agent.
  late final pulumi.Output<String> displayName;

  /// High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  late final pulumi.Output<String> goal;

  /// Instruction to accomplish target goal.
  /// Structure is documented below.
  late final pulumi.Output<CxPlaybookInstruction?> instruction;

  /// Llm model settings for the playbook.
  /// Structure is documented below.
  late final pulumi.Output<CxPlaybookLlmModelSettings?> llmModelSettings;

  /// The unique identifier of the Playbook.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/playbooks/<Playbook ID>.
  late final pulumi.Output<String> name;

  /// The agent to create a Playbook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// Type of the playbook.
  /// Possible values are: `PLAYBOOK_TYPE_UNSPECIFIED`, `TASK`, `ROUTINE`.
  late final pulumi.Output<String?> playbookType;

  /// The resource name of flows referenced by the current playbook in the instructions.
  late final pulumi.Output<List<String>> referencedFlows;

  /// The resource name of other playbooks referenced by the current playbook in the instructions.
  late final pulumi.Output<List<String>> referencedPlaybooks;

  /// The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  late final pulumi.Output<List<String>?> referencedTools;

  /// Estimated number of tokes current playbook takes when sent to the LLM.
  late final pulumi.Output<String> tokenCount;

  /// Last time the playbook version was updated.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or "2014-10-02T15:01:23+05:30".
  late final pulumi.Output<String> updateTime;

  CxPlaybook(
    String name, {
    CxPlaybookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxPlaybook:CxPlaybook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.goal = registerOutput<String>('goal');
    this.instruction = registerOutput<CxPlaybookInstruction?>('instruction');
    this.llmModelSettings =
        registerOutput<CxPlaybookLlmModelSettings?>('llmModelSettings');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.playbookType = registerOutput<String?>('playbookType');
    this.referencedFlows = registerOutput<List<String>>('referencedFlows');
    this.referencedPlaybooks =
        registerOutput<List<String>>('referencedPlaybooks');
    this.referencedTools = registerOutput<List<String>?>('referencedTools');
    this.tokenCount = registerOutput<String>('tokenCount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
