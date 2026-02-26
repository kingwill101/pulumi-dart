// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_playbook_instruction/cx_playbook_instruction.dart';
import '../cx_playbook_llm_model_settings/cx_playbook_llm_model_settings.dart';

/// The set of arguments for CxPlaybook.
class CxPlaybookArgs {
  /// The human-readable name of the playbook, unique within an agent.
  final Input<String> displayName;

  /// High level description of the goal the playbook intend to accomplish. A goal should be concise since it's visible to other playbooks that may reference this playbook.
  final Input<String> goal;

  /// Instruction to accomplish target goal.
  /// Structure is documented below.
  final Input<CxPlaybookInstruction>? instruction;

  /// Llm model settings for the playbook.
  /// Structure is documented below.
  final Input<CxPlaybookLlmModelSettings>? llmModelSettings;

  /// The agent to create a Playbook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final Input<String>? parent;

  /// Type of the playbook.
  /// Possible values are: `PLAYBOOK_TYPE_UNSPECIFIED`, `TASK`, `ROUTINE`.
  final Input<String>? playbookType;

  /// The resource name of tools referenced by the current playbook in the instructions. If not provided explicitly, they are will be implied using the tool being referenced in goal and steps.
  final Input<List<String>>? referencedTools;

  CxPlaybookArgs({
    required this.displayName,
    required this.goal,
    this.instruction,
    this.llmModelSettings,
    this.parent,
    this.playbookType,
    this.referencedTools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['goal'] = goal;
    final instructionValue = instruction;
    if (instructionValue != null) {
      map['instruction'] = Input.mapOptionalInputValue<CxPlaybookInstruction,
          Map<String, dynamic>>(instructionValue, (value) => value.toMap());
    }
    final llmModelSettingsValue = llmModelSettings;
    if (llmModelSettingsValue != null) {
      map['llmModelSettings'] = Input.mapOptionalInputValue<
              CxPlaybookLlmModelSettings, Map<String, dynamic>>(
          llmModelSettingsValue, (value) => value.toMap());
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final playbookTypeValue = playbookType;
    if (playbookTypeValue != null) {
      map['playbookType'] = playbookTypeValue;
    }
    final referencedToolsValue = referencedTools;
    if (referencedToolsValue != null) {
      map['referencedTools'] = referencedToolsValue;
    }
    return map;
  }

  factory CxPlaybookArgs.fromMap(Map<String, dynamic> map) {
    return CxPlaybookArgs(
      displayName: Input.asInput<String>(map['displayName']),
      goal: Input.asInput<String>(map['goal']),
      instruction:
          Input.asOptionalInput<CxPlaybookInstruction>(map['instruction']),
      llmModelSettings: Input.asOptionalInput<CxPlaybookLlmModelSettings>(
          map['llmModelSettings']),
      parent: Input.asOptionalInput<String>(map['parent']),
      playbookType: Input.asOptionalInput<String>(map['playbookType']),
      referencedTools:
          Input.asOptionalInput<List<String>>(map['referencedTools']),
    );
  }
}
