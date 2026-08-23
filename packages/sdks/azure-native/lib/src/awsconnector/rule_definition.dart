// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_attributes.dart';

/// Definition of RuleDefinition
class RuleDefinition {
  /// Property actions
  final pulumi.Input<List<String>>? actions;
  /// Property matchAttributes
  final pulumi.Input<MatchAttributes>? matchAttributes;

  /// Creates a new [RuleDefinition].
  /// [actions] Property actions
  /// [matchAttributes] Property matchAttributes
  const RuleDefinition({
    this.actions,
    this.matchAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'matchAttributes': ?pulumi.Input.mapOptionalInputValue<MatchAttributes, Map<String, dynamic>>(matchAttributes, (value) => value.toMap()),
    };
  }

  factory RuleDefinition.fromMap(Map<String, dynamic> map) {
    return RuleDefinition(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchAttributes: (() { final guardedValue = map['matchAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MatchAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
