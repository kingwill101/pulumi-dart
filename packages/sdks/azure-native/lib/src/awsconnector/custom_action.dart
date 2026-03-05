// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_definition.dart';

/// Definition of CustomAction
class CustomAction {
  /// Property actionDefinition
  final pulumi.Input<ActionDefinition>? actionDefinition;
  /// Property actionName
  final pulumi.Input<String>? actionName;

  /// Creates a new [CustomAction].
  /// [actionDefinition] Property actionDefinition
  /// [actionName] Property actionName
  CustomAction({
    this.actionDefinition,
    this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': ?pulumi.Input.mapOptionalInputValue<ActionDefinition, Map<String, dynamic>>(actionDefinition, (value) => value.toMap()),
      'actionName': ?actionName,
    };
  }

  factory CustomAction.fromMap(Map<String, dynamic> map) {
    return CustomAction(
      actionDefinition: (() { final guardedValue = map['actionDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

