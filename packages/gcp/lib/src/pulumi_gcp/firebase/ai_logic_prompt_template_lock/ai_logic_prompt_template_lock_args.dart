// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AiLogicPromptTemplateLock.
class AiLogicPromptTemplateLockArgs {
  /// The location of the prompt template.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID of the prompt template.
  final pulumi.Input<String> templateId;

  AiLogicPromptTemplateLockArgs({
    required this.location,
    this.project,
    required this.templateId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['templateId'] = templateId;
    return map;
  }

  factory AiLogicPromptTemplateLockArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateLockArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      templateId: pulumi.Input.asInput<String>(map['templateId']),
    );
  }
}
