// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_definition_response.dart';

/// Definition of CustomAction
class CustomActionResponse {
  /// Property actionDefinition
  final pulumi.Input<ActionDefinitionResponse>? actionDefinition;
  /// Property actionName
  final pulumi.Input<String>? actionName;

  /// Creates a new [CustomActionResponse].
  /// [actionDefinition] Property actionDefinition
  /// [actionName] Property actionName
  CustomActionResponse({
    this.actionDefinition,
    this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': ?pulumi.Input.mapOptionalInputValue<ActionDefinitionResponse, Map<String, dynamic>>(actionDefinition, (value) => value.toMap()),
      'actionName': ?actionName,
    };
  }

  factory CustomActionResponse.fromMap(Map<String, dynamic> map) {
    return CustomActionResponse(
      actionDefinition: map['actionDefinition'] == null ? null : (ActionDefinitionResponse.fromMap((map['actionDefinition'] as Map).cast<String, dynamic>())).input(),
      actionName: map['actionName'] == null ? null : (map['actionName'] as String).input(),
    );
  }
}

