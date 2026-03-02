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
  RuleDefinition({
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
      actions: map['actions'] == null ? null : ((map['actions']! as List).cast<String>()).input(),
      matchAttributes: map['matchAttributes'] == null ? null : (MatchAttributes.fromMap((map['matchAttributes']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

