// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AiLogicPromptTemplate.
class AiLogicPromptTemplateArgs {
  /// The display name of the PromptTemplate.
  final Input<String>? displayName;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  final Input<String> templateId;

  /// The DotPrompt raw template string.
  final Input<String> templateString;

  AiLogicPromptTemplateArgs({
    this.displayName,
    required this.location,
    this.project,
    required this.templateId,
    required this.templateString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['templateId'] = templateId;
    map['templateString'] = templateString;
    return map;
  }

  factory AiLogicPromptTemplateArgs.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      templateId: Input.asInput<String>(map['templateId']),
      templateString: Input.asInput<String>(map['templateString']),
    );
  }
}
