// ignore_for_file: unused_element, unnecessary_cast

import 'action_definition_response.dart';

/// Definition of CustomAction
class CustomActionResponse {
  /// Property actionDefinition
  final ActionDefinitionResponse? actionDefinition;
  /// Property actionName
  final String? actionName;

  /// Creates a new [CustomActionResponse].
  /// [actionDefinition] Property actionDefinition
  /// [actionName] Property actionName
  CustomActionResponse({
    this.actionDefinition,
    this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': ?actionDefinition == null ? null : actionDefinition!.toMap(),
      'actionName': ?actionName,
    };
  }

  factory CustomActionResponse.fromMap(Map<String, dynamic> map) {
    return CustomActionResponse(
      actionDefinition: map['actionDefinition'] == null ? null : ActionDefinitionResponse.fromMap((map['actionDefinition'] as Map).cast<String, dynamic>()),
      actionName: map['actionName'] == null ? null : map['actionName'] as String,
    );
  }
}

