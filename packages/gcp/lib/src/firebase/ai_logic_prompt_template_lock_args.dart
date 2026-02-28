// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_ai_logic_prompt_template_lock_ai_logic_prompt_template_lock_args_doc}
/// The set of arguments for AiLogicPromptTemplateLock.
/// {@endtemplate}
/// {@macro pulumi_firebase_ai_logic_prompt_template_lock_ai_logic_prompt_template_lock_args_doc}
class AiLogicPromptTemplateLockArgs {
  /// The location of the prompt template.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID of the prompt template.
  final pulumi.Input<String> templateId;

  /// Creates a new [AiLogicPromptTemplateLockArgs].
  /// [location] The location of the prompt template.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] The ID of the prompt template.
  AiLogicPromptTemplateLockArgs({
    required String location,
    String? project,
    required String templateId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      templateId = pulumi.Input.asInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'templateId': templateId,
    };
  }

  factory AiLogicPromptTemplateLockArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateLockArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      templateId: map['templateId'] as String,
    );
  }
}

