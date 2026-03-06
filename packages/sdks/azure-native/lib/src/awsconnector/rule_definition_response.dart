// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_attributes_response.dart';

/// Definition of RuleDefinition
class RuleDefinitionResponse {
  /// Property actions
  final pulumi.Input<List<String>>? actions;
  /// Property matchAttributes
  final pulumi.Input<MatchAttributesResponse>? matchAttributes;

  /// Creates a new [RuleDefinitionResponse].
  /// [actions] Property actions
  /// [matchAttributes] Property matchAttributes
  const RuleDefinitionResponse({
    this.actions,
    this.matchAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'matchAttributes': ?pulumi.Input.mapOptionalInputValue<MatchAttributesResponse, Map<String, dynamic>>(matchAttributes, (value) => value.toMap()),
    };
  }

  factory RuleDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return RuleDefinitionResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchAttributes: (() { final guardedValue = map['matchAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MatchAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

