// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AiLogicPromptTemplateLock.
class AiLogicPromptTemplateLockArgs {
  /// The location of the prompt template.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID of the prompt template.
  final Input<String> templateId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      templateId: Input.asInput<String>(map['templateId']),
    );
  }
}
